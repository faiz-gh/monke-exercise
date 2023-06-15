# Backend Exercise

## Description

This is a simple backend exercise that uses Node.js and Express.js to create a server that serves JSON as a response to a REST API calls.

## Instructions

**Step-1:** Fork and clone the repository.
```bash
git clone https://github.com/faiz-gh/monke-exercise.git
```

**Step-2:** Download and Install Docker Desktop from [here](https://www.docker.com/products/docker-desktop).

**Step-3:** After installing Docker Desktop, open the terminal and go to the project directory.
```bash
cd monke-exercise
```

**Step-4:** Download the node image from Docker Hub.
```bash
docker pull node:lts-alpine3.18
```

**Step-5:** Run the following command to build and run the docker containers.
```bash
docker-compose up --build -d
```

**Step-6:** Open your browser and go to [http://localhost:3000](http://localhost:3000/) to see the result.