<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts2 - Example</title>
<style type="text/css">
.error-msg {
  color: red;
}
 
table.list {
  border: 1px solid #cbcbcb;
  border-collapse: collapse;
}
 
table.list td, th {
  border-left: 1px solid #cbcbcb;
  padding-left: 10px;
  padding-right: 10px;
}
 
table.list thead {
  background-color: #cbcbcb;
}
</style>
</head>
<body>
  <s:form id="studentForm" class="studentForm" theme="simple">
    <div class="error-msg">
      <s:actionerror />
    </div>
    <table class="list">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Sex</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Address</th>
          <th>Delete</th>
        </tr>
      </thead>
      <!-- show list student -->
      <tbody>
        <s:iterator value="listStudents" id="student" status="st">
          <tr>
            <td><s:property value="#student.id" /></td>
            <td><s:property value="#student.name" /></td>
            <td><s:property value="#student.sex" /></td>
            <td><s:property value="#student.email" /></td>
            <td><s:property value="#student.phone" /></td>
            <td><s:property value="#student.address" /></td>
            <td><s:checkbox name="listStudents[%{#st.index}].delFlag"
               value="%{listStudents[#st.index].delFlag}" /></td>
            <!-- save listStudents -->
            <s:hidden name="listStudents[%{#st.index}].id"
                      value="%{#student.id}" />
            <s:hidden name="listStudents[%{#st.index}].name"
                      value="%{#student.name}" />
            <s:hidden name="listStudents[%{#st.index}].sex"
                      value="%{#student.sex}" />
            <s:hidden name="listStudents[%{#st.index}].email"
                      value="%{#student.email}" />
            <s:hidden name="listStudents[%{#st.index}].phone"
                      value="%{#student.phone}" />
            <s:hidden name="listStudents[%{#st.index}].address"
                      value="%{#student.address}" />
          </tr>
        </s:iterator>
      </tbody>
    </table>
    <div class="control-btn">
      <s:submit name="delete" value="Delete"
                onclick="this.form.action='student_delete'" />
    </div>
  </s:form>
</body>
</html>