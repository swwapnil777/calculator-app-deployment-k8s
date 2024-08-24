

### `README.md` File

![Screen Recording 2024-08-22 185702](https://github.com/user-attachments/assets/2e61226d-e32c-4ad8-a72d-4f84518d301e)


## Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository
   ```

2. **Install Dependencies**

   ```bash
   yarn install
   ```

## Building and Running the Docker Image

1. **Build the Docker Image**

   ```bash
   docker build -t your-dockerhub-username/calculator-app:01 .
   ```

2. **Run the Docker Image**

   ```bash
   docker run -p 3000:3000 your-dockerhub-username/calculator-app:01
   ```

   Your application will be accessible at `http://localhost:3000`.

## Pushing Docker Image to Docker Hub

1. **Login to Docker Hub**

   ```bash
   docker login
   ```

2. **Push the Docker Image**

   ```bash
   docker push your-dockerhub-username/calculator-app:01
   ```

## Deploying to Kubernetes

1. **Apply the Kubernetes Configuration**

   ```bash
   kubectl apply -f deployment.yml
   kubectl apply -f service.yml
   ```

2. **Verify the Deployment**

   Check the status of your pods and services:

   ```bash
   kubectl get pods
   kubectl get services
   ```

3. **Access the Application**

   If using Minikube, you may need to run the following command to access the LoadBalancer service:

   ```bash
   minikube service calculator-app-service
   ```

## Notes

- Replace `your-dockerhub-username` with your actual Docker Hub username.
- Ensure that your Kubernetes cluster is properly configured and running.

