<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <c:import url="../layout/app.jsp">
            <c:param name="content">
                <h2>ユーザー 新規登録ページ</h2>

                <form method="POST" action="<c:url value='/users/create' />">
                    <c:import url="_form.jsp" />
                </form>
                <c:if test="${sessionScope.login_user.admin_flag ==1}">
                <p><a href="<c:url value='/users/index' />">一覧に戻る</a></p>
                </c:if>
            </c:param>
        </c:import>
    </body>
</html>