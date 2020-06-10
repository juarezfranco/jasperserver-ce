# Introdução
    - Imagem base [https://github.com/agois-inc/docker-jasperserver-ce](https://github.com/agois-inc/docker-jasperserver-ce)
    - Instalado linguagem pt-BR
    - Configurado para sql iniciar com `WITH`

# Executar

````
docker run \
    -e DB_HOST=172.17.0.1 \
    -e DB_USER=postgres \
    -e DB_PASSWORD="postgres" \
    -e DB_PORT=5432 \
    -e DB_NAME=jasperserver \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD="postgres" \
    --name jasperserver \
    --restart=always \
    -p 8080:8080 \
    -d juarezfranco/jasperserver-ce:6.4.2
````
