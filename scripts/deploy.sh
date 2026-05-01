#!/bin/bash

# Update system packages
sudo yum update -y

# Install Node.js 18
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

# Install Nginx
sudo yum install -y nginx

# Install PM2 globally
sudo npm install -g pm2

# Enter application directory and install dependencies (assumes execution from repo root)
npm install

# Start application with PM2 and configure to launch on boot
pm2 start config/ecosystem.config.js --env production
pm2 save
sudo pm2 startup systemd -u ec2-user --hp /home/ec2-user

# Configure Nginx
sudo cp config/nginx.conf /etc/nginx/conf.d/app.conf
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Deployment Complete!"