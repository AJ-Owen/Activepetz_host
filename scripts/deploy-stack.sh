#!/bin/bash

# Deploy CloudFormation stacks
aws cloudformation deploy --template-file cloudformation/ecr-repository.yaml --stack-name ecr-repository
aws cloudformation deploy --template-file cloudformation/ecs-cluster.yaml --stack-name ecs-cluster
aws cloudformation deploy --template-file cloudformation/iam-policy.yaml --capabilities CAPABILITY_NAMED_IAM --stack-name iam-policy
aws cloudformation deploy --template-file cloudformation/ecs-task-definition.yaml --stack-name ecs-task-definition
aws cloudformation deploy --template-file cloudformation/ecs-service.yaml --stack-name ecs-service \
  --parameter-overrides file://cloudformation/parameters.json
