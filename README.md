# Java Docker Project 🚀

This is a simple Java application that demonstrates how to build and run a Java program inside a Docker container. It includes a basic `Main.java` file, a `Dockerfile`, and all necessary steps to containerize and execute a Java application using OpenJDK 17.

---

## 📁 Project Structure

Java-docker-project/
├── Dockerfile # Defines how to build the Docker image
├── Main.java # Java source code with main method
└── README.md # Project documentation
---

## 🧰 Prerequisites

Make sure the following tools are installed on your machine:

---

### 📦 Java (Optional - For Local Testing)

> If you only want to run it inside Docker, Java is **not required** on your host system.

#### Ubuntu:

```bash
_sudo apt update_
_sudo apt install default-jdk -y_

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
_docker build -t java-docker-app .

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

#💻 Example Java Program & Output

📄 Main.java
java
Copy
Edit
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

---

### ✅ Summary of Improvements
- All commands are _underlined_ using Markdown-style emphasis (`_`).
- Horizontal rules are properly placed after each tool section.
- Clean formatting for code and output examples.

Would you like this version uploaded to your repo via Git commands? I can help you do that too.
