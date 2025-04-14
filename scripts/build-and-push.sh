#!/bin/bash

set -e

# Variables
STACK_NAME="ecr-repository"
ECR_REPO_URI=$(aws cloudformation describe-stacks --stack-name $STACK_NAME --query "Stacks[0].Outputs[?ExportName=='ECRRepositoryURI'].OutputValue" --output text)
IMAGE_TAG="latest"

# Build Docker image
docker build -t activepetz .

# Tag and push to ECR
docker tag activepetz:latest $ECR_REPO_URI:$IMAGE_TAG
aws ecr get-login-password --region $(aws configure get region) | docker login --username AWS --password-stdin $ECR_REPO_URI
docker push $ECR_REPO_URI:$IMAGE_TAG
