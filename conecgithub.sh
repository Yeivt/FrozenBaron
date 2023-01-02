#!/bin/bash
#Se establece la variable de entorno GITHUB_TOKEN con el token de acceso del usuario de github


#Se obtiene la lista de repositorios del usuario edgargonzalez y almacenarla en una varibale


repos_json=$(curl https://api.github.com/users/edgaregonzalez/repos)


#Mostramos la respuesta del api luego de la consulta
echo "$repos_jason"
sleep 2


#Se extraen los nombres de los repos y se almacenan en una lista
repos=$(echo "$repos_json" | jq -r '.[].name')


#Mostrar la lista de los nombres de repositorios
echo "$repos"
sleep 2


#Clonar los repositorio y iterar en ellos 
for repo in $repos; do
git clone https://github.com/edgaregonzalez/$repo.git
done

#Yeison T
