package com.zcurd.controller;

import java.util.Map;

import com.jfinal.kit.PathKit;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.upload.UploadFile;
import com.zcurd.common.DBTool;
import com.zcurd.common.StringUtil;
import com.zcurd.model.CommonFile;

/**
 * 用来存放一些公共地址（无权限控制）的controller
 * @author 钟世云 2016.3.22
 */
public class CommonController extends BaseController {
	
	//获得字典数据
	public void getDictData() {
		Object[] queryParams = getQueryParams();
		String[] properties = (String[]) queryParams[0];
		String[] symbols = (String[]) queryParams[1];
		Object[] values = (Object[]) queryParams[2];
		
		String orderBy = getOrderBy();
		if(StringUtil.isEmpty(orderBy)) {
			orderBy = "id desc";
		}
		
		renderJson(DBTool.findByMultProperties("sys_dict", properties, symbols, values));
	}	
	
	//图标页面
	public void iconsPage() {
		render("common/icons.html");
	}
	
	//文件上传
	public void uploadFile() {
		UploadFile file = getFile("upload", "images", 1024 * 1024 * 5);	//上传文件不能大于5M
		if(file != null) {
			//保存日志
			new CommonFile().set("type", 1)	//1表示图片
				.set("path", file.getFileName())
				.set("sys_user_id", getSessionUser().get("id"))
				.save();
			renderJson("/upload/images/" + file.getFileName());
		}else {
			renderFailed();
		}
	}

}
