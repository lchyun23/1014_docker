FROM amazoncorretto:17-alpine

ARG JAR_FILE=build/libs/*.jar
# build argument를 주면 그거 쓰고 안 주면, 오른쪽 기본값 쓰겠다.
COPY ${JAR_FILE} app.jar
#
ENTRYPOINT ["java","-jar","/app.jar"]