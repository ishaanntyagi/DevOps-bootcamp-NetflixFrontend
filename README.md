# DevOps-bootcamp-NetflixFrontend
Hosted a Netflix frontend on Aws Instance


##DevOps Bootcamp - UPES & INT Israel
🚀 This repository contains the final project for the DevOps Bootcamp I attended at UPES University, under the guidance of esteemed instructors Dor Amar and Tsadok Levi Firseck from INT Israel.

Project Overview
The final project involved deploying a Netflix clone website on AWS, utilizing the skills and technologies we learned throughout the bootcamp, including Linux, CI/CD pipelines, cloud computing, and Docker.

Key Topics Covered:
Linux and Bash:
Process management, environment variables, and  scripting.
Networking and HTTP:
Working with the HTTP protocol, APIs, and AWS cloud infrastructure.
AWS Deployment:
Deploying a Flask-based API and frontend app on AWS EC2 with Nginx.
CI/CD Pipeline:
Implementing a pipeline using GitHub Actions for automatic deployment.
Docker:
Containerizing the application using Docker.
Commands and Setup
1. Cloning the Repository
To clone the Netflix clone project repository:

git clone https://github.com/username/repo-name.git
cd repo-name
2. Installing Dependencies
Install the required dependencies for the frontend and backend:

Frontend (Next.js):
...
cd frontend
npm install
npm run build
Backend (Flask API):

...
cd backend
pip install -r requirements.txt
3. Docker Setup
To containerize the application using Docker:

Build the Docker Images
...
docker build -t netflix-backend ./backend
docker build -t netflix-frontend ./frontend
Run the Containers:
...
docker-compose up
4. Deploying to AWS EC2
SSH into your EC2 instance:
...
ssh -i "IshaanN.pem" ec2-user@your-ec2-public-ip
Pull the repository on EC2:
...
git clone https://github.com/username/repo-name.git
cd repo-name
Run the Docker containers:
...
docker-compose up -d
5. CI/CD Pipeline with GitHub Actions
This project includes a GitHub Actions workflow to automatically build and deploy the app on EC2. The .github/workflows/deploy.yml file contains the configuration.

Final Thoughts
The bootcamp provided invaluable hands-on experience with real-world DevOps tasks. From configuring EC2 instances to implementing CI/CD pipelines, I gained a solid understanding of the tools and processes that drive modern software deployment.
