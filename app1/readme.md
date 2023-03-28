# SETUP THE JENKINS ENVIRONMENT 
## Download the Below Plugins in Jenkins.
1.Docker Pipeline Plugin

2.SSH_AGENT Plugin
>
# Add Credentials in Jenkins 
> ### 1.SSH Username and Private Key of the K8s cluster 
>>Manage Jenkins>Manage Jenkins> Credentials > Add Credentials > Select Below Options:
>>> Kind: SSH Username with private key
>>
>>>Scope: Global
>>
>>> ID: illusion
>>
>>> Description: Kubernetes cluter server private key and username.
>>
>>> Username: USERNAME of the machine where kubernetes cluster hosted.
>>
>>> Private Key: Paste the private key of the machine where kubernetes cluster hosted.
>>
>>> Passphrase: Include If any in the private key.
>
> ### 2. DockerHub Credentials
>> Manage Jenkins>Manage Jenkins> Credentials > Add Credentials > Select Below Options:
>>> Kind: Username with password
>>
>>> Scope: Global
>>
>>> Username: USERNME of dockerhub account. 
>>
>>> Password: PASSWORD of dockerhub account.
>>
>>> Description: DockerHub credentials.
>>
>>> ID: dockerhub
>
> ### 3. Add Kubernetes Server Username and IP as SECRET TEXT for SSH
>> Manage Jenkins>Manage Jenkins> Credentials > Add Credentials > Select Below Options:
>>> Kind: Secret text
>>
>>> Scope: Global
>>
>>> Secret: UserName@Kuberntes-Server-IP (For Instance, myusername@10.10.10.10)
>>
>>> ID: USER@KubeServer
>>
>>> Description: UserName@KuAberntes-Server-IP as secret text

## Setup The Pipeline
>> Create a Pipeline, select SCM:git and add bitbucket repository URL of this project.
>
>> Script Path: app1/Jenkinsfile

## Build The Pipeline
