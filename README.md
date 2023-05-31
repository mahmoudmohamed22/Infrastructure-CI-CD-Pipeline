# Infrastructure-CI-CD-Pipeline
### Tools Used
- Docker
- Kubernetes
- Terraform
- Ansible
- Jenkins
- Amazon Web Service (AWS)

## Infrastructure Overview For Project

<img src="./images screenshots/overview.png" alt="">

## AWS Infrastructure 

<img src="./images screenshots/aws infrastructure.drawio.png" alt="">

## Deploy Go App using Jenkins in EKS

Deployments yaml for jenkins allows jenkins pod as jenkins master and slave but I do  bastion host as slave also i tried jenkins pod as slave  and bastion host as slave
<img src="./images screenshots/jenkins.png" alt="">
<img src="./images screenshots/1.png" alt="">
<img src="./images screenshots/2.png" alt="">
<img src="./images screenshots/3.png" alt="">
<img src="./images screenshots/4.png" alt="">
<img src="./images screenshots/5.png" alt="">
<img src="./images screenshots/6.png" alt="">
<img src="./images screenshots/7.png" alt="">

#### creating pipeline CI CD for go app
deployments yaml for jenkins allows 

<img src="./images screenshots/8.png" alt="">

when ented occur error 

<img src="./images screenshots/9.png" alt="">

solved with enter in secuirty section in Manage Jenkins

<img src="./images screenshots/10.png" alt="">

i create pipeline  script from SCM to read jenkinsfile but my repo is private it needs Git Credentials add In Jenkins

<img src="./images screenshots/11.png" alt="">
add Git Credentials in jenkins 
<img src="./images screenshots/12.png" alt="">
<img src="./images screenshots/13.png" alt="">
 need change git credentials in jenkins file in app repo
<img src="./images screenshots/14.png" alt="">
 need  add docker credentials in jenkins 
<img src="./images screenshots/15.png" alt="">
 failed need to run docker deomon in host 
 <img src="./images screenshots/16.png" alt="">
### bastion host as slave
run ansible to configure bastion host to as slave 
<img src="./images screenshots/17.png" alt="">
add bastion host as slave for jenkins 
<img src="./images screenshots/18.png" alt="">
<img src="./images screenshots/19.png" alt="">
<img src="./images screenshots/20.png" alt="">
edit jenkins file to run in bastionhost as slave 
<img src="./images screenshots/21.png" alt="">error 
///var/run/docker.sock
<img src="./images screenshots/22.png" alt="">
solve this and i will edit my ansible code to handle this 

<img src="./images screenshots/23.png" alt="">

### this finish pipeline for ci cd for deploy go app

<img src="./images screenshots/24.png" alt="">

### Go App is running in k8s using jenkins 

<img src="./images screenshots/25.png" alt="">

### Go App from browser

<img src="./images screenshots/26.png" alt="">

### webhooks to trigger pipeline automatically 

<img src="./images screenshots/27.png" alt="">
<img src="./images screenshots/28.png" alt="">



 


