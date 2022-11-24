
Antes de empezar

Tenemos que tener instalados los siguientes paquetes
- gnupg, 
- software-properties-common
- curl.
 
Hay que acordarse de tener instalado Terraform 

Mekefile

Es un archivo de configuración que lo que conseguimoses que se cree automaticamente el bucket s3 aws con terraform. Simplemente escribiendo make en la consola.


Para que Terraform pueda crear el bucket en AWS, se tienen que configurar las [credenciales en AWS](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html),  para acceder a nuestra cuenta en el directorio   "~/.aws/credentials".




