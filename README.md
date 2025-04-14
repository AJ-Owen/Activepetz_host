# ActivePetz AWS ECS Deployment

This repository contains the necessary infrastructure to deploy the "ActivePetz" application to AWS ECS using CloudFormation.

## Prerequisites
1. AWS CLI installed and configured.
2. Docker installed.

## Steps
1. Build and push Docker image:
   ```bash
   ./scripts/build-and-push.sh
   ```

2. Deploy the infrastructure:
   ```bash
   ./scripts/deploy-stack.sh
   ```

3. Access your application:
   - Obtain the public IP of the ECS service from the AWS Console.

4. Clean up resources:
   ```bash
   ./scripts/delete-stack.sh
   ```

## Notes
- Update the `subnet-xxxxxxxx` and `vpc-xxxxxxxx` in `parameters.json` with your AWS environment details.
- The app will run on port 80.
