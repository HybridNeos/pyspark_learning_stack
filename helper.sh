docker build -f image_build/Dockerfile image_build/ -t my/spark:3.4_gcp
docker system prune
docker-compose up