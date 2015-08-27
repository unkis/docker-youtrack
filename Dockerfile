FROM java:8-jre
MAINTAINER Yuriy Barvenko <yuriy.barvenko@gmail.com>

RUN wget http://download-cf.jetbrains.com/charisma/youtrack-6.5.16433.jar -O youtrack.jar

EXPOSE 80
CMD ["java", "-Xmx1g", "-Djava.awt.headless=true", "-jar", "youtrack.jar", "80"]
