Configurando jenkins

Lo primero crea las estancia

1. Creamos los script de provisión. 

2. Ejectamos el primer script, despues se genera la clave para despues pegarla en githud dentro ssh key s

3. Reiniciamos la máquina y ejecutamos el segundo script.
Una vez ejecutado, en la consola nos mostrará la clave de jenkins que nos ha generado.

4. En nuestra instancia de AWS, tendremos que coger la ip pública y despues pegarla en nun navegador, para que se genere el servidor utilizando para ello la anterior clave que nos genera la terminal.

5. Una vez creado el servidor jenkins, tenemos que instalar los siguientes plugin:


Docker, Docker plugin, Docker Pipeline, AnsiColor, Git, GitHub Plugin, Build Timeout, Job DSL, SSH Agent Plugin, Pipeline, Timestamper, Folders
   

6. Configurar la contraseña de jenkins para conectar con los agentes

7. Crear el papeline con las variables de entorno en la que meteremos las credenciales de aws. 
