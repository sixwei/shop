package com.neuedu.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class PushController {

	@RequestMapping("/push.do")
	public String filePush(@RequestParam("file")MultipartFile file,HttpServletRequest request) throws IOException {
		
		
		
		
		String path = request.getServletContext().getRealPath("/")+"/pushfile/"+
		UUID.randomUUID().toString().replace("-", "")+file.getOriginalFilename();
		System.out.println(path);
		
		
		File f = new File(path);
		
		if(!f.getParentFile().exists()) {
			f.getParentFile().mkdirs();
		}
		
		//利用的是springmvc中的方法
		try {
			file.transferTo(f);
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//利用IO流进行文件的上传
		
		InputStream is = file.getInputStream();
		
		OutputStream os =new FileOutputStream(path);
		 
		int len=0;
		byte[] buf = new byte[1024];
		
		while((len = is.read(buf))!=-1) {
			os.write(buf, 0, len);
		}
		
		is.close();
		os.close();
		return "filepush.jsp";
	}
}
