#set the working directory
FROM openjdk:17-jdk-alpine
#Now setup a folder where your applicaion code will be stored
WORKDIR /app
#Now i will copy everything from the HOST machine to your container
COPY src/Main.java /app/Main.java
#I will compile my code
RUN javac Main.java
#Now i will run my code
CMD ["java","Main"]

