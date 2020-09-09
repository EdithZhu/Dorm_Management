<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Campus Dormitory Management System</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.TB_TeacherID.value)){  
   alert("Please choose admin you want to add!"); 
   return false;
   }
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>
<body>
<center>
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="60" bgcolor="#E6F5FF" style="color:#06F; font-size:19px; font-weight:bolder; padding-left:50px;">Campus Dormitory Management System</td>
    </tr>
    <tr>
      <td height="30" background="Images/MenuBg.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="500" align="center" valign="top"><table width="900" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="191" height="500" align="center" valign="top" background="Images/leftbg.jpg">
          <%@ include file="Left.jsp"%>
          </td>
          <td width="709" align="center" valign="top" bgcolor="#F6F9FE"><table width="709" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">buildingAdmin Setup</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
              <form name="form1" method="post" action="TBAddSave.action">
                <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="42%" height="30" style="padding-left:20px;"> Navigate: <a href="BuildingManager.action">Go Back</a></td>
                    <td width="58%">add Admin: 
                      <select name="TB_TeacherID" id="TB_TeacherID">
                        <option value="">Please choose</option>
                        <s:iterator value="teacherlist">
                        <option value="${Teacher_ID}">${Teacher_Name}</option>
                        </s:iterator>
                      </select>
                      <input type="submit" name="button" id="button" value="Click to add">
                      <label for="TB_BuildingID"></label>
                      <input name="TB_BuildingID" type="text" class="noshow" id="TB_BuildingID" value="${Building_ID}"></td>
                  </tr>
                </table>
              </form>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr align="center"  class="t1">
                    <td height="25" bgcolor="#D5E4F4"><strong>Name</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Gender</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Phone Number</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Username</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Operate</strong></td>
                  </tr>
                  <s:iterator id="aa" value="list">
                    <tr align="center">
                      <td height="25" align="center">${Teacher_Name}</td>
                      <td>${Teacher_Sex}</td>
                      <td>${Teacher_Tel}</td>
                      <td align="center">${Teacher_Username}</td>
                      <td align="center"><a href="TBDel.action?TB_ID=${TB_ID}&Building_ID=${TB_BuildingID}" onClick="return confirm('Sure to delete the Admin from this building?')">Delete</a></td>
                    </tr>
                  </s:iterator>
                </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="35" background="Images/bootBg.jpg">&nbsp;</td>
    </tr>
  </table>

</center>
</body>
</html>