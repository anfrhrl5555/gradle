# Java 예제 애플리케이션

이 저장소는 JDK 11, Tomcat 8, Gradle 8을 사용하는 간단한 Java 웹 애플리케이션 예제입니다.

## 기술 스택

- JDK 11
- Tomcat 8
- Gradle 8
- Servlet API 4.0.1
- JSTL 1.2

## 프로젝트 구조

```
java-example/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── example/
│       │           └── web/
│       │               └── HelloServlet.java
│       └── webapp/
│           ├── WEB-INF/
│           │   └── web.xml
│           └── index.jsp
├── build.gradle
├── settings.gradle
└── README.md
```

## 애플리케이션 빌드 방법

### 필수 조건

- JDK 11이 설치되어 있어야 합니다.
- 인터넷 연결: Gradle 종속성을 다운로드하기 위해 필요합니다.

### 빌드하기

WAR 파일을 빌드하려면 다음 명령을 실행합니다:

```bash
./gradlew build
```

빌드된 WAR 파일은 `build/libs/java-example.war`에 위치합니다.

## Tomcat에 WAR 파일 배포하기

1. [Tomcat 8](https://tomcat.apache.org/download-80.cgi)을 다운로드하고 설치합니다.
2. 빌드된 WAR 파일 `build/libs/java-example.war`를 Tomcat의 `webapps` 디렉토리에 복사합니다.
3. Tomcat 서버를 시작합니다:
   ```bash
   # macOS/Linux
   $TOMCAT_HOME/bin/startup.sh
   
   # Windows
   %TOMCAT_HOME%\bin\startup.bat
   ```
4. 웹 브라우저에서 다음 URL로 접속합니다:
   - 메인 페이지: [http://localhost:8080/java-example](http://localhost:8080/java-example)
   - 서블릿 예제: [http://localhost:8080/java-example/hello](http://localhost:8080/java-example/hello)

## 애플리케이션 기능

- 메인 페이지 (index.jsp): 간단한 웹 페이지에 현재 시간 표시
- 서블릿 예제 (/hello): HelloServlet에서 제공하는 간단한 메시지 출력 