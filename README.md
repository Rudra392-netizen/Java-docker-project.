Java Docker Project 🚀
This is a simple Java application that demonstrates how to build and run a Java program inside a Docker container. It includes a basic Main.java file, a Dockerfile, and all necessary steps to containerize and execute a Java application using OpenJDK 17.

⚠️ Common Challenges Faced

Working on this project may come with a few practical challenges. Below are some common ones and tips to solve them:

🔐 1. Docker Permission Errors

Issue:

Running docker commands may require sudo every time (especially on Linux).

Solution: Add your user to the Docker group:

sudo usermod -aG docker $USER newgrp docker

🛠️ 2. Dockerfile Build Failures

Issue:

Docker build fails with errors like javac: command not found or Main.java not found.

Solutions:

Make sure Main.java exists in the correct path (same directory or src/)

Check spelling and capitalization (Linux is case-sensitive)

Confirm the Dockerfile has correct paths in COPY and RUN instructions

🔄 3. File Not Updating Inside Docker

Issue:

Changes to Main.java don't reflect in the Docker image.

Solution: Rebuild the Docker image:

docker build --no-cache -t java-docker-app . 🔗 4. Port Binding (for web apps)

Issue:

If you later upgrade this to a web app (like Spring Boot), you may forget to expose or map ports.

Solution: Add EXPOSE 8080 in the Dockerfile and use -p when running:

docker run -p 8080:8080 java-docker-app 📦 5. Java Package Errors

Issue:

If your Java file uses packages like package com.example;, running java Main won’t work.

Solution: Compile and run using the full package path:

bash Copy Edit javac com/example/Main.java java com.example.Main

📁 Project Structure
Java-docker-project/ ├── Dockerfile # Defines how to build the Docker image

├── Main.java # Java source code with main method

└── README.md # Project documentation

🧰 Prerequisites
Make sure the following tools are installed on your machine:

📦 Java (Optional - For Local Testing)
If you only want to run it inside Docker, Java is not required on your host system.

Ubuntu:
🧰 Prerequisites
Make sure the following tools are installed on your machine:

📦 Java (Optional - For Local Testing)
If you only want to run it inside Docker, Java is not required on your host system.

Ubuntu:
sudo apt update_
sudo apt install default-jdk -y

Windows:
Download from: https://www.oracle.com/java/technologies/javase-downloads.html

Or install via Chocolate:

choco install openjdk

🐳 Docker (Required)
Docker is required to build and run the containerized Java app.

Ubuntu:
sudo apt update
sudo apt install ca-certificates curl gnupg -y
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=\"$(dpkg --print-architecture)\" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y


Windows:
Download Docker Desktop from: https://www.docker.com/products/docker-desktop

🏗️ Build Docker Image

Once Docker is installed, navigate to the project folder and build the Docker image using:
docker build -t java-docker-app .

▶️ Run the Application
Now run the Docker container:

docker run --rm java-docker-app
This will compile and execute the Main.java class inside the container.

📦 Inside the Dockerfile

Here's what the Dockerfile does:

Uses a lightweight OpenJDK 17 Alpine base image.

Creates a working directory /app.

Copies Main.java into the container.

Compiles the Java file using javac.

Runs the program using java Main.

💻 Example Java Program & Output
📄 Main.java
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello from Java in Docker!");
    }
}

🖨️ Output:
Hello from Java in Docker!


🛠️ Customize Your Project
Add more .java files → update _COPY_ and _javac_ commands.

If using packages → adjust java command (e.g., _java com.example.Main_)

For multi-class builds or Maven/Gradle projects, consider extending the Dockerfile.


🤝 Contributing
Feel free to fork the repo, make improvements, and submit a pull request!


📄 License
This project is licensed under the MIT License.

👨‍💻 Made By
Rudra Pratap Singh
https://github.com/Rudra392-netizen/Java-docker-project..git

🔗 GitHub Repository
👉 Click Here to View the Project Repo
---

