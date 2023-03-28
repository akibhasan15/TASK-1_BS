# Laravel project deployment on minikube with Jenkins CI/CD pipeline.
>Laravel projects project includes 2 laravel simple "hello" application, kubernetes deployment yaml, and jenkinsfile in a bitbucket  repository. 
>2 laravel applications are served based on api request, nginx proxy used to serve these 2 nodejs applications. 
>Applications are deployed in minikube multi-node cluster include one master and two worker nodes.
>App1 is forced in working node-1 and App2 in working node-2.
>
>>http://nodeip:30049/app1--->displays App1 
>
>>http://nodeip:30049/app2--->displays App2
>
>A docker-compose.yaml file in parent directory runs jenkins container.

>>http://localhost:8080--->Access Jenkins on any browser.

>In depth instructions are in readme.md of their respective application directory.

## INSTRUCTIONS TO RUN THE PROJECT 
>### SEQUENTIALLY APPLY THESE STEPS 
1. Run the  shell script /infra/config/ClusterConfiguration.sh in the minukube cluster server.
2. Deploy Both App1 and App2 in the minikube cluster using Jenkins CI/CD
3. Deploy all the yaml files from nginx  in minikube cluster.
4. How to set up jenkins pipeline   of these apps are in readme.md of respective app directory.


## DIRECTORY STRUCTURE
```
.
├── app1
│   ├── build
│   │   └── Dockerfile
│   ├── deploy
│   │   ├── app1.yaml
│   │   └── service.yaml
│   ├── Jenkinsfile
│   ├── readme.md
│   └── src
│       ├── app
│       ├── artisan
│       ├── bootstrap
│       ├── composer.json
│       ├── composer.lock
│       ├── config
│       ├── database
│       ├── .editorconfig
│       ├── .env.example
│       ├── .gitattributes
│       ├── .gitignore
│       ├── package.json
│       ├── phpunit.xml
│       ├── public
│       ├── README.md
│       ├── resources
│       ├── routes
│       ├── storage
│       ├── tests
│       └── vite.config.js
├── app2
│   ├── build
│   │   └── Dockerfile
│   ├── deploy
│   │   ├── app2.yaml
│   │   └── service.yaml
│   ├── Jenkinsfile
│   ├── readme.md
│   └── src
│       ├── app
│       ├── artisan
│       ├── bootstrap
│       ├── composer.json
│       ├── composer.lock
│       ├── config
│       ├── database
│       ├── .editorconfig
│       ├── .env.example
│       ├── .gitattributes
│       ├── .gitignore
│       ├── package.json
│       ├── phpunit.xml
│       ├── public
│       ├── README.md
│       ├── resources
│       ├── routes
│       ├── storage
│       ├── tests
│       └── vite.config.js
├── docker-compose.yaml
├── infra
│   ├── config
│   │   └── ClusterConfiguration.sh
│   └── readme.md
├── nginx
│   ├── deploy
│   │   ├── configmap.yaml
│   │   ├── nginx-deployment.yaml
│   │   └── service.yaml
│   └── readme.md
└── readme.md

```

