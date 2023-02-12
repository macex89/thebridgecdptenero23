**Ramp-up: Módulo 3![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.001.png)**

**Administración de SS.OO**

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.002.png)

## objetivos Administración de Sistemas Operativos![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.003.png)
- Linux terminal
## Ubuntu (Debian) CentOS (Red Hat)
## Administración de Sistemas Operativos![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.003.png)
- Linux terminal
## 03 Ubuntu (Debian)
## CentOS (Red Hat)

3![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.004.png)
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal

Monitorización de recursos en Linux
## Monitorización de sistemas
- Antes de tomar decisiones es necesario conocer qué está sucediendo en nuestros sistemas.
- Para ello, vamos a utilizar una serie de herramientas que permiten obtener métricas sobre:
  - Uso de RAM
  - Cantidad de almacenamiento ocupada
  - Uso de CPU
  - Ancho de banda.
- La monitorización nos ayuda principalmente en:
  - Saber si se necesitan actualizaciones
  - Conocer si el servidor está infrautilizado.
  - Identificar problemas o procesos huérfanos en ejecución que consumen recursos
## Monitorización de sistemas
- Esos datos recopilados son enviados al terminal. Pero existen aplicaciones que nos ayudan a visualizar mejor tendencias, problemas:

6
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Monitorización de sistemas
- Esos datos recopilados son enviados al terminal. Pero existen aplicaciones que nos ayudan a visualizar mejor tendencias, problemas:

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.006.png) 7


3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Monitorización de sistemas
- En esta primera parte veremos los comandos a utilizar para exponer esos datos en terminal. Gran parte de la información bruta que nos da el sistema se encuentra en el directorio /proc

●

***cd /proc***

***ls***

- Los archivos allí presentes son virtuales en el sentido de que no son persistentes ya que se crean dinámicamente con cada inicio del sistema en repuesta a “eventos” del sistema.
  - **meminfo** por ejemplo, contiene información sobre la capacidad y los niveles de uso de la memoria el sistema.

***less meminfo***

- **cpuinfo**, contiene información sobre la capacidad y las especificaciones de los núcleos disponibles en el sistema

***less cpuinfo***
## Monitorización de sistemas
- Sin embargo, para poder tener una visión general y en tiempo real de lo que ocurre en el sistema, podemos lanzar:

***top***
## Monitorización de sistemas
- ***top***
  - Nos muestra en tiempo real datos de porcentaje de uso de CPU, Memoria, de cada uno de los comandos que están realizando operaciones en la máquina.
  - Es similar al Administrador de Tareas de Windows, pero en pantallas negras.
  - Es útil cuando notamos ralentización y saber el culpable.
- **Nota**: Hay que decir que el “sospechoso habitual” es la falta de disponibilidad de la memoria del sistema, lo cual acaba en procesos de **swapeo** que, a pesar de que Linux gestiona de manera bastante eficiente el problema, tirar de disco para disponer de más memoria siempre acaba mal.
## Monitorización de sistemas
- Otro comando con el que podemos ver qué ***cantidad de memoria libre*** tenemos es: ***free -h***
  - Nos aparecerán resultados en Gigas y en Megas. En caso de que el valor de Available se acerque muy frecuentemente a 0, comenzarán los problemas
- Respecto ***al almacenamiento***, el comando que nos puede mostrar información sobre el usado: ***df***
  - O bien, añadiremos comandos como estos, para evitar datos sobre particiones virtuales, etc. y darnos valores legibles:

***df -ht ext4***
## Monitorización de sistemas
- Respecto al ancho de banda, existe varias herramientas, incluso desde un servicio web. Aquí vamos a instalar iftop,

***sudo apt update sudo apt install iftop***

- **iftop** necesita una interfaz de red a estudiar. Para ello, la podemos conseguir con **ifconfig** o con **ip addr**
- Una vez conseguida es llamar a iftop

***sudo iftop -i enp0s8***

●

- Parece que no hay datos, pero en sistemas muy ocupados, esto ardería, mostrando direcciones de origen y destino asociadas a solicitudes.

Si hubiera procesos que realizaran llamadas pesadas de datos a un servidor remoto, se mostraría

●

13
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Gestión de procesos del sistema

14
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Gestión de procesos del sistema
- Los procesos pueden ser una amenaza mayor que un ataque de zombies.

De hecho es necesario un control exhaustivo de todos los procesos que se están ejecutando para conocer si ●

se extralimitan en sus funciones.

- Existe un comando importante que es: ***ps***
- Aunque tal vez es mejor teclear: ***ps aux | less***

***ps aux | wc***

***ps aux | grep sshd***

- Ya que este muestra cualquier proceso activo en el sistema. 
## Gestión de procesos del sistema
- Si advertimos que hay algo que no anda bien, podríamos buscar en el registro de log del sistema.

Muchas distribuciones de Linux utilizan el sistema de registro diario journald, y aunque no sigue la filosofía de ●

todo en fichero de Unix, ya que la única forma de ver los logs es a través del comando jounalctl, es bastante útil.

***journalctl --since "10 minutes ago“***

- La ventaja de este journald es que todo está en una pantalla.

Sin embargo, si lo que queremos es el modo tradicional, la carpeta donde se encuentra todo es /var/log •

***cd /var/log***

***ls***

- Ahí guarda **syslogd** todo lo que va ocurriendo al sistema, eso si, en ficheros separados. 

El fichero más actual será el que no tiene número, incrementándose a medida que son más antiguos. Las •

entradas más recientes también se guardan en **syslog**
## Gestión de procesos del sistema
- Otra herramienta para la monitorización de los procesos en ejecución es **dmesg**

Técnicamente, administra los mensajes provenientes del **kernel ring buffer,** una estructura de datos de 

●

tamaño fijo que registra los mensajes de arranque del núcleo, así como cualquier mensaje en vivo del kernel. Como cuando se agrega un nuevo dispositivo USB, etc.

dmesg

●

- Por ejemplo, aparecen ciertas trazas de una negación de acceso al kernel por apparmor, está relacionado con algún proceso. 
  - Si este proceso no es imprescindible podríamos terminarlo.

17
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Gestión de procesos del sistema
- **Terminación de procesos.**
  - Para no ser tan drásticos, vamos a crear un proceso ficticio que lance texto al “agujero negro” o lo que es lo mismo a /dev/null (Se le llama así porque todo lo que acaba en esa carpeta, desaparece)

***yes > /dev/null &***

- Hemos colocado el & al final para que el proceso se quede en background. El comando yes, manda caracteres y
- Si miramos los procesos con **ps**, obtenemos:

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.007.png) 17


3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Gestión de procesos del sistema
- **Terminación de procesos.**
  - Con dicha información, si queremos acabar con el proceso, basta con teclear kill y el número de proceso que aparece:
    - ***kill 119608***
  - Al hacer de nuevo ps

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.008.png)
## Gestión de procesos del sistema
- **Terminación de procesos.**
  - Existe otra forma de hacer lo mismo y que tal vez sea más eficaz
    - ***killall yes***
  - La diferencia con **kill** es que **killall** eliminará todas las instancias de **yes** que se ejecuten en el sistema, no solo la que está nombrada por el pid.
  - Esta última forma puede ser muy rápida para no tener que ir una a una eliminando cada instancia, pero hay que tener cuidado de no pasarnos de frenada y que borremos lo que no queríamos borrar.
## Gestión de procesos del sistema
- **Terminación de procesos.**
  - Ahora vamos a ver, cómo no solo se mata un proceso sino también como se evita que vuelva de entre los muertos la próxima vez que iniciemos un sistema.
  - Supongamos que instalamos Docker:
    - ***sudo apt update***
    - ***sudo apt install apt-transport-https ca-certificates curl software-properties-common***
    - ***curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -***
    - ***sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable“***

***sudo apt update***

●

***apt-cache policy docker-ce***

●

***sudo apt install docker-ce***

●
## Gestión de procesos del sistema
- **Terminación de procesos.**
  - Si hacemos:

***sudo systemctl status docker*** ●
## Gestión de procesos del sistema
- **Terminación de procesos.**
  - Ahora, tenemos encendido el servicio Docker y si no hacemos nada, por mucho que ahora lo matemos, cuando se reinicie la máquina volverá a aparecer. Esto es así, porque **Enabled es True**
  - Ahora podríamos para el servicio Docker con: ***sudo systemctl stop docker***
  - Y si ahora no queremos que se inicie de nuevo al reiniciar la máquina ***sudo systemctl disabled docker***
  - Si queremos volver a iniciar el servicio Docker: ***sudo systemctl start docker***
## Gestión de procesos del sistema
- **Gestión de la prioridad de los procesos**
  - Linux, como todos los SO modernos, puede ejecutar múltiples procesos a la vez.
  - Pero estos procesos no tienen por qué ser iguales a la hora de acceder a los recursos del sistema.
  - Para poder establecer quién tiene más prioridad a la hora de acceder a los recursos, utilizaremos el comando nice.
  - Por ejemplo, vamos a abrir dos pestañas con el botón que se encuentra en la parte superior izquierda del  terminal. En la primera pestaña ejecutamos otra vez yes

***yes > /dev/null &***

- En la segunda: ***top***
## Gestión de procesos del sistema
- **Gestión de la prioridad de los procesos**
## Gestión de procesos del sistema
- **Gestión de la prioridad de los procesos**
  - Vemos que su valor NI es 0, que es el  ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.009.png)valor por defecto, ni mucha ni poca  prioridad. 
  - Ahora volvemos a la primera pestaña  y ejecutaremos: 

***kill 137338*** 

● 

***nice -19 yes > /dev/null &*** 

● 

- El proceso con mayor NI se queda  arriba. 
- **-19** es el mayor y **--20** el menor 
## Gestión de procesos del sistema
- **Gestión de la prioridad de los procesos**

Podemos cambiar este valor directamente con el **pid** del proceso y **renice** ●

***sudo renice 10 -p 137776***

28
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Gestión de usuarios en Linux

29
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Gestión de usuarios en Linux
- El control de usuarios y grupos es fundamental en un SO.

Con Linux podremos seguir la teoría del **“mínimo privilegio**”: Es decir, *que cada usuario debe tener los* ●

*mínimos privilegios que les permitan cumplir su trabajo.*

- Para que esta administración de usuario no sea un suplicio, los usuario se agrupan para conceder los permisos a los grupos y los usuarios pertenezcan a un grupo.
- Vamos a ver lo siguiente:
  - En qué lugar del sistema de fichero se almacenan los datos de cuentas
  - Como dar control de acceso a los usuarios
  - Medir la actividad de las cuentas, así como administrar las cuentas y también los grupos.
## Gestión de usuarios en Linux
- **Usuarios**
  - Linux proporciona herramientas y procesos que permiten minimizar los riesgos de que muchos usuarios tengan acceso al sistema.
  - Hay ciertas buenas prácticas:
    - **Nunca** se debe iniciar sesión con privilegios de **administrador o root**. ¿Por qué?
    - Se deben asignar **cuentas con autenticación única** para cada usuario
    - Seguir **la regla del mínimo privilegio posible** para cada uno de los usuarios.
    - Usar sólo los privilegios de administración a través de **sudo**. Así, si por algún motivo queremos acceder a algún recurso protegido, (**less /etc/shadow**) por ejemplo, pedirá que se haga a través de sudo. 
## Gestión de usuarios en Linux
- **Usuarios**
  - Otro fichero similar es **/etc/passwd**, donde se guardan los id de usuario y grupo de todos los usuarios y cuentas de usuario del sistema. Si aparece una x es que existe una contraseña en el archivo instantáneo.
  - También es importante **/etc/group**, donde se guardan el nombre del grupo y el ID.
    - Por ejemplo, vemos que nuestro **usuario** es parte del grupo **sudo**, que le permite adoptar privilegios de administrador.
  - Otra forma de comprobar que permisos están asignados a un determinado usuario es escribir: **id usuario**
  - Podemos ver también qué usuario están conectados con el comando.

**who**

Y si sólo ponemos **w** tendremos incluso información sobre lo que están haciendo. ●
## Gestión de usuarios en Linux
- **Usuarios**

33
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal

- Otro comando interesante es el comienzo del mes.

***last | less***

●

last. Que nos permite ver una lista de todos los inicios de sesión desde 


3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Gestión de usuarios en Linux
- **Creación de Usuarios y Grupos**
  - El comando que nos permite crear un usuario nuevo es useradd

***sudo useradd -m pepe***

- El parámetro **-m** le dice a Linux que cree un nuevo directorio en el árbol de directorios.
  - Inmediatamente tendríamos un nuevo directorio: ***cd /home/pepe***
  - En este directorio si hacemos ls -a ya aparecerían los ficheros ocultos que han venido desde otra carpeta llamada **/etc/skel** o carpeta de esqueleto.

***cd /etc/skel***

- Todo lo que haya en esa carpeta aparecerá en las nuevas cuentas creadas.
## Gestión de usuarios en Linux
- **Creación de Grupo y asignación de privilegios**
  - Un grupo ya hemos dicho que es un conjunto de usuarios que comparten ciertos privilegios.
  - La forma en la que se hace el proceso siempre es:
    - Primero asignar al grupo una serie de privilegios
    - Después asignar el usuario a ese grupo.
## Gestión de usuarios en Linux
- **Creación de Grupo y asignación de privilegios**
  - Vamos a suponer que tenemos una carpeta con fichero muy importantes. Como no soy muy avispado, la llamo /var/secretos

***sudo mkdir /var/secretos***

- Creamos el grupo, que como no quiero llamar la atención lo llamo ***sudo groupadd grupo\_secreto***
- A continuación digo que el propietario de la carpeta secretos es el grupo\_secreto ***sudo chown :grupo\_secreto /var/secretos***
## Gestión de usuarios en Linux
- **Creación de Grupo y asignación de privilegios**
  - Por último vamos a añadir a nuestro usuario Pepe al grupo: ***sudo usermod -a -G grupo\_secreto pepe***
    - **-a** significa agregar y **-G** grupo existente
  - Y ya solo falta asignar los permisos sobre la carpeta ***sudo chmod g+w /var/secretos***
  - Si ahora queremos trabajar como si fuéramos el usuario pepe, bastaría con escribir el comando que cambia de usuario (superusuario):

***su pepe***

- Nos pediría la nueva contraseña y ya estaríamos trabajando como el usuario pepe, con sus privilegios

37
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Seguridad en servidores Linux

38
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Seguridad en Servidores Linux
- Cuando se tienen que administrar servidores que harán alguna tarea, no podemos descuidar la seguridad.
- Si no se incorpora seguridad en cada capa de la implementación. El problema está servido.
- Se van a tratar temas como:
  - Permisos
  - Seguridad en actualizaciones
  - Gestión de puertos de red
  - Encriptación de datos en reposo y en tránsito.
## Seguridad en Servidores Linux
- **Más sobre permisos**

En Linux, cada objeto, ya sea un archivo o directorio tiene asociados unos metadatos únicos. ●

Estos metadatos se muestran cuando realizamos ls -l (forma larga)

●

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.010.png)

- La aparición de un guión (fichero) o de una letra d (directorio) al principio de la definición  de los permisos es importante.
## Seguridad en Servidores Linux
- **Más sobre permisos**
  - El fichero **data.txt** tiene como propietario a Jane.
  - Sin embargo, el **directorio** ha sido creado por root (ya que se usó sudo) pero el grupo es grupo\_secreto.

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.011.png)

- Si quisiéramos que el propietario no fuera root, sino usuario, tendríamos que utilizar chown: ***sudo chown usuario:secret\_group /var/secret***
## Seguridad en Servidores Linux
- **Más sobre permisos**
  - Los permisos se agrupan de la siguiente manera: La primera letra que dice si es un directorio, un fichero o un enlace. A continuación 3 grupos de tres letras. Primero los permisos de **propietario**, el segundo de **grupo del propietario** y el tercero de **otros usuarios y grupos** 

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.012.png)
## Gestión de usuarios en Linux
- **Más sobre permisos**
  - Chmod es el comando que nos permite cambiar los permisos de un directorio o de un fichero: Se pueden usar combinaciones de letras o números

●

- Recordamos las letras de chmod

**g** indica que se refiere a permisos de grupo

●

**o** indica que se refiere a permisos de otros

●

**u** (o nada) indica que se refiere a permisos de otros

●

**+** ó **-** indica añadir o revocar permisos respectivamente

●

**w** es permisos de escritura

●

**r**son permiso de sólo lectura

●

**x** permisos de ejecución

●
## Seguridad en Servidores Linux
- **Más sobre permisos**
  - En caso de usar números, lo que importa es la suma. Es decir cada número indica a qué elemento se refiere (propietario, grupo, otros). el número de 0 al 7 se puede deducir de la tabla siguiente.
  - Así **chmod 664 fichero.txt** indica Lectura y Escritura para usuario y grupo, pero no para otros.
  - ó **chmod go-w+x mydir** indica Ejecución para grupo y otros, pero le quita Escritura
  - ó **chmod u=rwx,go= cmd** indica que sólo el usuario tiene todos los permisos sobre el comando cmd.
## Seguridad en Servidores Linux
- **Más sobre permisos**
  - Hay una serie de permisos especiales:
    - **sticky bit**
      - Es un permiso creado inicialmente para ficheros y directorios, pero que actualmente se utiliza en directorios. 
      - Cuando se asigna significa que los elementos que hay en ese directorio sólo pueden ser renombrados o borrados por su propietario o bien por root.
      - El resto de usuarios, aunque tengan permisos de lectura o  escritura, los podrán leer o escribir pero no borrar.
      - Se puede otorgar así:

chmod 1775 test

●

chmod +t /test

●

- En los metadatos aparecerá como una t.
## Seguridad en Servidores Linux
- **Más sobre permisos**
  - Hay una serie de permisos especiales:

**SUID**

●

- Se activa sobre ficheros y significa que el que lo ejecute va a tener los mismos permisos que el que creó el archivo. Hay que utilizarlo con cuidado.
- En los metadata aparece como una s

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.013.png)
## Seguridad en Servidores Linux
- **Más sobre permisos**
  - Hay una serie de permisos especiales:
    - **SGID**
      - Es lo mismo que SUID pero a nivel de grupo. Es decir que todo archivo que tenga activo el SGID, al ser ejecutado, tendrá los privilegios del grupo al que pertenece.
      - Es útil si queremos configurar un directorio para colaborar diferentes usuarios. (directorios compartidos)

***chmod g+s "directorio“***

***chmod 2555 "fichero"***
## Seguridad en Servidores Linux
- **Enlaces simbólicos**

A veces es posible que queramos acceder a un mismo archivo desde varias ubicaciones. ●

En estos casos tenemos dos alternativas

●

- Copiar el fichero a todas las ubicaciones, pero cuando se modifique tendremos un problema ya que quedarán desactualizados.
- Crear **enlaces simbólicos** en todas las ubicacicones.
- Podríamos entender estos enlaces como si fueran equivalentes (salvando las distancias) a los enlaces directos de Windows.
## Seguridad en Servidores Linux
- **Enlaces simbólicos**
  - Por ejemplo, vamos a crear un script que sólo haga ls sobre el lugar donde se ejecute.
    - ***nano /home/usuario/miscript.sh***

***#!/bin/bash ls***

- Ahora para crear el enlace simbólico utilizaremos:
  - ***sudo ln -s /home/usuario/miscript.sh /var/secretos***
- Y ahora aparecería el enlace

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.014.png)
## Seguridad en Servidores Linux
- **Hardening de servidores**
  - El **hardening** del sistema se refiere a las acciones realizadas para reducir la superficie de ataque, asegurando las configuraciones de los componentes del sistema.
  - En un mundo abierto a redes públicas, es muy importante minimizar los riesgos en la mayor medida posible. 
  - Vamos a ver una serie de buenas prácticas que permitirán reducir ese riesgo, no al cero, porque es imposible, pero si hasta un punto óptimo.
    - Actualizaciones
    - Seguridad en puertos
## Seguridad en Servidores Linux
- **Hardening de servidores: Actualizaciones**
  - Cada una de las distribuciones de Linux tienen equipos que trabajan 24x7 para mantener un sistema de actualización y mejora de los paquetes que conforman el sistema.
  - Si se detecta una vulnerabilidad, inmediatamente la corrigen en el menor tiempo posible.

Pero de nada sirve si los usuarios no mantienen actualizados los paquetes ni los sistemas por lo que ●

es la responsabilidad del usuario mantener una consecuente actualización periódica a través del Administrador de paquetes.

- Algunas páginas interesantes al respecto son: <https://wiki.debian.org/Teams/Dpkg>

[●](https://wiki.debian.org/Teams/Dpkg)

[https://usn.Ubuntu.com/](https://usn.ubuntu.com/)

[●](https://usn.ubuntu.com/)
## Seguridad en Servidores Linux
- **Hardening de servidores: Actualizaciones**
  - Para actualizar todo el software es necesario ejecutar regularmente dos instrucciones clave: ***sudo apt update sudo apt upgrade***
  - En CentOS podemos utilizar simplemente. ***yum update***
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**

Otro punto delicado son los puertos de red.

●

- Un **puerto de red es** un número entre 0 y 65535 que puede ser interpretado por un servidor para dirigir las solicitudes entrantes
- Permiten que se pueda utilizar una sola dirección IP para múltiples servicios

Así por ejemplo, dependiendo de qué puerto elijamos (hay algunos asignados por convención) 

●

podemos acceder a distintos servicios de mi servidor aunque éste tenga una IP muy determinada.

53
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.015.png) 52


3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**
- Pero al igual que nosotros podemos indicar el puerto, también lo pueden indicar aquellos que se acercan a nuestro servidor con mala fe. ¿Cómo podemos evitarlo?
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**
- **Service Hardening:**
  - La primera es la forma en la que se configuran sus servicios.
    - Se podría restringir el acceso SSH solo a aquellos con claves válidas.
- **Port Control:**

O lo que es lo mismo, cerrar los puertos no utilizados lo cual reducirá las posibilidades del 

●

ataque.

Pero los puertos en realidad ni se abren ni se cierran, lo que se tiene que hacer es que no haya ●

un servicio escuchando por ese puerto si no se quiere utilizar. *Un ejemplo con Apache: Si no se quiere utilizar el puerto 80, pues no instalemos un servidor Apache si no lo necesitamos y así se ignorarán las solicitudes a dicho puerto.*

- **Firewall rules:**

Un firewall bien diseñado, ya sea físico como un Cisco o un Juniper, o bien un software open 

●

source como **iptables** que se puede ejecutar en un ordenador normal.
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**
- **Firewall rules:**

Su misión es bloquear paquetes basándose en unas reglas que define el administrador, como ●

por ejemplo orígenes no deseados, o por número de puerto asociado.
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**
- Vamos a comenzar, utilizando una herramienta que nos diga quien escucha sobre qué puertos para que se pueda apagar si no me conviene: nmap
- Esta herramienta es compleja y poderosa, bien usada es de gran ayuda, mal usada es un arma para descubrir lugares vulnerables y aprovecharlos.

***nmap -v -sT localhost***

- **-v** por verbose
- **-sT** por utilizar el protocolo tcp para el escaneo
- Nos permite localizar los puertos abiertos y por qué servicio.

59![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.016.png)
3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.017.png) 57![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.018.png)


3. Linux Ubuntu-CentOS ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal
## Seguridad en Servidores Linux
- **Hardening de servidores: Puertos**
- Si ahora no quisiéramos que se aceptaran solicitudes por el puerto 80 ejecutaríamos una vieja conocida:

***sudo systemctl disable apache2***
## Seguridad en Servidores Linux
- **Hardening de servidores: Firewall**

A la hora de crear reglas de firewall, en Ubuntu existe un aliado imprescindible: **UFW**

●

**UFW, o Uncomplicated Firewall**, es una interfaz de gestión de **firewall simplificada** que oculta la ●

complejidad de las tecnologías de filtrado de paquetes de nivel inferior, como **iptables** y **nftables**.

- Como requisito previo, y aunque UFW ya viene instalado por defecto, podríamos instalarlo con: ***sudo apt install ufw2***
- En  principio lo que sigue está preparado para IPv4, pero si el servidor Ubuntu tiene IPv6 habilitado, lo único que hay que hacer es editar un fichero:

***sudo nano /etc/default/ufw***

- En ese fichero escribiremos: IPV6=yes
## Seguridad en Servidores Linux
- **Hardening de servidores: Firewall**
- Como buena práctica se puede marcar los valores predeterminados de UFW que deben ser Denegar todo el tráfico entrante y Permitir todo el tráfico saliente:

***sudo ufw default deny incoming***

***sudo ufw default allow outgoing***

- Una vez hecho esto hay que habilitar las conexiones SSH, para ello creamos la regla: ***sudo ufw allow ssh***

ó

***sudo ufw allow 22***

- Y ahora para habilitar ufw: ***sudo ufw enable***
## Seguridad en Servidores Linux
- **Hardening de servidores: Firewall**
- Tras habilitar UFW, recibiremos una advertencia que indicará que el comando puede interrumpir las conexiones SSH existentes. Ya configuramos una regla de firewall que permite conexiones SSH. Debería ser posible continuar sin inconvenientes. Respondermos a la solicitud con **y**
- Para comprobar qué reglas se han configurado: ***sudo ufw status verbose***
- Se podrían configurar reglas para otros puertos como:
  - HTTP en el puerto 80, que es lo que utilizan los servidores web no cifrados, con ***sudo ufw allow http*** o ***sudo ufw allow 80***
  - HTTPS en el puerto 443, que es lo que utilizan los servidores web cifrados, con ***sudo ufw allow https*** o ***sudo ufw allow 443***
## Seguridad en Servidores Linux
- **Hardening de servidores: Firewall**
- También se pueden elaborar reglas que se apliquen a un intervalo de puertos:
  - ***sudo ufw allow 6000:6007/tcp***
  - ***sudo ufw allow 6000:6007/udp***
- O especificar direcciones IP específicas: ***sudo ufw allow from 203.0.113.4***

●

- También se puede unir IP y Puerto:
  - ***sudo ufw allow from 203.0.113.4 to any port 22***
- Si desea permitir una subred de direcciones IP, se puede utilizando la notación CIDR para especificar una máscara de red:
  - ***sudo ufw allow from 203.0.113.0/24***
## Seguridad en Servidores Linux
- **Hardening de servidores: Firewall**
- Al igual que hemos creado una regla permitiendo el tráfico, la podemos hacer denegando el tráfico. Solo habría que cambiar allow por deny.
- De todos modo, de forma predeterminada todo el tráfico entrante está denegado, lo que simplifica y mucho.
- ***Eliminar Reglas***
  - Existen dos maneras diferentes de especificar las reglas que se eliminarán: por número de regla

●

por regla real.

●
## Seguridad en Servidores Linux
- **Hardening de servidores: Firewall**
  - **Eliminación por número de regla**
    - Primero mostraremos todas las reglas con un número:
      - ***sudo ufw status numbered***
    - Si ahora queremos eliminar la número 2:
      - ***sudo ufw delete 2***
  - **Eliminación por regla real**

Se especifica la regla real

•

***sudo ufw delete allow http*** •

ó

- ***sudo ufw delete allow 80***
## Seguridad en Servidores Linux
- **Hardening de servidores: Firewall**
  - Por último, podemos deshabilitar el firewall con la instrucción:
    - ***sudo ufw disable***
  - Y si lo que queremos es eliminar todas las reglas de un plumazo para comenzar de 0:
    - ***sudo ufw reset***
## Seguridad en Servidores Linux
- **Hardening de servidores: Encriptación**
- Encriptar sirve para proteger nuestra información de “miradas indiscretas”

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.019.png)
## Seguridad en Servidores Linux
- **Hardening de servidores: Encriptación**

Los usuarios que sí puedan acceder a esa información pueden disponer de varios métodos: ●

- Par de claves
- Tokens de inicio de sesión
- Contraseña
- La encriptación se puede aplicar no al dispositivo completo, sino a la parte que contiene la información, como el disco.
- Algunas distribuciones como Ubuntu, permiten encriptar el disco en la instalación, aunque también se puede hacer después.
## Seguridad en Servidores Linux
- **Hardening de servidores: Encriptación**
## Seguridad en Servidores Linux
- **Hardening de servidores: Encriptación**
- Una herramienta muy habitual para estas encriptaciones es **ecryptfs**.
  - Se pueden encriptar ficheros o directorios, incluso se pueden cifrar volúmenes completos.
- Otro conocido en el mundo web son los certificados de cifrado SSL, o su sucesor TSL. Incluso hay organizaciones como **letsencrypt.org** que facilitan la adquisición de certificados. Este tipo de certificados se asocian al puerto 443.
## Seguridad en Servidores Linux
- **Hardening de servidores: Encriptación**
- ¿Cómo funciona la encriptación TSL?

Cuando en un navegador escribimos una dirección a un sitio web, buscará un certificado TSL en ●

el servidor que sea compatible con un certificado raíz instalado en el navegador.
## Seguridad en Servidores Linux
- **Hardening de servidores: Encriptación**
- ¿Cómo funciona la encriptación TSL?
  - Si el sitio tiene un certificado válido autorizado por una autoridad de certificación, se iniciará una sesión segura a través de la cual se cifrará toda la información entre el navegador y el servidor.
  - Así se evitará el ataque más conocido en este caso: Man in the middle. Es decir, un extraño que se pone a observar y cambiar la información que fluye entre cliente y servidor.
- En este enlace podríamos crear un certificado para un aplicación Apache que corre sobre una Ubuntu 20.

<https://certbot.eff.org/instructions?ws=apache&os=ubuntufocal>

La parte práctica de este tema la realizaremos cuando ya estemos en la parte Cloud ●

75
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%203%20Administracion%20de%20sistemas/Aspose.Words.4c39218b-e570-4061-98b5-27d9b36d45c1.005.png)

Linux Terminal

Administración de sistemas Linux

Hands On

Ejercicios Sistemas en Linux
76
