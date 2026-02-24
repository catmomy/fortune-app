# Tomcat 9 と Java 17 を使用する設定
FROM tomcat:9.0-jdk17-openjdk-slim

# デフォルトのアプリを削除してスッキリさせる
RUN rm -rf /usr/local/tomcat/webapps/*

# あなたの WAR ファイルを Tomcat に読み込ませる設定
# ※ファイル名が graduation_work3.war であることを前提にしています
COPY graduation_work3.war /usr/local/tomcat/webapps/ROOT.war

# ポート 8080 を開放
EXPOSE 8080
CMD ["catalina.sh", "run"]
