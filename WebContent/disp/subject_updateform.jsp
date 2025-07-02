<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.html" %>
<%@include file="menu.jsp" %>

<div class="content">
  <h2 class="menu-title">科目情報変更</h2>
  <form action="${pageContext.request.contextPath}/action/subjectupdate" method="post">
    <input type="hidden" name="cd" value="${subject.cd}">
    <table>
      <tr>
        <td>科目コード：</td>
        <td>${subject.cd}</td>
      </tr>
      <tr>
        <td><label for="name">科目名：</label></td>
        <td><input type="text" name="name" id="name" value="${subject.name}" required maxlength="20" /></td>
      </tr>
    </table>
    <br>
    <input type="submit" value="変更">
  </form>
</div>

<%@include file="../footer.html" %>
