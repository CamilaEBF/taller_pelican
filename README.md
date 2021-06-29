#Dockerfile

```
FROM python:3.9.5-alpine

WORKDIR /usr/src/app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8000
```
# Build the image // Crear la imagen

    docker build -t pelicanblog .

# Run the container // Ejecutar el container

     docker run -it --name pelicanblog --rm --volume ${PWD}:/usr/src/app -p 8080:8000 pelicanblog:latest sh

# Kickstart your site! // Iniciá el sitio!

Console output:

    /usr/src/app # pelican-quickstart
    Welcome to pelican-quickstart v4.6.0.

    This script will help you create a new Pelican-based website.

    Please answer the following questions so this script can generate the files
    needed by Pelican.


    > Where do you want to create your new web site? [.]
    > What will be the title of this web site? SYSARMY
    > Who will be the author of this web site? Sysarmy
    > What will be the default language of this web site? [en] es
    > Do you want to specify a URL prefix? e.g., https://example.com   (Y/n) n
    > Do you want to enable article pagination? (Y/n)
    > How many articles per page do you want? [10]
    > What is your time zone? [Europe/Paris] America/Buenos_Aires
    > Do you want to generate a tasks.py/Makefile to automate generation and publishing? (Y/n)
    > Do you want to upload your website using FTP? (y/N)
    > Do you want to upload your website using SSH? (y/N)
    > Do you want to upload your website using Dropbox? (y/N)
    > Do you want to upload your website using S3? (y/N)
    > Do you want to upload your website using Rackspace Cloud Files? (y/N)
    > Do you want to upload your website using GitHub Pages? (y/N)
    Done. Your new project is available at /usr/src/app

Next:
    /usr/src/app # pelican content

# Run the server // Iniciá el servidor

pelican --listen -b 0.0.0.0

# Now you can access it from your web browser // Ahora puedes acceder desde tu navegador

http://localhost:8080/