#!/bin/bash
minikube start --nodes 3 -p node
minikube profile node
minikube kubectl -- label nodes node-m02 app=app1
minikube kubectl -- label nodes node-m03 app=app2
