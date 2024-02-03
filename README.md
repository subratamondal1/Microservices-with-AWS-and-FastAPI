<h1 align="center">Microservices with AWS and FastAPI</h1>
<p align="center">
  <img src="https://github.com/subratamondal1/Microservices-with-AWS-and-FastAPI/actions/workflows/devops.yml/badge.svg">
</p>

<h2 align="left">Scaffold</h2>

**CODE**

- **Makefile**
- **requirements.txt**
- **source**
- **test**
- **Dockerfile**
- **IAC [Infrastructure As Service]**

1. Create a Virtual Environment
2. Create empty files: `Makefile`, `requirements.txt`, `main.py` to run the microservice, `Dockerfile`, `mylib/__init__.py`
3. Populate `Makefile:` put the steps, lifecycle of your project in this file such as code linting, formatting, etc.
4. Setup Continuous Integration for auto checking tasks like code formatting, linting, testing, etc.
5. Build CLI using Python `fire` library.
6. Containerization with Docker.
7. AWS Deployment with AWS ECR (Elastic Container Registry) and AWS CodeBuild

**AWS ECR (Elastic Container Registry)**<br>

- Steps:
  - Login into your AWS Account.
  - Create a Registry (repository) on Amazon ECR (Amazon Elastic Container Registry).
  - View the Push Commands Section for full Automation (put the steps under `make deploy`).
    - Make sure to first follow the steps mentioned on the Push Commands Section.
    1. Retrieve auth token
    2. Build docker image
    3. Tag your docker image
    4. Push the docker image to aws ecr

**AWS CodeBuild**<br>

- Steps:
  - Login into your AWS Account.
