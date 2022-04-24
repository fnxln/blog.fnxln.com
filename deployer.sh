#!/bin/env bash

DATA=$(date)

#atualiza o repositorio local 
git pull origin main &&

optipng -o7 ./static/*.png 
optipng -o7 ./static/*.gif
optipng -o7 ./static/*/*.png
optipng -o7 ./static/*/*.png 

jpegoptim --size=10k ./static/*.jpg
jpegoptim --size=10k ./static/*.jpeg
jpegoptim --size=10k ./static/*/*.jpg
jpegoptim --size=10k ./static/*/*.jeg

# commita os assets publicos
git add . &&
git commit -m "new post ${DATA}" &&
git push origin main &&

