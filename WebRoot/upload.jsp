<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login_suc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%-- File upload;String uploadContentType;
  String uploadFileName; --%>
  <s:form name="uploadForm" action="fileUpload" 
  enctype="multipart/form-data">
    <s:file name="upload"/>
    <s:submit/>
  </s:form>
  fileUploadLimitSize(5000)
  <s:form name="uploadForm" action="fileUploadLimitSize" 
  enctype="multipart/form-data" method="post">
    <s:file name="upload"/>
    <s:submit/>
  </s:form>
  
  上传多个文件
  <s:form name="uploadsForm" action="filesUpload" 
  enctype="multipart/form-data">
    <s:file name="uploads"/>
    <s:file name="uploads"/>
    <s:file name="uploads"/>
    <s:submit/>
  </s:form>
  限制文件大小2M，文件类型为image/jpg<br/>

   <s:form name="fileUploadByMyself" action="fileUploadByMyself" 
  enctype="multipart/form-data" method="post">
    <s:file name="upload"/>
    <s:submit/>
  </s:form>
  </body>
</html>
