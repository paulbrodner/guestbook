export S3_BUCKET=pbrodner-kops-state-store
export KOPS_STATE_STORE=s3://$(S3_BUCKET)

.DEFAULT_GOAL := deploy

get-pods:
	kubectl get pods

get-service:
	kubectl get service

redis-master:
	kubectl apply -f redis-master-deployment.yml
	kubectl apply -f redis-master-service.yml	

redis-slave:	
	 kubectl apply -f redis-slave-deployment.yml
	 kubectl apply -f redis-slave-service.yml

frontend:
	kubectl apply -f frontend-deployment.yml
	kubectl apply -f frontend-service.yml

deploy: redis-master redis-slave frontend get-pods get-service

destroy:
	kubectl delete deployment -l app=redis
  	kubectl delete service -l app=redis
  	kubectl delete deployment -l app=guestbook
  	kubectl delete service -l app=guestbook
	  
#kubectl logs -f POD-NAME
