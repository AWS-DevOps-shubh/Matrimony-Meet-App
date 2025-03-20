# Matrimony Meet App

## Overview
Matrimony Meet is a matchmaking application designed to connect people based on preferences, interests, and compatibility. It includes a mobile app (Android) and a PHP-based backend deployed using Docker, Kubernetes, and AWS.

🚀 Deployed using: Jenkins CI/CD | Docker | Kubernetes | Terraform | AWS EC2

## Tech Stack
- **Frontend:** Android (Kotlin)
- **Backend:** PHP with MongoDB
- **Database:** MongoDB
- **Containerization:** Docker
- **Orchestration:** Kubernetes
- **CI/CD:** Jenkins
- **Infrastructure as Code:** Terraform

## Directory Structure
```
matrimony_meet/
│── backend/
│   │── index.php  # Main PHP backend file
│   │── config.php  # Database configuration
│   │── auth.php  # User authentication logic
│   │── match.php  # Matchmaking logic
│   │── chat.php  # Chat system
│   │── Dockerfile  # Docker setup
│   │── composer.json  # PHP dependencies
│
├── android/
│   ├── app/
│   │   ├── src/
│   │   │   ├── main/
│   │   │   │   ├── java/com/matrimonymeet/
│   │   │   │   │   ├── MainActivity.kt
│   │   │   │   │   ├── LoginActivity.kt
│   │   │   │   │   ├── RegisterActivity.kt
│   │   │   │   │   ├── DashboardActivity.kt
│   │   │   │   │   ├── ApiService.kt  # Retrofit API service
│   │   │   │   ├── res/
│   │   │   │   │   ├── layout/
│   │   │   │   │   │   ├── activity_main.xml
│   │   │   │   │   │   ├── activity_login.xml
│   │   │   │   │   │   ├── activity_register.xml
│   │   │   │   │   │   ├── activity_dashboard.xml
│   │   │   │   │   ├── values/
│   │   │   │   │   │   ├── strings.xml
│   │   │   │   │   │   ├── colors.xml
│   │   │   │   │   │   ├── themes.xml
│   ├── build.gradle
│   ├── AndroidManifest.xml
│
├── deployment/
│   ├── kubernetes/
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   ├── terraform/
│   │   ├── main.tf
│   ├── jenkins/
│   │   ├── Jenkinsfile
│
└── README.md
```

## Setup and Deployment
### 1. Backend Setup
```sh
cd backend
composer install
php -S localhost:8000
```

### 2. Android App Setup
- Open the `android` folder in **Android Studio**
- Build and Run the app on an **emulator or physical device**

### 3. Dockerization
```sh
docker build -t matrimony-backend ./backend
docker-compose up -d
```

### 4. Kubernetes Deployment
```sh
kubectl apply -f deployment/kubernetes/deployment.yaml
kubectl apply -f deployment/kubernetes/service.yaml
```

### 5. CI/CD with Jenkins
- Install Jenkins and required plugins
- Configure a **Jenkins Pipeline** with `deployment/jenkins/Jenkinsfile`
- Run the pipeline to deploy the application

### 6. Infrastructure Deployment with Terraform
```sh
cd deployment/terraform
terraform init
terraform apply
```

## Features
✅ User authentication (Login/Register)  
✅ Matchmaking Algorithm  
✅ Chat System  
✅ Kubernetes Deployment  
✅ Automated CI/CD with Jenkins  

## Contributing
Feel free to submit **issues** or **pull requests** to improve the project!

## License
This project is **MIT licensed**.
