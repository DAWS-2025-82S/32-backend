#FROM node:20
FROM node:20.18.3-alpine3.21 AS builder
WORKDIR /opt/backend
COPY package.json ./
COPY *.js ./
RUN npm install


FROM node:20.18.3-alpine3.21
RUN addgroup -S expense && adduser -S expense -G expense && \
    mkdir /opt/backend && \
    chown -R expense:expense /opt/backend
ENV DB_HOST="mysql"
WORKDIR /opt/backend
USER expense
COPY --from=builder /opt/backend /opt/backend
CMD ["node", "index.js"]

# 32-backend repo code for backend to create CI/CD

# setup Jenkins Master and Agent EC2 instances using 31-cicd-tools which is terraform code
# Configure Agent Node
# Add the required plugins 

# Download the code from https://expense-builds.s3.us-east-1.amazonaws.com/expense-backend-v2.zip
#   - set up project 32-backend using the downloaded code and Create JenkinsFile for pipeline


# copy the docker file from 18-expense-docker --> 02-backend

# In Jenkins create pipeline for backend

# 	configure 32-backend git url https://github.com/DAWS-2025-82S/32-backend.git

# Create ECR(Amazon Elastic Container Registry) repository in AWS    

# Use/Update the pipeline to build and push the image to AWS ECR repository



# Create webhook in github
# --------------------------
# 1.Go to project settings and select Create webhook

# 2.For payload URL confgiure Jenkins URL

# 	http://jenkins.raj82s.online:8080/github-webhook/

# 3.Provide content-type as application/json
# 4.Enable or disbale SSL
# 5.select events you would like to trigger this webhook?
# 6.In Jenkins enable the option "Github hook trigger for GITScm polling"

#For CI CD
# In Jenkins Create job for 32-backend repo under EXPENSE-->BACKEND-->backend-ci folder 

# url https://github.com/DAWS-2025-82S/32-backend.git

# Run the backend-ci to trigger image and push to ECR