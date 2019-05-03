---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello-cloudbuild
  labels:
    app: hello-cloudbuild
spec:
  replicas: 2
  selector:
    matchLabels:
      app: hello-cloudbuild
  template:
    metadata:
      labels:
        app: hello-cloudbuild
    spec:
      containers:
      - name: hello-cloudbuild
        image: gcr.io/fpt-fti/hello-app:COMMIT_SHA
        ports:
        - containerPort: 5000
---
apiVersion: v1
kind: Service
metadata:
  name: hello-cloudbuild
spec:
  type: LoadBalancer
  selector:
    app: hello-cloudbuild
  ports:
  - protocol: TCP
    port: 80
    targetPort: 5000
