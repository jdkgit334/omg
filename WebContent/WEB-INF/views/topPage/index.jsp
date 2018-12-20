<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <c:import url="../layout/app.jsp">
            <c:param name="content">
                <c:if test="${flush != null}">
                    <div id="flush_success">
                        <c:out value="${flush}"></c:out>
                    </div>
                </c:if>

                <h2>何食べよっか？</h2>
                任意の条件にマッチする飲食店を検索・表示します。<br />
                フォームに条件を指定のうえ、検索ボタンをクリックしてください。<br />
                お店が未登録または追加登録する場合は<a href="<c:url value='/shops/new' />">「お店の新規登録」</a>から登録してください。<br /><br />

                <form method="GET" action="<c:url value='/shops/search' />">

                訪店曜日:
                <select name="day">
                    <option value="月" selected>月曜日</option>
                    <option value="火">火曜日</option>
                    <option value="水">水曜日</option>
                    <option value="木">木曜日</option>
                    <option value="金">金曜日</option>
                    <option value="土">土曜日</option>
                    <option value="日">日曜日</option>
                </select>&nbsp;&nbsp;

                訪店時間:
                 <select name="hour">
            <option value="00" selected>00</option>
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option>
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option>
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
        </select>
        :
        <select name="minute">
            <option value="00" selected>00</option>
            <option value="05">05</option>
            <option value="10">10</option>
            <option value="15">15</option>
            <option value="20">20</option>
            <option value="25">25</option>
            <option value="30">30</option>
            <option value="35">35</option>
            <option value="40">40</option>
            <option value="45">45</option>
            <option value="50">50</option>
            <option value="55">55</option>
        </select>&nbsp;&nbsp;

                カテゴリー:
        <select name="category">
            <option value="指定しない">指定しない</option>
            <option value="和食">和食</option>
            <option value="洋食・西洋料理">洋食・西洋料理</option>
            <option value="中華料理">中華料理</option>
        </select><br />

        <label for="area">住所に</label>
        <input type="text" name="area"  />を含む&nbsp;&nbsp;


                他のユーザーのショップデータを
        <select name="extent">
            <option value="ALL">含める</option>
            <option value="MY" selected>含めない</option>
        </select>&nbsp;&nbsp;





        <input type="hidden" name="_token" value="${_token}" />
        <button type="submit">検索</button>

                </form><br />




                <table id="shop_list">
                    <tbody>
                        <tr>
                            <th class="shop_name2">店名</th>
                            <th class="shop_category2">カテゴリー</th>
                            <th class="shop_open2">営業時間(平日)</th>
                            <th class="shop_close2">営業時間(休日)</th>
                            <th class="shop_holiday2">定休日</th>
                            <th class="shop_address2">住所</th>
                            <th class="shop_content2">備考</th>
                            <th class="shop_action2">操作</th>
                        </tr>
                        <c:forEach var="shop" items="${shops}" varStatus="status">
                            <tr class="row${status.count % 2}">
                                <td class="shop_name2"><c:out value="${shop.name}" /></td>
                                <td class="shop_category2"><c:out value="${shop.category}" /></td>
                                <td class="shop_open2"><c:out value="${shop.open_at1}" />～<c:out value="${shop.close_at1}" /></td>
                                <td class="shop_close2"><c:out value="${shop.open_at2}" />～<c:out value="${shop.close_at2}" /></td>
                                <td class="shop_holiday2"><c:out value="${shop.holiday}" /></td>
                                <td class="shop_address2"><c:out value="${shop.address}" /></td>
                                <td class="shop_content2"><c:out value="${shop.content}" /></td>
                                <td class="shop_action2"><a href="<c:url value='/shops/show?id=${shop.id}' />">詳細を見る</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div id="pagination">
                （全 ${shops_count} 件）<br />
                <c:forEach var="i" begin="1" end="${((shops_count - 1) / 15) + 1}" step="1">
                    <c:choose>
                        <c:when test="${i == page}">
                            <c:out value="${i}" />&nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="<c:url value='/?page=${i}' />"><c:out value="${i}" /></a>&nbsp;
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </div>
            <p><a href="<c:url value='/shops/new' />">お店の新規登録</a></p>
            </c:param>
        </c:import>
    </body>
</html>



