<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Chart</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
</head>
<body class="movieform" style="background-color: black;">
<%@ include file="../layout/top.jsp" %>

    <header>
        <h1>전체 영화</h1>
    </header>
    <section id="movie-list" class="movie-list">
        <!-- Movie list will go here -->
    </section>
<%@ include file="../layout/footer.jsp" %>
</body>
</html>
