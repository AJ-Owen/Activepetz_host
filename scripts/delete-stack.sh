#!/bin/bash

# Delete CloudFormation stacks
aws cloudformation delete-stack --stack-name ecs-service
aws cloudformation delete-stack --stack-name ecs-task-definition
aws cloudformation delete-stack --stack-name iam-policy
aws cloudformation delete-stack --stack-name ecs-cluster
aws cloudformation delete-stack --stack-name ecr-repository
