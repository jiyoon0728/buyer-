<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <style>
                .flex_box {
                    display: flex;
                }
            </style>
        </head>

        <body>

            <h1>상품 상세보기 페이지</h1>
            <hr />

            <table border="1">
                <tr>
                    <th>번호</th>
                    <th>상품명</th>
                    <th>가격</th>
                    <th>재고</th>
                    <th>등록일</th>
                </tr>

                <tr>
                    <td>${p.id}</td>
                    <td>${p.name}</td>
                    <td>${p.price}</td>
                    <td>${p.qty}</td>
                    <td>${p.createdAt}</td>
                </tr>
            </table>
            <div class="flex_box">
                <form action="/product/${p.id}/purchaseForm" method="post">
                    <input type="number" name="qty" min="0" max="${p.qty}">
                    <button type="submit">구매</button>
                </form>
            </div>

            </table>
        </body>

        </html>