
# Build the image

docker build -t pelicanblog .

# Run the container

 docker run -it --name pelicanblog --rm --volume ${PWD}:/usr/src/app --net=host pelicanblog:latest sh