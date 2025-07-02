<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.html" %>
<%@include file="menu.jsp" %>

<div class="content">
  <h2 class="menu-title">新規科目登録</h2>
  <form action="${pageContext.request.contextPath}/action/subjectinsert" method="post">
    <table>
      <tr>
        <td><label for="cd">科目コード：</label></td>
        <td><input type="text" name="cd" id="cd" required maxlength="3" /></td>
      </tr>
      <tr>
        <td><label for="name">科目名：</label></td>
        <td><input type="text" name="name" id="name" required maxlength="20" /></td>
      </tr>
    </table>
    <br>
    <input type="submit" value="登録">
  </form>
</div>

<%@include file="../footer.html" %>
