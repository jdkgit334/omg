<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <c:if test="${errors != null}">
            <div id="flush_error">
                入力内容にエラーがあります。<br />
                <c:forEach var="error" items="${errors}">
                    ・<c:out value="${error}" /><br />
                </c:forEach>
            </div>
        </c:if>

        <p>以下の項目を入力して画面下部の「投稿」をクリックしてください。</p>

        <label for="name">店名</label><br />
        <input type="text" name="name" value="${shop.name}" />
        <br /><br />

        カテゴリー<br />
        <select name="category">
            <option value="和食">和食</option>
            <option value="洋食・西洋料理">洋食・西洋料理</option>
            <option value="中華料理">中華料理</option>
        </select>
        <br /><br />

        営業時間(平日)<br />
        <select name="open_at1h">
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
        </select>
        :
        <select name="open_at1m">
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
        </select>&nbsp;～

        <select name="close_at1h">
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
        <select name="close_at1m">
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
        </select><br /><br />

        営業時間(休日)<br />
        <select name="open_at2h">
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
        </select>
        :
        <select name="open_at2m">
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
        </select>&nbsp;～

        <select name="close_at2h">
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
        <select name="close_at2m">
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
        </select><br /><br />


        <p>定休日 (複数選択可能)<br />
        <input type="checkbox" name="holiday" value="なし" checked>なし
        <input type="checkbox" name="holiday" value="月">月
        <input type="checkbox" name="holiday" value="火">火
        <input type="checkbox" name="holiday" value="水">水
        <input type="checkbox" name="holiday" value="木">木
        <input type="checkbox" name="holiday" value="金">金
        <input type="checkbox" name="holiday" value="土">土
        <input type="checkbox" name="holiday" value="日">日
        </p>


        <label for="address">住所</label><br />
        <textarea name="address" rows="3" cols="50">${shop.address}</textarea>
        <br /><br />


        <label for="tel">電話番号</label><br />
        <input type="text" name="tel" value="${shop.tel}" />
        <br /><br />

        <label for="homepage">お店のホームページのURL</label><br />
        <textarea name="homepage" rows="2" cols="50">${shop.homepage}</textarea>
        <br /><br />

        公開設定 (公開を選択すると他のユーザーもこのショップデータの閲覧に限り可能になります。)<br />
        <select name="disclose">
            <option value="00" selected>公開</option>
            <option value="01">非公開</option>
        </select><br /><br />


        <label for="content">備考 (営業時間が曜日毎に異なる、定休日が不規則な場合等こちらに入力して補完ください。)</label><br />
        <textarea name="content" rows="3" cols="50">${shop.content}</textarea>
        <br /><br />

        <label for="creater">データ作成者</label><br />
        <c:out value="${sessionScope.login_user.name}" />
        <br /><br />


        <input type="hidden" name="_token" value="${_token}" />
        <button type="submit">投稿</button>

    </body>
</html>