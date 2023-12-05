<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<%@ include file="../layout/top.jsp" %>
    <section id="loginFormArea">
        <h1 style="color:white">로그인</h1>
        <form action="login.do" method="post">
            <fieldset>
                <table>
                    <tr>    
                        <td class="td_left">
                            <label for="id" style="color:white">아이디 </label>
                        </td>

                        <td class="td_right">
                            <input type="text" name="id" id="id"/>
                        </td>
                    </tr>
                    <tr>    
                        <td class="td_left">
                            <label for="passwd" style="color:white">비밀번호 </label>
                        </td>    
                        <td class="td_right">
                            <input type="password" name="passwd" id="passwd"/>
                        </td>
                    </tr>
                </table>
                <input type="submit" value="로그인" id="selectButton"/>
            </fieldset>
        </form>
    </section>
<%@ include file="../layout/footer.jsp" %>
</body>
<style>

	body {
        background-color: black;
        align-items:center;
        font-family: Arial, sans-serif;
    }
    #loginFormArea{
    	text-align:center;
    	border: 1px solid #95a5a6;
    }
    table {
        margin: 0 auto; /* 가운데 정렬 */
    }
    .td_left {
        text-align: right;
        padding-right: 10px;
     }

     .td_right {
            text-align: left;
            padding-left: 10px;
     }

</style>
</html>
