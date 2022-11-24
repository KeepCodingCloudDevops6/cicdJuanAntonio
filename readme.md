# Juan Antonio

## Inicio de la práctica.

Lo que conseguimos con está practica es poder automatizar un bucket creado en amazon web service, utilizando para ello dos aplicaciones: Jenkins y githad action. Ambas son herramientas de ci/cd

En este caso, la empresa "ACME" ( quiere empezar a probar la nube), para despues migrar toda su infraestructura hacía ella por lo que vamos a crear de manera totalmente automatizada unidades de almacenamiento en amazon web services

Los requerimentos que nos ha dado ACME son los siguientes: Acme es como se donomina a una empresa inventada

Quieren una unidad almacenamiento que se llamará acme-storage, será un bucket S3 de AWS.
Quieren que el flujo de despliegue sea "Continuous Delivery" en la rama main, es decir, un administrador validará el comando de puesta en producción de la infraestructura.
Sin embargo, en otras ramas distintas de main, el despliegue será "Continuous Deployment" y no habrá aprobación manual, será totalmente automático.
Los desarrolladores de ACME han de poder hacer el despliegue también desde sus máquinas.
Quieren que las credenciales para desplegar nunca estén guardadas en el código.
Además ACME también quiere revisar cada 10 minutos que el contenido que hay en la unidad de almacenamiento no supera los 20MiB. Si esto pasa, se vaciará de manera automatizada.
ACME lleva usando Jenkins mucho tiempo pero está actualmente abriéndose a probar nuevas teconologías con menor coste de gestión como Github Actions. Es por esto que también se requiere un pipeline de Github actions para el despliegue de la unidad de almacenamiento, de modo que ACME pueda comparar ambas tecnologías.


En este proyecto se encuentran los siguientes entregables:

- Dockerfile: en esta carpeta nos econtramos:
    base.Dockerfile2 y t.Dockerfile: Imagenes de docker que sirven para poder desplegar los agentes de jenkins 

- Github\Workflows, necesario para desplegar en AWS.

- Carpeta Jenkins, en la que encontraremos ficheros como jenkinsfile, que sirven para crear la base de datos

- Makefile, Con este makefile conseguimos un despliegue automatico de bucket s3 de amazon web service

- Carpeta de Terraform, con dos archivos main.tf y provider,tf, que son archivos de terraform para que a sí el make puede crear el bucket automaticamente

- Jobdsl,  correrá Jenkins para crear el job de despliegue

Pasos a seguir, para poder desarrollar la practica:


1- Lo primer de todos, tenemos que tener creado un Bucket S3 en AWS.

2- Crear los dos archivos de terraform main.tf y provider.tf

3- Creación del makefile para que se pueda crar automaticamente el bucket, simplemente escribiendo make en nuestro terminal.

4- Jenkins: Este apartado nos sirve para la creación de la base de datos. He creado un reacme.


5 Githud/workflows Encontramos terraform.yaml, un pipeline para implementar AWS S3 en GitHubActions.



