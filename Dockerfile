FROM schoolofdevops/carts-maven
WORKDIR /opt/carts
COPY . /opt/carts
RUN mvn package
RUN mv target/carts.jar /run/carts.jar
RUN rm -rf /opt/carts/*
EXPOSE 80
CMD ["java","-jar","/run/carts.jar","--port=80"]



