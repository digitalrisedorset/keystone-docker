This docker install is a follow-up from the article:
https://keystonejs.com/docs/walkthroughs/lesson-1

docker build -t keystone101 .
docker run -p 3000:3000 keystone101
yarn keystone prisma db push

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)