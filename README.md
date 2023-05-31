# Infrastructure-CI-CD-Pipeline
### Tools Used
- Docker
- Kubernetes
- Terraform
- Ansible
- Jenkins
- Amazon Web Service (AWS)

## Infrastructure Overview For Project


![overview](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/e7cab31f-cc8a-40ad-9412-fb3f3345dfaa)

## AWS Infrastructure 
![aws infrastructure drawio](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/9ccf77c2-50e2-4d70-946a-2e2fcf49c634)


## Deploy Go App using Jenkins in EKS

Deployments yaml for jenkins allows jenkins pod as jenkins master and slave but I do  bastion host as slave also i tried jenkins pod as slave  and bastion host as slave
![jenkins](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/2fd36ca5-cd19-419e-91df-71705e4b0bfa)

![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/868e6dc0-f67e-4674-afec-b77f5816bcd3)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/67e104fe-b60b-4efa-a9b3-c11519e0c3d3)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/e8595592-5b3c-4e97-b3e9-465dd930d9c0)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/521b32e5-49c7-49a0-ba7a-53c1736327bc)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/089804f1-68b1-4e49-bccb-89aa9061563a)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/efac4a77-4dd7-4cf9-9f6b-3c4832eda317)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/33886130-efce-45d1-8a6c-7300a0e77f24)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/292f6024-2802-4a24-a62f-17942fa985ca)

#### creating pipeling CI CD for go app
deployments yaml for jenkins allows 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/15006b8b-9592-4992-88b1-13bd2a46f43e)

when ented occur error 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/6de81cdc-3577-4a48-8ebc-b9129d5ee87e)
solved with enter in secuirty section in Manage Jenkins
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/eb450848-9729-4c37-91bf-7813479c15e9)
i create pipeline  script from SCM to read jenkinsfile but my repo is private it needs Git Credentials add In Jenkins
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/1ba3fb23-d47c-4e52-9b7d-78fbf8036775)
add Git Credentials in jenkins 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/007c1cf0-9d82-4ec3-b58a-cac7bb7743c8)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/e58e6794-3975-4752-bcd5-671438fbc267)
 need change git credentials in jenkins file in app repo
 ![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/881bfc47-68fb-465c-9cc4-b2b8291a2d29)
 need  add docker credentials in jenkins 
 ![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/5d5ab47e-4b09-406e-a657-90db11eb37c8)
 failed need to run docker deomon in host 
 ![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/d3d38f65-e0dd-4f52-9696-5c2904dc1098)
### bastion host as slave
run ansible to configure bastion host to as slave 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/ea4d7261-12e6-405d-9073-4bc5685d077f)
add bastion host as slave for jenkins 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/10e5d2d7-b343-4c61-93b7-d641ef9cabdb)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/a3b723e6-16d0-4adb-9a9b-b395cb0211ac)
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/e3d65ef9-52b7-448a-9278-b96ca086afee)
edit jenkins file to run in bastionhost as slave 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/c42a6358-5c5d-4ca3-b69b-5a456183d2e4)
error 
///var/run/docker.sock
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/d43f97dd-8221-473f-8054-56f5810cd3d0)
solve this and i will edit my ansible code to handle this 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/1a811cae-f5ed-4f31-ace7-0c97f743c6a4)

### this finish pipeline for ci cd for deploy go app
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/17020899-7c08-408e-bd84-7610f44698ea)
### Go App is running in k8s using jenkins 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/d2ad9b40-e3c7-4d63-bd82-1a38ef249b00)
### Go App from browser
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/b7c9cd17-dc28-411e-b4d5-de7636dbf733)

### webhooks to trigger pipeline automatically 
![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/a13c62ed-7fc9-479c-be7c-e876a130a97a)

![image](https://github.com/mahmoudmohamed22/Infrastructure-CI-CD-Pipeline/assets/47304558/5d0f7ea5-190c-434f-b4b2-451dc26d1e48)




 


