<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>科目管理</title>
</head>
<body>

<%@include file="../header.html" %>
<%@include file="menu.jsp" %>

<div class="content">
    <h2 class="menu-title">科目管理</h2>

    <!-- ✅ 登録完了メッセージを表示 -->
    <%
        String msg = (String) request.getAttribute("message");
        if (msg != null) {
    %>
        <p style="color: green; font-size: 14px;"><%= msg %></p>
    <%
        }
    %>

    <!-- 新規登録リンク（右寄せ） -->
    <div style="text-align: right; margin-top: -10px; margin-bottom: 10px;">
        <a href="insert.jsp" style="font-size: 14px; text-decoration: none; color: #007bff;">
            新規登録
        </a>
    </div>

    <h1 style="font-size: 14px; text-align: left;">科目コード　　　科目名</h1>
    <hr style="border: 1px solid black; width: 100%; margin: 0;">
</div>

<%@include file="../footer.html" %>
</body>
</html>
