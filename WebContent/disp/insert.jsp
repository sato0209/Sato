<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.html" %>
<%@ include file="menu.jsp" %>

<div class="content">
    <h2>科目新規登録</h2>

    <form action="InsertSubjectServlet" method="post">
        <label>科目コード：</label>
        <input type="text" name="subjectCode" required><br><br>

        <label>科目名：</label>
        <input type="text" name="subjectName" required><br><br>

        <input type="submit" value="登録">
    </form>
</div>

<%@ include file="../footer.html" %>
