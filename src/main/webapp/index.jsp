<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java 예제 애플리케이션</title>
    <style>
        body {
            font-family: 'Malgun Gothic', Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f5f5f5;
        }
        .container {
            text-align: center;
            padding: 2rem;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 800px;
        }
        h1 {
            color: #3f51b5;
        }
        p {
            color: #555;
            margin-bottom: 1.5rem;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3f51b5;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #303f9f;
        }
        .tech-stack {
            margin-top: 2rem;
            padding-top: 1rem;
            border-top: 1px solid #eee;
            font-size: 0.9rem;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Java 예제 애플리케이션</h1>
        <p>안녕하세요! 이 예제는 JDK 11, Tomcat 8, Gradle 8을 사용한 기본 웹 애플리케이션입니다.</p>
        
        <a href="hello" class="btn">서블릿 예제 보기</a>
        
        <div class="tech-stack">
            <p>사용 기술: JDK 11, Tomcat 8, Gradle 8</p>
            <p>현재 시간: <%= new java.util.Date() %></p>
        </div>
    </div>
</body>
</html> 