# Java Docker Project 🚀

This is a simple Java application that demonstrates how to build and run a Java program inside a Docker container. It includes a basic `Main.java` file, a `Dockerfile`, and all necessary steps to containerize and execute a Java application using OpenJDK 17.

---

## 📁 Project Structure

Java-docker-project/
├── Dockerfile # Defines how to build the Docker image
├── Main.java # Java source code with main method
└── README.md # Project documentation

yaml
Copy
Edit

---

## 🧰 Prerequisites

Make sure the following tools are installed on your machine:

---

### 📦 `Java` (Optional - For Local Testing)

> If you only want to run it inside Docker, Java is **not required** on your host system.

#### Ubuntu:

```bash
sudo apt update
sudo apt install default-jdk -y
Windows:
Download from: https://www.oracle.com/java/technologies/javase-downloads.html

Or install via Chocolatey:

powershell
Copy
Edit
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

bash
Copy
Edit
docker build -t java-docker-app .
▶️ Run the Application
Now run the Docker container:

bash
Copy
Edit
docker run --rm java-docker-app
This will compile and execute the Main.java class inside the container.

📦 Inside the Dockerfile
Here's what the Dockerfile does:

Uses a lightweight openjdk:17-jdk-alpine base image.

Sets working directory to /app.

Copies Main.java into the container.

Compiles it with javac.

Runs it using java Main.

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
Add more .java files → update COPY and javac commands in the Dockerfile

If using packages → adjust the command like: java com.example.Main

For more complex builds, consider using Maven or Gradle

⚠️ Common Challenges Faced
Working on this project may come with a few practical challenges. Below are some common ones and tips to solve them:

🔐 Docker Permission Errors
Issue: Running docker commands may require sudo.

Solution
sudo usermod -aG docker $USER
newgrp docker
#🛠️ Dockerfile Build Failures
Issue: Build errors like javac: command not found or missing files.

Tips:

Ensure Main.java is present and paths in the Dockerfile are correct

Rebuild without cache:

docker build --no-cache -t java-docker-app .
🔄 File Not Updating in Docker
Issue: Code changes not reflected in output.

Solution: Always rebuild image after code changes.

🔗 Port Binding (For Web Apps)
Issue: Web apps don’t expose ports.

Solution:

#dockerfile
EXPOSE 8080
docker run -p 8080:8080 java-docker-app
📦 Java Package Errors
Issue: Package-related runtime errors.

#Solution:
javac com/example/Main.java
java com.example.Main
👨‍💻 Made By
Rudra Pratap Singh
GitHub: Rudra392-netizen

🔗 GitHub Repository
👉 Click Here to View the Project Repo

🤝 Contributing
Feel free to fork the repo, make improvements, and submit a pull request!

📄 License
This project is licensed under the MIT License.

