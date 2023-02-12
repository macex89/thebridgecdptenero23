**Ramp-up: Módulo 3![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.001.png)**

**Administración de SS.OO**

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.002.png)

## objetivos Administración de Sistemas Operativos![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.003.png)
- Linux terminal
## Ubuntu (Debian) CentOS (Red Hat)
## Administración de Sistemas Operativos![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.003.png)
- Linux terminal
## 03 Ubuntu (Debian)
## CentOS (Red Hat)

3![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.004.png)
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

Más sobre comandos en línea de Linux
## Más sobre comandos en línea 
- Cuando los comandos en línea aparecieron, no había nada más que ellos.
- Muchos años después, la razón por la cual se sigue utilizando a pesar de tener unas GUI maravillosas es 
  - Por eficiencia. (Por muy rápido que pinchemos botones, si lo tenemos que hacer 1000 veces, nos cansaremos)
  - Por automatización de infraestructura. (Podremos copiar y pegar codigo que cree infraestructuras)
- Al igual que hicimos con Powershell, ya que los comandos son muchos e incluso los argumentos que acepta cada uno pueden ser decenas, debemos comenzar sabiendo cómo poder acceder a ayuda.
## Más sobre comandos en línea 
- **Ayuda**
  - Como es obvio, podemos obtener ayuda en algunas páginas como:
    - <https://serverfault.com/questions/tagged/linux>
    - <https://stackoverflow.com/questions/tagged/linux>
  - Pero Linux también tiene sus propios modos de soporte incluidos.
    - **man**
      - El comando man nos permite preguntar por algún comando. 
      - La ayuda es extensa y con el espacio vamos cambiando de página
      - Con la tecla q salimos de man
      - Con la tecla h obtenemos más ayuda.

**info**

●

- Es posible que info no se encuentre el SO Linux

sudo apt update

sudo apt install info

- Para utilizar info, sólo tenemos que acceder y preguntarle dentro del programa.
## Más sobre comandos en línea 
- **Archivos ocultos**
  - En Linux, los archivos ocultos tienen en el primer carácter del nombre un punto.
  - Para poder ver todos los ficheros ocultos de un directorio podemos utilizar:

ls -a

- En nuestro directorio de usuario, hay un fichero oculto especial llamada **.bashrc** que tiene información de configuración de la sesión que tenemos iniciada. Aparte de poder colocar scripts que se realicen según qué opciones, es un buen lugar para definir variables de entorno que se apliquen a toda la sesión.
- Otro fichero que contiene información sobre nuestra sesión es **.profile**, donde, es posible que tenga una línea de script que le diga que si existe un fichero **.bashrc**, lo cargue y aplique la configuración.
  - También existe otro fichero llamado profile pero en /etc

less /etc/profile

donde encontraremos información relevante al sistema completo.
## Más sobre comandos en línea 
- **Asignaciones internas. ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.006.png)**
  - En el fichero /etc/passwd tenemos  una serie de datos asignados para  la sesión: 

cat /etc/passwd 

- Qué nos dice esa línea: 

Que al usuario se la asignado el  • 

id de **usuario 1000** y el de  **grupo** también **1000** 

Utiliza como ruta de inicio el  

• 

directorio /home/usuario 

Usa **/bin/bash** como shell 

• 

8
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Patrones de uso comunes en los comandos Linux

9
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Patrones de uso comunes 
- Muchos comandos en Linux, mantienen patrones comunes. Conocer estos patrones, nos puede ayudar a ser más rápidos en controlar los comandos.
1. Los comandos comienzan por su nombre.
1. Algunos pueden lanzarse con o sin argumentos  (como **ls**) pero son los menos. Casi siempre llevarán uno 
   1. varios argumentos comenzando por un guión medio (-)
1. Los argumentos se pueden agrupar tras un guión ( **ls -l -a**  à **ls -la**)
1. En casi todos los comandos se puede poner un argumento llamado **--all** que lanzará una versión con todos los argumentos.
1. Como norma, cuando se utilizan **--** suele ser palabra completa, cuando es **-** sólo una letra, distinguiéndose entre mayúsculas y minúsculas. Hay alguna excepción como por ejemplo **ip addr** ó **ip a**, que no lleva guiones.
1. Los espacios son considerados separadores, por lo que una instrucción como **touch mi fichero**, no creará un fichero vacío sino dos. Cuando queramos que el nombre tenga espacios, es necesario escribirlo entre comillas o bien que se escapen los espacios con la \: touch mi\ fichero

10
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Administración del sistema de archivos de Linux

11
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Administración del Sistema de archivos de Linux
- Como ya vimos, el directorio raíz de Linux es /, hay que denotar que es la barra inversa a la utilizada en las rutas de Windows.
- Siempre se empieza por una barra. Por ejemplo la dirección base donde comienza la sesión un usuario es /home/usuario.
  - Si no ponemos la barra delante, bash interpretará que nos referimos a un directorio que cuelga del directorio actual en el que nos encontramos.

cp fichero.dat otrodirectorio/

- Copia **fichero.dat** al directorio **otrodirectorio** que cuelga del actual.
- Hemos visto ya comandos como **cd, cp, mv, mkdir, ls, rm**, **rmdir**, así como la edición de ficheros a través de **touch, nano, gedit**, etc. Solo recordar que usar **touch** con un fichero ya creado, actualiza la fecha y la hora del archivo.
## Administración del Sistema de archivos de Linux
- También ya conocemos el uso de los Wildcard \*, ?, etc. Porque es el mismo uso que se da en otros comandos de terminal de Windows u otros sistemas.
- Por lo demás, 
  - Poner **../directorio1**, provoca que estemos haciendo referencia al padre de **directorio1.** También si escribimos **cd ..** subirá hasta el padre del directorio en el que nos encontremos.
  - Poner **un único punto con su espacio antes**, indica que queremos referenciar a la carpeta actual en la que nos encontramos, pero si vemos este ejemplo tendremos la respuesta:

**mv ../fichero\* .**

- Cuando utilicemos funciones de borrado como **rm** \* o **rmdir**, o **rm -rf**, hay que tener cuidado porque no hay una papelera de reciclaje de donde podamos deshacer la operación. Bash no la tiene.
- También hay que recordar que no se puede borrar un directorio que no esté vacío a no ser que se fuerce con **rm -rf**
## Administración del Sistema de archivos de Linux
- Otro tema importante en un sistema de archivos de Linux es la búsqueda. Esto es así, porque un equipo habitual puede tener más de 1 millón de archivos sin mucho esfuerzo.
- El principal comando para buscar por nombre es locate. Sin embargo en Ubuntu hay que instalarlo:
  - sudo apt install mlocate

locate adduser

- Nos dará una lista de ficheros, colocando al principio los que Bash cree que son la mejor búsqueda.
- Si queremos que la búsqueda aún sea más efectiva pasado un tiempo, es recomendable actualizar el índice: sudo updatedb
## Administración del Sistema de archivos de Linux
- Pero además de buscar a nivel de fichero, también es muy importante buscar dentro de los ficheros.

Los ficheros de trazas de logs que lanzan ciertos programas son muy interesantes de analizar para sacar ●

conclusiones sobre el funcionamiento.

- Por ejemplo podemos mostrar el contenido del fichero /etc/group que tiene los índice de grupo de todo lo que circula por esta sesión:

cat /etc/group

less /etc/group

- Pero si queremos, podremos filtrar cat /etc/group | grep usuario
- Y obtendremos sólo las líneas donde se encuentra la palabra usuario, y además las marcará en color rojo.

Si queremos que la salida se añada a un fichero, recordamos que **>>** añade al final de un fichero, pero **>** ●

destruye el viejo y lo vuelve a crear con el contenido añadido
## Administración del Sistema de archivos de Linux
- Otras herramientas para analizar un fichero pueden ser:
  - **head**: muestra las 10 primeras líneas de un fichero
  - **tail**: muestra las 10 últimas líneas de un fichero
- Si por ejemplo el fichero tiene algún carácter delimitador, podemos usar cut para acceder a algún valor en particular. En el ejemplo del fichero group, el delimitador son los : y como sabemos que el tercer campo es el valor del grupo, podríamos escribir lo siguiente para sacar los valores de esos id de grupo solamente:

cut -d: -f3 / etc/group

- -d: indica que el carácter : será el que busquemos como separador.
- -f3 indica que queremos el tercer campo.
- También se podría colocar el resultado anterior ordenado:

cut -d: -f3 / etc/group | sort -n -nr si lo queremos invertido
## Administración del Sistema de archivos de Linux
- Para conocer cuántas, líneas, palabras y caracteres tiene un fichero utilizaremos wc /etc/group
- Como antes hemos hablado de los redireccionamiento, ahora hay que tratar el resto de redireccionadores:
  - < sirve para indicar entrada de datos:

mysql -u root -p < mibasedatos.sql

- En cuanto al error estándar, por defecto se manda a la pantalla. Si queremos que se envíe a un fichero, habrá que indicarle el código de salida correspondiente al error estándar, el 2

wget [www.googllle.com ](http://www.googllle.com/)2>errorfile.txt
## Administración del Sistema de archivos de Linux
## Administración del Sistema de archivos de Linux
- **Compresión de archivos.**
  - La compresión de archivos es necesaria para la eficiencia. Esto es así, porque en los movimientos de archivos, **es más lento pasar los ficheros directamente a otra ubicación que comprimir primero y después mover un solo fichero**.
  - En Linux la forma más común es utilizar **tar**: Muchas veces aparecerá una doble extensión **.tar** y otra como **.gz**. La última indica que fue comprimido con el algoritmo **gzip**.
  - Ya hemos visto que para descomprimir:

tar xzf fichero.tar.gz

- Para comprimir haríamos lo siguiente:

tar czf nuevofichero.tar.gz carpeta\_a\_comprimir/
## Administración del Sistema de archivos de Linux
- **Compresión de archivos.**

Nota: Es importante comprobar que el fichero comprimido no está corrupto para estar seguro. ●

Otras formas de ficheros comprimidos puede ser .zip, utilizado por Windows:

●

unzip fichero.zip

- Para comprimir

zip otrofichero.zip \*

19
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Administración de periféricos en Linux

20
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Administración de periféricos en Linux
- Todos sabemos que la GUI de Linux tiene herramientas para administrar los periféricos.
## Administración de periféricos en Linux
- En el reconocimiento de problemas en los periféricos hay dos pasos:

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.007.png)
## Administración de periféricos en Linux
- Para el paso 1

Dispositivos USB: **lsusb** ●

Dispositivos PCI: **lspci** ●

Todo el hardware: **lshw** ●

- Para el paso 2
  - Podemos tener el caso de que no exista el módulo del kernel que controle el dispositivo, aunque este suele ser el caso más marginal.
  - Lo normal es que sí que esté instalado, pero no esté despierto. 
    - Estos ficheros están en la carpeta **/lib/modules** pero el módulo que quiere usar está condicionado por la versión del kernel de Linux que estemos utilizando.
    - Para saber qué versión se está utilizando podemos usar este comando

uname -r
## Administración de periféricos en Linux
- Para el paso 2
  - Y ahora podemos incluir los dos comandos en uno:

ls /lib/modules/ uname -r 

cd / lib/modules/ uname -r / kernel

- Si ahora quisiéramos trabajar con el sonido, tendremos que ir a la carpeta sound cd sound
- Podemos primero ver qué módulos están cargados con **lsmod**

lsmod | grep sound

- Debe aparecer ya en la lista, pero si no estuviera cargado: modprobe soundcore

24![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.008.png)
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Conectividad en Linux

25
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Conectividad en Linux
- Actualmente son muy escasas las máquinas que no accedan a algún tipo de red, ya sea interna o externa.
- Linux se creó pensando ya en la conectividad, por eso sacó ventaja rápidamente.

Para poder conectarse a una red, un dispositivo debe ser identificable por una dirección IP única. Ya vimos en ●

la parte de redes cómo funciona el redireccionamiento.
## Conectividad en Linux
- Pero cómo poder trabajar con Linux para conocer información sobre la conectividad del sistema. El primer paso es ver si tiene acceso a un enrutador de red de un tipo u otro.

●

ip route show

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.009.png)
## Conectividad en Linux
- Esto nos está diciendo que nuestra ruta predeterminada de la red es doble, una que va a 10.0.2.2 y luego la 192.168.0.1. Esto cuadra con las dos redes que incluimos a la hora de definir esta máquina virtual, la NAT y la interna. La NAT es el dispositivo **enp0s3** y  la interna en el dispositivo **enp0s8**
- Tras esto aparecen aquellas que tienen … proto kernel scope link src… y la ip siguiente es la dirección real de la máquina.

28![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.010.png)
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

- También podemos lanzar el comando 
- O ver sólo nuestras direcciones IP: 

dhclient ip addr

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.010.png)
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

- Esto siempre mostrará una IP local, 127.0.0.1 o localhost
- Luego mostrará las dos ips, tanto la de la red NAT y la de la interna.
- Al igual que ip addr, podemos utilizar **ifconfig** que es un poco más fácil de leer.
## Conectividad en Linux
- Otro comando muy importante es:

netstat -i

- Que nos permite ver estadísticas sobre transmisiones y recepciones.

netstat -l

Nos permite saber si hay o no puntos de entrada innecesarios e inseguros en el sistema. ●

- Equivalente a netstat puede ser:

ss -i
## Conectividad en Linux
- Se puede conocer el estado del servidor DNS a través del comando host <<nombre de dominio>>
  - El sistema responderá con la IP address
- Cuando no funciona el nombre de dominio, también podemos hacer ping sobre la dirección IP, para saber si lo que falla es el nombre de dominio, que tendrá que ver con la traducción del nombre de dominio a la Ip, o es la propia IP.

**ping**

- El fichero que gestiona estos nombres de dominio en algunas distribuciones es /etc/resolv.conf
## Conectividad en Linux

30![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.010.png)
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

- Podemos resolver con systemd systemd-resolve --status

para mostrar cómo se configuran las cosas actualmente para usted

31![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.010.png)
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

- En lo que muestra, la información clave aquí es la línea de DNS Servers que debe enumerar correctamente la dirección IP de los enrutadores.
- También se pueden crear manualmente los propios índices DNS. a través de la edición del fichero /etc/hosts, esto hará que anotemos en una misma línea, la IP y el nombre de dominio.
  - Esto lo trabajamos cuando creamos la red y lo volveremos a tratar cuando veamos SSH.

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.010.png)
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Scripts en Linux

32
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Scripts en Linux
- Al igual que en los otros dos lenguajes de scripts de terminal, en Linux podemos escribir pequeños códigos con instrucciones de Bash, para así automatizar de la mejor manera las operaciones.
- Necesitamos un editor de texto, ya sea **nano, vi, vim o gedit**, el caso es que escriba texto plano de Linux (recordar que no es igual que el texto plano de Windows)
- Los ficheros de script de Bash tienen extensión **.sh** Es importante recordar que antes de poder ejecutar estos ficheros, tenemos que habilitar los permisos de ejecución:

chmod +x script.sh

- Para lanzarlo hay que escribir el comando de esta manera: ./script.sh
- Suelen tener una marca de script como si fuera un comentario para decirle a Bash que es un fichero de script. #!/bin/bash
## Scripts en Linux
- Entrada de texto:

34
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

#!/bin/bash

declare -i number1

declare -i number2

declare -i total

echo "¿Cual es tu número favorito?"

read number1

echo "¿Qué numero odias?"

read number2 total=$number1\*$number2

echo "Son igual a" $total

exit 0

- Notamos que se declaran las variables como enteras -i para que no se acepte la entrada como una cadena.
- Que cuando hacemos uso del valor de la variable, utilizamos el signo $ antes.
- Al final del script, aunque no es obligatorio, debemos salir indicando un código de error. En este caso, el 0 es ausencia de error.


3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Scripts en Linux
- Declare:
  - En Bash hay que declarar (definir) el tipo de las variables. 
  - En el ejemplo hemos visto -i como declaración de una variable de tipo entero

declare -i numero=5

- Si a una variable definida como entero, luego le asignamos un texto, dará 0
- En Bash no es posible de forma nativa utilizar decimales. Para ello utilizamos **bc**, en el fichero **decimales.sh** se muestra un ejemplo.
- Pero además podemos declarar constantes, con **-r** de **read only**:

declare -r constante="valor fijo de la constante"

- También podemos declarar arrays con **-a**

declare -a usuarios=([0]='juan' [1]='pepe' [2]='ana' [3]='eugenia’)
## Scripts en Linux
- Declare:

![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.011.png)
## Scripts en Linux
- Declare: ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.012.png)
## Scripts en Linux
- Bucles:

38
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

#!/bin/bash

for i in {0..10..2}

do

echo " Atravesamos $i veces" done

##################################

#!/bin/bash

for filename in file1 file2 file3

do

echo " Importante fichero" >> $filename done

- El primer bucle indica que va de 0 a 10 en incrementos de 2
- Las acciones del bucle están encerradas entre **do** y **done**
- El segundo bucle va recorriendo textos, para luego añadir un texto al fichero.
- Se acompaña un fichero bucles.docx para ampliar


3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Scripts en Linux
- Estructuras If-else:

#!/bin/bash

echo "¿Cual es tu color favorito?"

read text1

echo "¿Qué color le gusta a tu amigo?"

read text2

if test $text1 != $text2; then • La herramienta **test** ejecuta una condición. No 

echo "Los opuestos se atraen." olvidar el **;** que viene después de la condición.

else

echo "Tal para cual!"

fi • Si una condición se abre con if, se cierra con fi exit 0

- Se acompaña un fichero para ampliar sobre **test**
## Scripts en Linux
- While

#!/bin/bash

declare -i counter • En este caso la condición de salida del bucle counter=10 While tiene un operador -gt (mayor que). Como while [ $counter -gt 2 ]; do en el if, el fin de la condición se marca con un ;

echo El Contador marca $counter

counter=counter-1 • Después, el conjunto de instrucciones a realizar done se enmarca en una estructura do… done, como 

exit 0

en el bucle for.
## Scripts en Linux
- Parámetros en Shell script

#! / bin/bash

#Le pasamos dos parametros e imprime el que esta en la posicion 1 y 2

echo "Hola" $1; • Este ejemplo muestra cómo usar parámetros. 

echo "Hola" $2;

echo "Nombre del fichero:" $0; • **$0** tiene el nombre del script

echo "Numero de parametros": $#; • **$1..$n** los distintos parámetros introducidos en echo "Todos los parametros menos el 0": $\*; orden

- **$#** el número de parámetros
- **$?** valor devuelto de la última orden ejecutada
- **$\*** todos menos el nombre del script.
- **$!** pid del último proceso ejecutado.en back
- **$$** tendría el Id de proceso
- Para llamarlo, suponiendo que se llamase ***script.sh***: ***script.sh parametro1 parametro2 parametro3***

42
3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal
## Scripts en Linux
- La estructura **case … in …. esac** permite evaluar varias condiciones para dar lugar a una serie de instrucciones 
- Condicional múltiple (Case) si se cumple
- También vemos el operador **|** que en este caso es una OR lógica.
- Cada opción viene separada por **;;**

#ec!/hboi n"¿/ Qba us éh tiempo hará mañana?" • La última opción dispone de un **\*** para indicar que 

read weather cualquier otra respuesta, generará ese eco**.**

case $weather in

soleado | calido ) echo "Me encanta cuando está " $weather

;;

nuboso | fresco ) echo "No es para tanto..." $weather" también está bien"

;;

lluvioso | frio ) echo "Buff" $weather" me deprime"

;;

\* ) echo " Perdona, no te he entendido." ;;

esac

exit 0 43


3. Linux Ubuntu ![](../../../../../Downloads/Admon%20SO%20Linux%20Parte%202%20Mas%20sobre%20comandos%20y%20scripting/Aspose.Words.5e543d50-df4a-4c3c-9faa-89946241341f.005.png)

Linux Terminal

Más sobre comandos en Linux

Hands On

Shell scripting en Linux
45
