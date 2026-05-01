# Week 2 Deployment Lab - Node.js on EC2

## Project Overview
This project demonstrates a production-ready deployment of a Node.js Express application on AWS EC2 using PM2 as a process manager and Nginx as a reverse proxy.

## Tech Stack
- **Server:** AWS EC2 
- **Runtime:** Node.js 18
- **Process Manager:** PM2
- **Reverse Proxy:** Nginx

## Deployment Steps
1. **Infrastructure:** Launched an EC2 instance and configured Security Groups to allow port 80 (HTTP) 443 (HTTPS) and 22 (SSH).
2. **Setup:** Cloned the repository and executed `scripts/deploy.sh`.
3. **Environment:** Configured environment variables via `.env`.
4. **Persistence:** Used `pm2 startup` and `pm2 save` to ensure the app survives reboots.

## Endpoints
- **Home:** [http://3.73.116.52/](http://3.73.116.52/)
- **Health Check:** [http://3.73.116.52/health](http://3.73.116.52/health)