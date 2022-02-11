#genetrate inputFile
./gencsv.sh >> inputFile

#generate docker image
docker build -t infracloudio/csvserver:latest .

#run docker image
docker run -d -p 9393:9300 infracloudio/csvserver:latest

#stop all running container
docker stop `docker ps -aq`

#delete all the running container
docker rm `docker ps -aq`

STEP 2

#user docker compose file to start container
docker compose up -d

#stop all running container
docker stop `docker ps -aq`

#delete all the running container
docker rm `docker ps -aq`


#for step 3 please move to part-3 directory and follow README.md
