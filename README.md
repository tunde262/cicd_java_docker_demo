# CI/CD Java Gradle Docker Demo
This project demonstrates a **CI/CD pipeline** for a simple **Java** application using **Gradle**, **JUnit**, **Docker**, and **GitHub Actions**. The application contains basic arithmetic operations and is packaged into a Docker container for deployment..

## Project Goal

The goal of this project is to showcase a **continuous integration and deployment pipeline (CI/CD)** that automates:

1. **Building the application** using Gradle.
2. **Running unit tests** using Junit to find bad code.
3. **Packaging the application** into a Docker image.
4. **Pushing the image** to DockerHub for deployment.

## Features

- **Java Program**:  
  - Implements `add(int, int)`, `subtract(int, int)`, and a `main()` method that prints `"Hello, World!"`.
  
- **JUnit Testing**:  
  - Ensures arithmetic methods work correctly during the build process.
  
- **Gradle Build System**:  
  - Automates compilation, testing, and packaging.
  
- **Docker Containerization**:  
  - Packages the app in a container, using a multi-stage build to optimize the final runtime image.
  
- **GitHub Actions Workflow**:  
  - Automates testing and deployment on every push to `main`.

## Technologies

- Programming Language: **Java 21**  
- Build Tool: **Gradle 8.10**  
- Testing: **JUnit 5**  
- Containerization: **Docker**  
- CI/CD Tool: **GitHub Actions**  

---

## Setup Instructions

### Prerequisites

Before running the project, install:

- **[Java 21](https://adoptium.net/)**
- **[Gradle](https://gradle.org/install/)**
- **[Docker](https://www.docker.com/)**
- **[GitHub CLI](https://cli.github.com/)**

### Steps to Run Locally

1. Clone the repository:

   ```bash
   git clone https://github.com/your-repo/cicd-java-docker-demo.git
   cd cicd-java-docker-demo

2. Build and test the application:

   ```bash
   ./gradlew build
   ./gradlew test

3. Run the application:
   ```bash
   ./gradlew run

## Docker Usage

1. Build the Docker Image:

   ```bash
   docker build -t cicd_pipeline_demo .

2. Run the Container:

   ```bash
   docker run -p 8080:8080 cicd_pipeline_demo

## CI/CD Pipeline

### GitHub Actions Workflow

Located at `.github/workflows/gradle.yml`, this workflow:

1. **Builds the Java application** using Gradle.
2. **Running unit tests** using Junit to find bad code.
3. **Packages the application** into a Docker image.
4. **Pushes the image** to DockerHub.

## Set Up GitHub Secrets

**VERY Important**: To enable the deployment step in GitHub workflow, you must add the following repository secrets in your GitHub repository settings:

- `DOCKERHUB_USERNAME`: Your DockerHub username
- `DOCKERHUB_TOKEN`: Your DockerHub access token

## Gradle Permission Error

**VERY Important**: If Github Actions fails to build using gradle, becuase of a permission error run `git update-index --chmod=+x gradlew` to update the execute permission of the gradlew file within the Git index.

## Next Steps

- Deploy the Docker image to **Kubernetes**.
