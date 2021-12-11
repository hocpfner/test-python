## Prueba test Python y connexion a DockerHub
ejecutar las github actions para generar la imagen y subirla a docke. Desde openshift hacer lo siguiente con el comando OC
```
oc new-app hocpfner/test-python:sha-6b4cf5f 
```
verificar en docker hub le tag de la imagen)

# asegurarse de tener cargadas las credenciales de docker hub en openshift con:
```
oc create secret docker-registry docker --docker-server=docker.io --docker-username=<username> --docker-password=<password> --docker-email=<email>
oc secrets link default docker --for=pull
oc new-app <username>/<image> --source-secret=docker
```
