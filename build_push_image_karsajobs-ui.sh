#!/bin/sh

# membuat sebuah Docker image menggunakan Dockerfile dengan nama karsajobs-ui dan tag latest
docker build -t karsajobs-ui:latest .

# mengubah nama image agar sesuai dengan format Github Packages
docker tag karsajobs-ui:latest ghcr.io/filahaa/karsajobs-ui:latest

# login ke Github Packages
echo $TOKEN_GITHUB_PACKAGES | docker login ghcr.io -u filahaa --password-stdin

# mengunggah image ke Github Packages
docker push ghcr.io/filahaa/karsajobs-ui:latest