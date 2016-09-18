package com.zcurd.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Duang;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.IAtom;
import com.jfinal.plugin.activerecord.ICallback;
import com.jfinal.render.FreeMarkerRender;
import com.jfinal.render.RenderException;
import com.zcurd.common.DBTool;
import com.zcurd.common.DbMetaTool;
import com.zcurd.common.ZcurdTool;
import com.zcurd.model.ZcurdField;
import com.zcurd.model.ZcurdHead;
import com.zcurd.service.ZcurdService;
import com.zcurd.vo.ZcurdMeta;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * 表单管理
 * @author 钟世云 2016.2.5
 */
public class ZcurdHeadController extends BaseController {
	
	//表单列表
	public void list() {
		render("head/list.html");
	}
	
	//列表页面数据
	public void listData() {
		Map<String, String[]> paraMap = getParaMap();
		renderDatagrid(ZcurdHead.me.paginate(paraMap, getParaToInt("page", 1), getParaToInt("rows", 10)));
	}

	//修改页面
	public void updatePage() {
		setAttr("model", ZcurdHead.me.findById(getParaToInt("id")));
		render("head/update.html");
	}
	
	//修改
	public void update() {
		//TODO 线上体验使用，可删除
		if(getModel(ZcurdHead.class, "model").getLong("id") < 10000) {
			renderFailed("为能够正常体验，框架基础数据不允许修改！");
			return;
		}
		
		final String fields = getPara("rowsStr");
		final JSONArray jsonObjs = JSONObject.parseArray(fields);
		Db.tx(new IAtom(){
			@SuppressWarnings("unchecked")
			public boolean run() throws SQLException {
				ZcurdHead zcurdHead = getModel(ZcurdHead.class, "model");
				zcurdHead.update();
				final Long headId = zcurdHead.getLong("id");
				Db.update("delete from zcurd_field where head_id=" + headId);
				if(jsonObjs.size() > 0) {
					for (Object object : jsonObjs) {
						ZcurdField field = new ZcurdField();
						field.set("head_id", headId);
						field.setAttrs((Map<String, Object>)object);
						field.save();
					}
				}
				DbMetaTool.updateMetaData(headId.intValue());
				return true; 
			}
		});
		renderSuccess("保存成功！");
	}
	
	//生成表单页面
	public void genFormPage() {
		render("head/genForm.html");
	}
	
	//生成表单页面
	public void genFormData() {
		String dbSource = getPara("db_source");
		String dbName = (String) DBTool.use(dbSource).execute(new ICallback() {
			@Override
			public Object call(Connection conn) throws SQLException {
				return conn.getCatalog();
			}
		});
		String sql = "select TABLE_SCHEMA, TABLE_TYPE, a.TABLE_NAME, TABLE_COMMENT, CREATE_TIME from information_schema.TABLES a where a.TABLE_SCHEMA='" + dbName + "' order by CREATE_TIME desc";
		renderDatagrid(DBTool.use(dbSource).find(sql));
	}
	
	//生成表单
	public void genForm() {
		String tableName = getPara("tableName");
		String dbSource = getPara("db_source");
		ZcurdService zcurdService = Duang.duang(ZcurdService.class);
		zcurdService.genForm(tableName, dbSource);
		renderSuccess();
	}
	
	//删除
	public void delete() {
		//TODO 线上体验使用，可删除
		if(1 == 1) {
			renderFailed("为保证有数据可体验，不允许删除。");
		}
		Integer[] ids = getParaValuesToInt("id[]");
		for (Integer id : ids) {
			ZcurdHead.me.deleteById(id);
			Db.update("delete from zcurd_field where head_id=?", id);
			DbMetaTool.updateMetaData(id);
		}
		renderSuccess();
	}
	
	//字段列表
	public void listField() {
		renderDatagrid(ZcurdField.me.paginate(getParaToInt("page", 1), getParaToInt("rows", 500), getParaToInt("head_id")));
	}
	
	//代码生成
	public void genCode() throws IOException, TemplateException {
		int headId =  getParaToInt("headId");
		ZcurdService zcurdService = Duang.duang(ZcurdService.class);
		ZcurdMeta metaMap = zcurdService.getMetaData(headId);
		ZcurdHead head = metaMap.getHead();
		String tableName = head.getTableName();
		String className = tableName.substring(0, 1).toUpperCase() + tableName.substring(1);
		int index = className.indexOf("_");
		while(index > 0) {
			String s = className.substring(index + 1, index + 2);
			className = className.replace("_" + s, s.toUpperCase());
			index = className.indexOf("_");
		}
		
		Map<String, Object> mateDate = ZcurdTool.convert2Map(metaMap);
		mateDate.put("className", className);
		
        //gen(mateDate, "/zcurd/zcurd/genCode/listPage.html", "F:/genCode/list.html");
        gen(mateDate, "/zcurd/zcurd/genCode/controller.html", "F:/genCode/" + className + "Controller.java");
        //gen(mateDate, "/zcurd/zcurd/genCode/addPage.html", "F:/genCode/add.html");
        gen(mateDate, "/zcurd/zcurd/genCode/updatePage.html", "F:/genCode/update.html");
        
        renderSuccess("代码生成成功！");
	}
	
	private void gen(Map<String, Object> mateDate, String tempFile, String genFile) throws FileNotFoundException {
		Configuration config = FreeMarkerRender.getConfiguration();
		PrintWriter pw = new PrintWriter(new File(genFile));
        try {
			Template template = config.getTemplate(tempFile);
			template.process(mateDate, pw);
		} catch (Exception e) {
			throw new RenderException(e);
		}
		finally {
			if (pw != null) {
				pw.close();
			}
		}
	}
	
}
