kubectl delete deploy backend-user
kubectl delete deploy backend-feed
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl delete service backend-user
kubectl delete service backend-feed
kubectl delete service frontend
kubectl delete service reverseproxy

kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml

kubectl apply -f backend-user-service.yaml
kubectl apply -f backend-feed-service.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f reverseproxy-service.yaml