<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.util.UUID" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<body>
<script>
$(function(){
    //������������
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
        htParams : {
            // ���� ��� ���� (true:���/ false:������� ����)
            bUseToolbar : true,             
            // �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
            bUseVerticalResizer : true,     
            // ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
            bUseModeChanger : true, 
        }
    });
     
    //���۹�ư Ŭ���̺�Ʈ
    $("#savebutton").click(function(){
        //id�� smarteditor�� textarea�� �����Ϳ��� ����
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // �̺κп� ������ validation ����
         
        //�� submit
        $("#frm").submit();
    })
})
</script>
<h1>�� �ȳ���</h1>
<form action="/send.jsp" method="post" id="frm">
    <textarea name="smarteditor" id="smarteditor" rows="10" cols="100" style="width:766px; height:412px;"></textarea>
    <input type="button" id="savebutton" value="��������" />
</form>


 <% 
String return1="";
String return2="";
String return3="";
String name = "";
if (ServletFileUpload.isMultipartContent(request)){
    ServletFileUpload uploadHandler = new ServletFileUpload(new DiskFileItemFactory());
    //UTF-8 ���ڵ� ����
    uploadHandler.setHeaderEncoding("UTF-8");
    List<FileItem> items = uploadHandler.parseRequest(request);
    //�� �ʵ��±׵��� FOR���� �̿��Ͽ� �񱳸� �մϴ�.
    for (FileItem item : items) {
        if(item.getFieldName().equals("callback")) {
            return1 = item.getString("UTF-8");
        } else if(item.getFieldName().equals("callback_func")) {
            return2 = "?callback_func="+item.getString("UTF-8");
        } else if(item.getFieldName().equals("Filedata")) {
            //FILE �±װ� 1���̻��� ���
            if(item.getSize() > 0) {
                String ext = item.getName().substring(item.getName().lastIndexOf(".")+1);
                //���� �⺻���
                String defaultPath = request.getServletContext().getRealPath("/");
                //���� �⺻��� _ �󼼰��
                String path = defaultPath + "upload" + File.separator;
                 
                File file = new File(path);
                 
                //���丮 �������� ������� ���丮 ����
                if(!file.exists()) {
                    file.mkdirs();
                }
                //������ ���ε� �� ���ϸ�(�ѱ۹����� ���� ���������� �ø��� �ʴ°��� ����)
                String realname = UUID.randomUUID().toString() + "." + ext;
                ///////////////// ������ ���Ͼ��� ///////////////// 
                InputStream is = item.getInputStream();
                OutputStream os=new FileOutputStream(path + realname);
                int numRead;
                byte b[] = new byte[(int)item.getSize()];
                while((numRead = is.read(b,0,b.length)) != -1){
                    os.write(b,0,numRead);
                }
                if(is != null)  is.close();
                os.flush();
                os.close();
                ///////////////// ������ ���Ͼ��� /////////////////
                return3 += "&bNewLine=true&sFileName="+name+"&sFileURL=/upload/"+realname;
            }else {
                return3 += "&errstr=error";
            }
        }
    }
}
response.sendRedirect(return1+return2+return3);

%>



</body>
</html>