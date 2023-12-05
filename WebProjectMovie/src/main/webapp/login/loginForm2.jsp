<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="loginFormArea">

<h1>로그인</h1>
<form action="login.do" method="post">
	<fieldset>
	<table>
	<tr>	
		<td class="td_left">
		<label for="id">아이디:</label>
		</td>
		
		<td class="td_ right">
		<input type="text" name="id" id="id"/>
		</td>
	</tr>
	<tr>	
		<td class="td_left">
		<label for="passwd">비밀번호:</label>
		</td>	
		<td class="td_ right">
		<input type="password" name="passwd" id="passwd"/>
		</td>
	</tr>
	</table>
	<input type="submit" value="로그인" id="selectButton"/>
	</fieldset>
</form>
</section>