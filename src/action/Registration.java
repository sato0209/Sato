package action;

import java.io.IOException;
import java.sql.*;
import javax.naming.InitialContext;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.DataSource;

@WebServlet("/disp/Insertstudentupdateresult")
public class Registration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String code = request.getParameter("subjectCode");
        String name = request.getParameter("subjectName");

        try {
            // JNDIからDB接続
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/kaihatsu");
            Connection con = ds.getConnection();

            String sql = "INSERT INTO subject (code, name) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, code);
            ps.setString(2, name);
            ps.executeUpdate();

            ps.close();
            con.close();

            // 登録完了メッセージをセット
            request.setAttribute("message", "科目を登録しました。");

            // subjectmanage.jsp にフォワード
            RequestDispatcher rd = request.getRequestDispatcher("/disp/subjectmanage.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("登録中にエラーが発生しました: " + e.getMessage());
        }
    }
}
