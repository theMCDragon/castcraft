# 1. Wähle ein Basis-Image mit Java
FROM openjdk:17-jdk-slim
# 2. Setze das Arbeitsverzeichnis
WORKDIR /app
# 3. Kopiere den gesamten Projektinhalt in das Image
COPY . .
# 4. Baue das Projekt mit Gradle
RUN chmod +x gradlew
RUN ./gradlew build
# 5. Exponiere Ports (optional)
EXPOSE 8080
# 6. Starte die Anwendung
CMD ["java", "-jar", "build/libs/<deine-jar-datei>.jar"]
