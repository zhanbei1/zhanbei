package controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileUpload extends ActionSupport {
	// upload
	File upload;
	String uploadContentType;
	String uploadFileName;

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	String uploadPath;
	
	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	@Override public String execute()throws Exception{
		//源文件upload->目的文件 upload
		String path=ServletActionContext
				.getServletContext()
				.getRealPath("/upload");
		File destFile=new File(path,uploadFileName);
		Files.copy(upload.toPath(), destFile.toPath(),
				StandardCopyOption.REPLACE_EXISTING);
		uploadPath="/upload/"+uploadFileName;
		return SUCCESS;
	}

}
