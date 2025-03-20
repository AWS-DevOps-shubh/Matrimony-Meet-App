# 📌 Matrimony Meet – A Smart Matchmaking Application  
🔗 **Project Repository:** [GitHub](https://github.com/your-repo/matrimony_meet)  

---

## 📖 Overview  
Matrimony Meet is a **matchmaking application** designed to connect people based on preferences, interests, and compatibility. It includes a **mobile app (Android) and a PHP-based backend** deployed using **Docker, Kubernetes, and AWS**.  

🚀 **Deployed using:** Jenkins CI/CD | Docker | Kubernetes | Terraform | AWS EC2  

---

## ✨ Features  
✔ **User Authentication:** Secure login & registration  
✔ **Profile Management:** Users can create and manage profiles  
✔ **Matchmaking Algorithm:** AI-driven match recommendations  
✔ **Chat System:** Real-time messaging using REST APIs  
✔ **Secure API:** Token-based authentication with JWT  
✔ **Scalable Deployment:** Kubernetes-managed infrastructure  

---

## 🛠 Tech Stack  
### 📌 Backend  
- **Language:** PHP  
- **Database:** MongoDB  
- **Server:** Nginx  
- **Containerization:** Docker  
- **Orchestration:** Kubernetes (with Ingress & NodePort)  

### 📌 Mobile App  
- **Language:** Kotlin  
- **Architecture:** MVVM  
- **Networking:** Retrofit API calls  

### 📌 DevOps & Deployment  
- **CI/CD:** Jenkins  
- **Containerization:** Docker  
- **Orchestration:** Kubernetes  
- **Cloud:** AWS EC2  
- **Infrastructure as Code:** Terraform  

---

## 📂 Project Structure  
```
matrimony_meet/
│── backend/
│   ├── index.php         # Main backend logic
│   ├── config.php        # Database configuration
│   ├── auth.php          # User authentication
│   ├── match.php         # Matchmaking logic
│   ├── chat.php          # Chat system
│   ├── Dockerfile        # Docker setup
│   ├── composer.json     # PHP dependencies
│
├── android/
│   ├── app/src/main/java/com/matrimonymeet/
│   │   ├── MainActivity.kt
│   │   ├── LoginActivity.kt
│   │   ├── RegisterActivity.kt
│   │   ├── DashboardActivity.kt
│   │   ├── ApiService.kt  # Retrofit API service
│
├── deployment/
│   ├── kubernetes/
│   │   ├── namespace.yaml
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   ├── ingress.yaml
│   ├── terraform/
│   │   ├── main.tf        # Terraform configuration
│   │   ├── variable.tf    # Terraform variables
│   │   ├── provider.tf    # Terraform provider configurations
│   │   ├── userdata.sh    # User data script for EC2 instance
│   ├── jenkins/
│   │   ├── Jenkinsfile    # Jenkins pipeline configuration
│
└── README.md
```

---

## 🚀 Deployment Steps  
### 1️⃣ Clone the Repository  
```sh
git clone https://github.com/your-repo/matrimony_meet.git
cd matrimony_meet
```

### 2️⃣ Build & Push Docker Image  
```sh
docker build -t yourdockerhub/matrimony-backend:latest ./backend
docker push yourdockerhub/matrimony-backend:latest
```

### 3️⃣ Deploy to Kubernetes  
```sh
kubectl apply -f deployment/kubernetes/namespace.yaml
kubectl apply -f deployment/kubernetes/deployment.yaml -n matrimony-namespace
kubectl apply -f deployment/kubernetes/service.yaml -n matrimony-namespace
kubectl apply -f deployment/kubernetes/ingress.yaml -n matrimony-namespace
```

### 4️⃣ Verify Deployment  
```sh
kubectl get pods -n matrimony-namespace
kubectl get svc -n matrimony-namespace
kubectl get ingress -n matrimony-namespace
```

---

## 🛠 CI/CD Pipeline with Jenkins  
The **Jenkinsfile** automates the deployment:  
1. Clones the repository  
2. Builds and pushes the Docker image  
3. Deploys the backend to Kubernetes  
4. Applies **Ingress** for external access  

### Triggering the Jenkins Pipeline  
Run the pipeline manually or set up a **GitHub webhook** for automatic builds.  

---

## 📌 API Endpoints  
| Endpoint       | Method | Description          |
|---------------|--------|----------------------|
| `/auth/login` | POST   | User login          |
| `/auth/register` | POST   | User registration  |
| `/match/get` | GET   | Fetch match list    |
| `/chat/send` | POST   | Send a chat message |

---

## 📌 Terraform Infrastructure Setup  
Terraform is used to provision infrastructure on AWS.  

### 1️⃣ Initialize Terraform  
```sh
cd deployment/terraform
terraform init
```

### 2️⃣ Plan Infrastructure  
```sh
terraform plan
```

### 3️⃣ Apply Configuration  
```sh
terraform apply -auto-approve
```

This will create the necessary **EC2 instances, security groups, and networking configurations** for deploying the application.  

---

## License
This project is **MIT licensed**.
