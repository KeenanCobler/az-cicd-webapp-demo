# Azure CI/CD Web App Deployment

## Overview
This project demonstrates a complete CI/CD pipeline for deploying a sample web application to Azure App Service using GitHub Actions.

## Architecture
- Azure App Service (Linux)
- Azure Resource Group & Storage (via Bicep or Terraform)
- GitHub Actions pipeline for CI/CD
- Key Vault integration for secret handling

## Tech Stack
- Azure
- GitHub Actions
- Bicep / Terraform
- Docker (optional)
- Python Flask or Node.js (sample app)

## CI/CD Pipeline Stages
1. Code push triggers GitHub Actions
2. Lint and test the app
3. Deploy infrastructure using Bicep
4. Deploy app to Azure App Service
5. Monitor via Azure Monitor

## Setup Instructions
1. Clone the repo
2. Customize your variables in `deploy.bicep` or `main.tf`
3. Configure GitHub secrets
4. Push code to trigger deployment

## Screenshots
_Add deployment pipeline screenshots and architecture diagram here._

## License
MIT