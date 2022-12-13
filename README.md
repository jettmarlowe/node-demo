# node-demo
Demo app for node

to run this package,
1. Clone this repo
2. Open your terminal and navigate to the directory `node-demo` where you have the source files cloned (this directory will contain the file `package.json`)
3. Run `npm install` to install the dependencies
4. Run `npm start` to spin up the web server
5. Open your browser and navigate to http://localhost:3000


# Assignment:
1. Dockerize this application by using a simple Dockerfile
2. Make sure that you are able to get the application running in docker
3. Change the dockerfile to expose this application on port 8888 on your machine (ie, You should be able to access the application on http://localhost:8888) 
4. Note to hackers: Do not change the port in https://github.com/sreepathy/node-demo/blob/main/index.js, this is not a coding competition![image](https://user-images.githubusercontent.com/6497933/206645145-2beb32a6-c561-429e-b46d-f31017d7ea79.png).


# Build the Docker Image
```bash
docker build . -t jettmarlowe/node-web-app
# make sure it was built
docker images
```

# Run the Docker Image
```bash
docker run -p 8888:3000 -d jettmarlowe/node-web-app

# make sure it is running
docker ps

docker logs <container-name>
```

# Test it
```bash
# in browser, navigate to http://localhost:8888/
```

# Shut it down
```bash
docker stop <container_name>
```


# References
* https://nodejs.org/en/docs/guides/nodejs-docker-webapp/