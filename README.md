# 🚀 simple-node-app — Jenkins CI/CD Pipeline

<div align="center">

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&pause=1000&color=00D9FF&center=true&vCenter=true&width=600&lines=Cloning+Repo...+✅;Building+Docker+Image...+✅;Pushing+to+DockerHub...+✅;Deploy+Stage+Complete!+🚀" alt="Typing animation" />

![Node.js](https://img.shields.io/badge/Node.js-App-green?style=flat-square&logo=nodedotjs)
![Jenkins](https://img.shields.io/badge/CI/CD-Jenkins-red?style=flat-square&logo=jenkins)
![Docker](https://img.shields.io/badge/Container-Docker-blue?style=flat-square&logo=docker)
![DockerHub](https://img.shields.io/badge/Registry-DockerHub-blue?style=flat-square&logo=docker)

> A simple Node.js app wired to a Jenkins pipeline — every push automatically clones, builds a Docker image, and pushes it to DockerHub.

</div>

---

## ⚙️ Pipeline Flow
```
GitHub Push
     │
     ▼
Jenkins Triggered
     │
     ├──▶ Stage 1: Clone repo from GitHub
     ├──▶ Stage 2: Build Docker image
     ├──▶ Stage 3: Push image to DockerHub
     └──▶ Stage 4: Deploy
```

---

## ✨ Pipeline Stages

| Stage | What Happens |
|---|---|
| 🔁 **Clone** | Pulls latest code from GitHub using stored credentials |
| 🐳 **Build** | Builds Docker image from `Dockerfile` |
| 📤 **Push** | Pushes image to DockerHub with `latest` tag |
| 🚀 **Deploy** | Extendable — run containers or update a service |

---

## ⚡ Run Locally
```bash
git clone https://github.com/Erharshita-cloud/simple-node-app.git
cd simple-node-app
npm install
node app.js
```

With Docker:
```bash
docker build -t simple-node-app .
docker run -p 3000:3000 simple-node-app
```

Open 👉 **http://localhost:3000**

---

## 🛠️ Jenkins Setup

1. Install Jenkins + **Docker** and **GitHub** plugins
2. Add credentials:
   - `github-creds` — GitHub token
   - `dockerhub-credentials` — DockerHub username/password
3. Create a **Pipeline** job → point to this repo
4. Add a **GitHub Webhook** to trigger on every push
5. Jenkins auto-runs the `Jenkinsfile` on each commit

---

## 📂 Project Structure
```
simple-node-app/
├── app.js          # Main Node.js application
├── Dockerfile      # Container definition
├── Jenkinsfile     # CI/CD pipeline definition
├── package.json    # Dependencies
└── README.md
```

---

## 🔮 Roadmap
- [ ] Add automated tests stage
- [ ] Deploy to AWS EC2 on successful build
- [ ] Slack notifications on build success/failure

---

<div align="center">

**Harshita Goel** · [GitHub](https://github.com/Erharshita-cloud) · harshitagoel1503@gmail.com

⭐ Star this repo if it helped you understand Jenkins CI/CD!

</div>
