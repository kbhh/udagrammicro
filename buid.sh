#!/bin/sh
docker buildx build --platform=linux/amd64 -t udagram-api-user ./udagram-api-user
docker tag udagram-api-user kibrom/udagram-api-user:v10
docker buildx build --platform=linux/amd64 -t udagram-api-feed ./udagram-api-feed
docker tag udagram-api-feed kibrom/udagram-api-feed:v10
docker buildx build --platform=linux/amd64 -t udagram-frontend ./udagram-frontend
docker tag udagram-frontend kibrom/udagram-frontend:v10
docker buildx build --platform=linux/amd64 -t reverseproxy ./udagram-reversproxy
docker tag reverseproxy kibrom/reverseproxy:v10
docker push kibrom/reverseproxy:v10
docker push kibrom/udagram-api-user:v10
docker push kibrom/udagram-api-feed:v10
docker push kibrom/udagram-frontend:v10