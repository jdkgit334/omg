package controllers.shops;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Shop;
import models.User;
import models.validators.ShopValidator;
import utils.DBUtil;

/**
 * Servlet implementation class ShopsCreateServlet
 */
@WebServlet("/shops/create")
public class ShopsCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopsCreateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String _token = (String)request.getParameter("_token");
		if(_token != null && _token.equals(request.getSession().getId())) {
		    EntityManager em = DBUtil.createEntityManager();

		    Shop s = new Shop();

		    //以下、_form.jspから送信されたフィールド毎のパラメータをセット。念の為全て記載。
		    s.setUser((User)request.getSession().getAttribute("login_user"));
		    s.setName(request.getParameter("name"));
		    s.setCategory(request.getParameter("category"));
		    s.setDisclose(Integer.parseInt(request.getParameter("disclose")));
		    s.setAddress(request.getParameter("address"));
		    s.setOpen_at1((request.getParameter("open_at1h")) + ":" + (request.getParameter("open_at1m")));
		    s.setClose_at1((request.getParameter("close_at1h")) + ":" + (request.getParameter("close_at1m")));
		    s.setOpen_at2((request.getParameter("open_at2h")) + ":" + (request.getParameter("open_at2m")));
            s.setClose_at2((request.getParameter("close_at2h")) + ":" + (request.getParameter("close_at2m")));
            s.setHoliday(request.getParameter("holiday"));
            s.setHomepage(request.getParameter("homepage"));
            s.setContent(request.getParameter("content"));
            s.setTel(request.getParameter("tel"));
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            s.setCreated_at(currentTime);
            s.setUpdated_at(currentTime);
            //パラメータセットは以上

            /* holidayの値取得が難しい…
            if(request.getParameterValues("holiday").size > 1) {
                s.setHoliday(request.getParameterValues("holiday");
            } else {
                s.setHoliday(request.getParameter("holiday")

            またはフィールドholidayの配列化が必要？

            private String[] holiday;

            public String[] getHoliday() {
            return holiday;
            }

            public void setHoliday(String[] holiday) {
                this.holiday = holiday;
            }

            */

            List<String> errors = ShopValidator.validate(s);
            if(errors.size() > 0) {
                em.close();

                request.setAttribute("_token", request.getSession().getId());
                request.setAttribute("shop", s);
                request.setAttribute("errors", errors);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/shops/new.jsp");
                rd.forward(request, response);
            } else {
                em.getTransaction().begin();
                em.persist(s);
                em.getTransaction().commit();
                em.close();
                request.getSession().setAttribute("flush", "登録が完了しました。");

                response.sendRedirect(request.getContextPath() + "/shops/index");
            }

		}
	}

}



















