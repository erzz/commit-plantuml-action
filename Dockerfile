FROM bellsoft/liberica-openjdk-alpine:17.0.5


RUN apt-get install -y fonts-ipafont graphviz wget openjdk-8-jre git curl
RUN wget -P / --content-disposition https://github.com/plantuml/plantuml/releases/download/v1.2022.12/plantuml.jar

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]