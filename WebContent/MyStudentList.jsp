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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">student Management</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE"><form name="form1" method="post" action="MyStudentList.action">
                <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="28%" height="30" style="padding-left:20px;"> Navigate: <a href="MyStudent.action">Go Back</a></td>
                    <td width="72%">Search: 
                      <select name="Domitory_ID" id="Domitory_ID">
                        <option value="">All rooms</option>
                        <s:iterator  value="domitorylist">
                        <option value="${Domitory_ID}">${Domitory_Name}</option>
                        </s:iterator>
                      </select>
                      <select name="SearchRow" id="SearchRow">
                        <option value="Student_Name">Name</option>
                        <option value="Student_Username">Username</option>
                        <option value="Student_Class">class</option>
                      </select>
                      <input name="SearchKey" type="text" class="text1" id="SearchKey">
                      <input type="submit" name="button" id="button" value="Click to search">
                      <label for="Building_ID"></label>
                      <input name="Building_ID" type="text" class="noshow" id="Building_ID" value="${Building_ID}"></td>
                  </tr>
                </table>
              </form>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr align="center"  class="t1">
                    <td height="25" bgcolor="#D5E4F4"><strong>Room</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Name</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Gender</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Class</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Room Type</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Bed Amount</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Phone Number</strong></td>
                    <td bgcolor="#D5E4F4"><strong>Operate</strong></td>
                  </tr>
                  <s:iterator id="aa" value="list">
                    <tr align="center">
                      <td height="25" align="center">${Domitory_Name}</td>
                      <td>${Student_Name}</td>
                      <td>${Student_Sex}</td>
                      <td>${Student_Class}</td>
                      <td>${Domitory_Type}</td>
                      <td>${Domitory_Number}</td>
                      <td>${Domitory_Tel}</td>
                      <td align="center"><a href="LogAdd.action?Student_ID=${Student_ID}">Absence Registra</a></td>
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
