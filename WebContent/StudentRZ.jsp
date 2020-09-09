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
   
   if(isNull(form1.Building_ID.value)){
   alert("Please choose building!");
   return false;
   }
   if(isNull(form1.Domitory_ID.value)){
   alert("Please choose room!");
   return false;
   }
   if(isNull(form1.Student_Username.value)){  
   alert("Please enter username!"); 
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">Student MoveIn Registra</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE"><form name="form1" method="post" action="StudentRZSave.action" onSubmit="return mycheck()" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>Building: </td>
                    <td><select name="Building_ID" id="Building_ID" onChange="javascript:window.location='StudentRZ.action?BuildingID='+this.value;">
                      <option value="">Please choose</option>
                      <s:iterator value="buildinglist">
                      <option value="${Building_ID}" <s:if test="BuildingID==Building_ID">selected</s:if>>${Building_Name}</option>
                      </s:iterator>
                      </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>Room: </td>
                    <td><select name="Domitory_ID" id="Domitory_ID">
                      <option value="">Please choose</option>
                      <s:iterator value="domitorylist">
                        <option value="${Domitory_ID}">${Domitory_Name}</option>
                      </s:iterator>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>Username: </td>
                    <td><label for="Student_ID"></label>
                      <input type="text" name="Student_Username" id="Student_Username"></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="Submit"></td>
                  </tr>
                </table>
              </form></td>
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