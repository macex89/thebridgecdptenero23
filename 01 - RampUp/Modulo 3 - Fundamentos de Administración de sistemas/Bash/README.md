# Bash 
***

![](../../../img/TheBridge_logo.png)


## Eso del código abierto
***

- El termino **Open source** se refiere a un tipo de software abierto a todo publico, donde el código puede ser usado, modificado, analizado y re distribuido por cualquier persona. 


- Como el código de este tipo de Software es abierto a todo publico, es necesario definir qué se puede y qué no se puede hace con él. Y es allí donde salen a relucir las licencias Open Source.


- Podemos definir una **licencia open source** como un tipo de licencias asociada a un Software. Esta licencia define como el software podrá ser utilizado, distribuido, analizado, e inclusive, modificado.


- A través de las licencias open source que seremos capaces de establecer reglas de lo que se puede o no hacer con nuestro proyecto.


- Existen una gran cantidad de licencias en el mercado, pero hay cuatro especialmente relevantes:

- **GNU General Public License (GPL)**
  - Esta licencia permite ejecutar el programa, estudiarlo y distribuirlo, ya sea mediante una copia exacta del programa o en versiones modificadas.
  - Algo importante a mencionar es que, esta es una licencia copyleft, lo que significa que, además de ofrecer el derecho de poder hacer lo que deseemos con el software, cualquier trabajo derivado, obligatoriamente, debe distribuirse bajo la misma licencia.
  - Más información: [https://www.gnu.org/philosophy/philosophy.html](https://www.gnu.org/philosophy/philosophy.html)

- **APACHE LICENSE 2.0**
  - Esta es una licencia **muy permisiva** con el software. En su versión 2.0 la licencia Apache obliga a mantener todos los derechos de autor y patentes asociadas al software. Así mismo permite que el software pueda ser ejecutado, modificado y redistribuido.
  - Y en caso el código sea modificado, se debe mencionar cada una de las modificaciones realizadas. Si existen partes de código sin modificar, estas deben conservar la licencia Apache 2.0
  - Más información: [https://www.apache.org/licenses/LICENSE-2.0](https://www.apache.org/licenses/LICENSE-2.0)

- **MIT License**
  - Esta es la licencia **más permisiva** de las cuatro, ya que prácticamente permite hacer lo que nosotros deseemos con el software. Ya sea ejecutarlo, estudiarlo, modificarlo, redistribuido, e inclusive**, sub-licenciar.**
  - Las únicas restricciones son:
    - Mantener los derechos de autor.
    - El autor original se deslinda de cualquier daño o mal uso resultado del código licenciado.
    - En las copias generadas se debe mantener la licencia MIT.
  - Algunos softwares famosos que utilizan esta licencia pueden ser **Node.JS, Vue.JS o Ruby On Rails, etc**
  - Más información: [https://opensource.org/licenses/MIT](https://opensource.org/licenses/MIT)

- **MOZILLA PUBLIC LICENSE (MPL)**
  - The Mozilla Public License (MPL) es una licencia desarrollada y mantenida por la fundación Mozilla.
  - Esta es una licencia copyleft y algo permisiva. Al igual que las licencias anteriores, esta permite ejecutar el software, estudiarlo, y redistribuir.
  - Los puntos a descartar son los siguiente.
    - Se mantienen los derechos de autor.
    - Si el código es modificado, el código original con licencia MPL debe estar disponible, y se debe informar dónde y cómo se puede obtener.
  - Más información: [https://www.mozilla.org/en-US/MPL/](https://www.mozilla.org/en-US/MPL/)

## Distribuciones de Linux
***

- Linux ya no es un único S.O, existen cientos de variantes (a 2022 más de 600), tantas que ahora vamos a hablar de algunas de ellas organizándolas a través de una serie de factores:
  - Si se busca estabilidad
  - Si se empieza en este mundillo de Linux.
  - Si se busca privacidad
  - Si se dispone de equipos poco potentes
  - Si se quiere un OS especializado para aficiones varias
- Un lugar donde hallar todas las distribuciones:
  - [https://distrowatch.com/](https://distrowatch.com/)

### Si se busca estabilidad:

  - **Red Hat Enterprise Linux**: Distribución comercial de Linux desarrollada por Red Hat. Ofrece una estabilidad y flexibilidad punteras, lo que la coloca como una de las más recomendadas para empresas y servidores.
  - **Debian**: Muy estable y 100% libre, Debian destaca por su sistema de paquetería .deb y su gestión de paquetes APT. Es una de las distribuciones más importantes de GNU/Linux, ya que en ella se basan gigantes como Ubuntu.
  - **openSUSE**: Es una de las alternativas más potente contra la familia de distribuciones basadas en Debian. Está disponible con los entornos de escritorio KDE y Gnome, y cuenta como una de sus mejores armas con la robusta herramienta de instalación y configuración YaST y el configurador gráfico SaX.
  - **Fedora**: Distribución gratuita creada y mantenida por la empresa Red Hat que utiliza el sistema de paquetería RPM (Red Hat Package Manager). Tiene tres versiones diferentes para escritorio, servidores y sistemas en la nube, y destaca por su seguridad gracias al sistema SELinux ("Security- Enhanced Linux").
  - **AlmaLinux:** El antiguo CentOS Linux es historia, y AlmaLinux es uno de los sucesores de la comunidad. Está entre nosotros con la mayoría de los paquetes de RHEL.
  - **Arch Linux:** Una distribución modular en la que empiezas desde cero y tienes que ir añadiéndole los componentes que quieras. No es muy apta para principiante, y utiliza pacman, su propio gestor de paquetes. Se trata de una Rolling Release, lo que quiere decir que todos sus componentes van actualizándose sin necesidad de instalar versiones nuevas del sistema operativo.
  - **Manjaro:** Una prometedora distribución que promete llevar todo el potencial de Arch Linux al usuario menos experimentado. Para eso, ofrece un sistema operativo ya montado y basado en Arch, con un instalador sencillo como el que podemos encontrar en otras distribuciones como Ubuntu. Tiene versiones oficiales con los entornos de escritorio XFCE y KDE. 
  
### Si se empieza en esto:
  - **Ubuntu**: Una de las distribuciones más utilizadas gracias a su gran facilidad de uso. Basada en Debian, es amada y odiada por partes iguales por su exclusivo entorno de escritorio Unity, con el que persigue convertirse en una distribución versátil que pueda utilizarse tanto en ordenadores como móviles y tabletas.
  - **Linux Mint**: Basado en Ubuntu, es uno de los más recomendados para todos aquellos que tocan Linux por primera vez. Su entorno de escritorio, Cinnamon, tiene muchas similitudes con el de Windows, y es también uno de los más personalizables.
  - **Elementary OS:** De todas las distribuciones basadas en Ubuntu, esta una de las que más personalidad tiene gracias a su cuidadísimo aspecto, que imita el del sistema operativo OS X de Apple. Increíblemente rápida y fácil de usar, le ofrece al usuario todo lo que pueda necesitar desde el primer momento, incluyendo una colección de aplicaciones propias diseñadas para integrarse a la perfección con su estilo visual.
  - **Zorin OS**: Distribución también basada en Ubuntu que nació con la intención de ayudar a que el usuario diera el salto a Linux ofreciéndole una interfaz lo más similar posible a Windows. Tiene varias versiones, algunas gratuitas como Core (versión básica), Lite (para PCs poco potentes) y Educational (incluye aplicaciones educativas), y otras cuantas de pago muy al estilo de las versiones de Windows.
  - **Peppermint OS**: Distribución rápida y ligera basada en Ubuntu con entorno de escritorio LXDE. Utiliza la tecnología Prism de Mozilla para integrarse con las aplicaciones basadas en la nube, utilizando las webapps como si fueran nativas. Se presenta como una alternativa a otros sistemas basados en la nube como Chrome OS.

### Si se busca privacidad:
  - **Tails**: Promocionada por el propio Edward Snowden y basada en Debian, es una distribución lista para ser ejecutada desde un USB o DVD. Tails se conecta a TOR tan pronto termina el proceso de inicio del sistema operativo, y toda conexión a Internet se realiza a través de esta red.
  - **Kali Linux**: Distribución basada en Debian con una inmensa colección de herramientas para proteger nuestros equipos. Utiliza un kernel personalizado con parches de seguridad y tiene soporte para la arquitectura ARM. Es el más utilizado para hacer Labs de Seguridad
  - **BlackArch Linux**: Una distribución orientada a la seguridad informática que en un principio nació como expansión de Arch Linux, pero que ha seguido su propio camino. Nos da acceso a una impresionante cantidad de herramientas de hacking entre las que destaca Sploitctl, un script que permite instalar, actualizar y buscar sploits.
  - **Arch Assault**: Se trata de una nueva distribución, también basada en Arch Linux y muy parecida a la anterior, también dirigida a hackers y amantes de la seguridad. Minimalista, con gestor de ventanas Openbox acompañado por el panel Tint2, a pesar de estar aun verde ya ofrece soporte para arquitecturas ARM.
  
### Si se tienen equipos poco potentes:
  - **Puppy Linux**: Una minúscula distribución que puede llevarse en un USB o CD, pero sorprendentemente rápida al cargarse enteramente en la memoria RAM del ordenador. Se carga en 30 o 40 segundos y ocupa sólo 100 MB.
  - **Lubuntu:** Se trata de una versión de Ubuntu mucho más ligera y asequible para equipos poco potentes al utilizar el sistema de escritorio LXDE y el gestor de ventanas Openbox. También incluye software personalizado bastante más ligero, por lo que sólo nos pide 128MB de RAM y un Pentium II o Celeron de 1999 para funciona.
  - **Damn Small Linux**: Distribución especialmente diseñada para los equipos más antiguos, como los Pentium de primera generación o incluso los i486. Como entorno gráfico y gestor de ventanas nos propone JWM, su iso ocupa apenas 50 MB y sólo nos pide como mínimo un Intel 486DX y 16 MB de memoria RAM.
  
### Si se tienen equipos poco potentes:
- **SliTaz**: Otro peso pluma aunque con un software ligeramente más moderno que el del anterior. Utiliza el entorno Openbox y sólo necesita un Pentium III con 256MB de RAM y 100 MB libres en el disco duro para funcionar.
  - **LXLE**: Basada en Lubuntu, esta distribución promete ser aun más ligera gracias a un mejor procesado de inicio y el entorno de escritorio LXDE. Ofrece varios perfiles que amoldarán la distro para que se parezca a Windows XP, Vista, y 7 Starter/Basic.
  - **Bodhi Linux**: Aunque actualmente su desarrollo está paralizado después de que su creador abandonase el barco, aun podemos utilizar las últimas versiones de esta distribución para nuestros equipos antiguos. Utiliza un entorno de escritorio Enlightenment y sólo pide como mínimo un equipo con procesador de 300 MHz, 128 MB de RAM y 2,5 GB de espacio libre en el disco duro.
  - **Q4OS**: Y si el anterior era un proyecto que llegaba a su fin, Q4OS es uno que está comenzando. Se trata de una distro basada en Debian. Su entorno de escritorio deriva de la una versión 3.x de KDE llamada Trinity DE e imita el aspecto de Windows XP. Puede usarse en equipos con Pentium de 300MHz, 128 MB de RAMy 3 GB de disco duro.
  
### Si se quiere un OS especializado para aficiones varias:
  - **Distro Astro**: Esta distribución está basada en Ubuntu 14.04 LTS y utiliza el entorno de escritorio MATE, aunque lo más importante es su completa colección de aplicaciones dirigidas a los amantes de la astronomía.
  - **SteamOS**: Aun en fase beta, esta es la distribución basada en Debian desarrollada por Valve, y que está más dirigida a ser una especie de media center para videojuegos integrando el modo big picture que un sistema de sobremesa.
  - **ArtistX**: Distribución de Linux enfocada en la producción multimedia. Basada en Ubuntu, aunque diseñada para ser utilizada en formato LiveDVD y USB, se puede instalar en cualquier equipo. Usa el entorno KDE y ofrece una colección de programas de código abierto para edición de vídeo y creación de gráficos 2D y 3D.
  - **Ubuntu Studio**: Basada en Ubuntu y orientada a la edición multimedia profesional de audio, video y gráficos. Utiliza el entorno de escritorio Xfce y no lleva preinstalado ningún tipo de software ofimático, sólo el diseñado para la edición multimedia.
  
### Si se quiere un OS especializado para aficiones varias:
  - **Scientific Linux**: Se trata de un clon a nivel binario de la distribución Red Hat Enterprise Linux, y está desarrollada y mantenida por los laboratorios de Física CERN y Fermilab con el objetivo de tener un sistema operativo específico para la computación científica.
  - **CEELD**: Distro basada en OpenSUSE que usa el entorno KDE y está especialmente dirigida a los ingenieros electrónicos y a estudiantes de esta carrera, al permitirles diseñar o simular circuitos electrónicos.
  - **Edubuntu**: Otro derivado de Ubuntu, pero en esta ocasión especialmente dirigido a escuelas y profesores. Ofrece una gran colección de software y herramientas educativas, por lo que también es una buena opción para instalar en los ordenadores de los más jóvenes de la casa.
  - **Openelec**: Pequeña distribución Linux creada desde cero para convertir un ordenador en un centro multimedia basado en Kodi, lo que antes se conocía como XBMC. Hace lo que promete y necesita sólo 90-125 MB de almacenamiento interno. A parte de su versión oficial, tiene otras dos buids para Raspberry Pi y Apple TV.
  
[Evolucion de las distribuciones.png](https://github.com/isotomor/thebridgecdptenero23/raw/main/01%20-%20RampUp/Modulo%203%20-%20Fundamentos%20de%20Administraci%C3%B3n%20de%20sistemas/Bash/img/Evolucion%20de%20las%20distribuciones.png)

## Comenzando con Linux
***

Es el momento de comenzar con lo más básico de Linux.

  - Vamos a ver este sistema operativo en mayor profundidad que los basados en Windows, porque dentro del mundo Cloud, salvando el caso de Azure y también lo utiliza, es el más usado. Además, es de todos sabido que Powershell sólo fue creado para que Windows tuviera un terminal que fuera tan potente como los de Linux.
  - Principalmente veremos Terminal, no tanto la parte GUI del sistema. Ya que como hemos dicho, en los servidores no se utiliza sino la versión mínima, que sólo es accesible vía terminal.
  - En cuanto a las diferencias entre Ubuntu y CentOS las iremos comentando a medida que vayan surgiendo porque no son tantas.
    - Se trabajan estos dos sistemas, porque son dos de los más conocidos y porque las familias a las que pertenecen (Debian y Red Hat) son las más extendidas.
    
Lo primero es entender como inicia un S.O Linux

- Una vez que aparezca el escritorio y dado que una de las herramientas que vamos a utilizar mucho es el terminal, se puede abrir con la combinación:
  - **Ctrl + Alt + T**
- También podemos añadir el terminal a la barra de favoritos. Para ello, primero en el cuadro de puntos, buscaremos el terminal y con botón derecho elegiremos Añadir a Favoritos

![](img/Aspose.Words.6783ed45-7cca-4b2b-949d-ab0167fefe4a.019.png)

- En Linux, podemos acceder a todo a través de su sistema de archivos.
- Por ejemplo, si accedemos a la carpeta /boot

```bash
cd /boot 
ls
```

Veremos una serie de ficheros, entre los que se encuentra vmlinuz…….-generic que versiones del kernel de Linux comprimido.

Otros ficheros de esa carpeta son ficheros de apoyo al sistema.

La carpeta grub, contiene los archivos utilizados por el cargador de arranque GRUB. Podriamos ver cualquiera de estos ficheros con una instrucción como:
  ***less /boot/grub/…..***

En Linux podemos decir que existen unos “Niveles de ejecución” que son simplemente números que le dicen a Linux cómo debería estar funcionando el sistema operativo:

![](img/Aspose.Words.6783ed45-7cca-4b2b-949d-ab0167fefe4a.020.png)

Esta lista puede cambiar entre las versiones de Linux que usemos

- 0 system halt
  - Aunque de miedo, simplemente indica que aplicar el código 0, apagará la máquina.
- 1 single-user (rescue) mode
  - Permite solucionar problemas de seguridad o estabilidad sin conectividad de red y sin riesgo a que otros usuarios inicien sesión.
- 3 multi-user mode without GUI
  - Se ejecuta como un servidor con solo terminal.
- 5 multi-user mode with GUI
  - Se accede a un escritorio típico. El término multiusuario significa que más de un usuario puede iniciar sesión en el sistema a la vez.
  - El que varios usuario se puedan conectar a una máquina Linux de forma remota es algo que caracteriza a  los servidores Linux.
  - Linux se asegura que cada usuario nunca tenga más acceso del que necesita.
- 6 Reboot
  - Para  reiniciar la máquina

El comando para cambiar de nivel de ejecución utilizamos la llamada:
  - ***sudo telinit 0***

- De todos modos, una forma más correcta de hacerlo es a través de systemctl, para que systemd se entere de lo que está pasando.
  - systemctl get-default
  
- Obtendremos que estamos en el nivel gráfico multiusuario. (graphical.target)
- Para cambiarlo temporalmente:
  - systemctl isolate rescue.target
  - systemctl enable multi-user.target


### La Jerarquía de ficheros de Linux

En Linux, todo es un archivo de texto plano.

La forma en la que se ejecuta el sistema, las operaciones que permite que ocurran y los objetos a los que se pueden acceder, están determinado por fichero de texto. 

**Organización de ficheros**

El sistema raíz es una barra / y de él cuelgan todos los directorios de nivel root y que explicaremos a continuación:
    
- **/bin** : Ficheros binarios de comandos del sistema en modo usuario único. Es decir todos los programas para lanzar lo más básico de Linux, incluidas muchas herramientas de navegación y manipulación.
- **/sbin:** Ficheros binarios del sistema también, incluyen recursos de red. Solo pueden ser accesibles desde sesiones multiusuario completas.
- **/boot**: Es donde se encuentra las imágenes de Linux y los ficheros de configuración de arranque.
- **/dev**: Contiene archivos que representan y proporcionan control sobre todos los dispositivos físicos.
- **/etc**: Lugar donde se encuentran todos los ficheros de configuración del sistema. Antes era el lugar donde se guardaba lo que no cabía en otra (Por ello lo del etc.)
- **/home:** Contiene los ficheros del usuario actual. Para almacenar archivos privados.
- **/lib**: Utilizado para bibliotecas de software que necesitan los programas binarios.
- **/root:** Ficheros del usuario Root. Por razones de seguridad no se inicia sesión con el usuario root. Por lo que este directorio no se usa mucho.
- **/usr**: archivos binarios y los archivos de datos que necesitan esos binarios.
- **/var**: archivos cuyo contenido se cambie a menudo. Registros, correos, caché de aplicaciones.

Además de los ficheros normales, Linux también utiliza archivos virtuales o **pseudo files**. No son persistentes y se crean de forma virtual durante el inicio del sistema en respuesta a un evento.

- **/prox**: Archivos que representan procesos de sistema iniciados.
- **/dev**: Pseudo archivos representando dispositivos o controladores de dispositivos.
- **/sys**: Es otro directorio para pseudo-archivos. Contine información sobre el sistema y las características de Linux.
  - Esta carpeta tiene una serie de ficheros
- **block**: Contiene dispositivos de bloque adjuntos como discos duros y usb.
  - dentro de /sys/block se encuentran entre otros sda, puede que también un sdb que será como llame a nuestros discos duros. En cada sda o sdb se encuentran las particiones de la unidad. ![](img/Aspose.Words.6783ed45-7cca-4b2b-949d-ab0167fefe4a.021.png)

- **block**: Contiene dispositivos de bloque adjuntos como discos duros y usb.
  - Si nos metemos en sda1, aparte de ver qué hay en ese disco.
  - y hacemos **cat size**, obtendremos un valor de tamaño de sda.

Comenzando con Linux

### Configuración inicial de un Linux.**

Podemos cambiar nuestro valor de país y ciudad utilizando **locale**: ***locale***
La configuración real se encuentra en el directorio:
  - cd /usr/share/i18n/locales/

Si mostramos el contenido del fichero:
  - less es\_ES

Ahora, la mayoría usa más localectl de systemd, para ver y editar:
  - localctl status
  - localctl list-locales
  - localctl set-locale LANG=en\_EN.utf8

### Más comandos básicos

Para conocer dónde nos encontramos exactamente en el árbol de directorios:
````bash
pwd
````

Que es lo mismo que utilizar
````bash
echo $PWD
````

Es decir, estamos utilizando Variables de entorno.

Se puede acceder a todas la variables de entorno a través del comando:
````bash 
env
````

El comando type nos permite ver dónde o cómo se conforma un comando dentro del sistema de archivos.
`````bash
type wget
`````


### Variables 
Podemos asignar variables directamente con el =
```bash
mivalor=5
echo $mivalor
```

Sin embargo, todo esto afectará sólo al terminal. Ya que si abrimos otro shell con 
```bash
bash
```

Y queremos volver a imprimir mivalor, no aparecerá nada.

Si escribimos
```bash
exit
```
 
Volveremos al Shell original y allí si que seguiremos con un mivalor. Si queremos que mivalor aparezca en todos los Shell secundarios:
```bash
export mivalor
```

Comenzando con Linux

#### Historial

Cada vez que escribimos una instrucción, se añade una línea al historial de ese terminal. Así, si subimos con la flecha del teclado, podremos acceder al anterior comando, o al anterior del anterior, etc.

Si escribimos
```bash
history
```

Accederemos a todos los comandos ejecutados en ese terminal.

### Fechas y horas

Para conocer la fecha y la hora de la configuración:
```bash
timedatectl
```

Para conocer las zonas horarias
```bash
timedatectl list-timezones
```

O mejor, filtrando con grep
```bash
timedatectl list-timezones | grep -i Europe
```

Para cambiar la zona horaria
```bash
timedatectl set-timezone Europe/Lisbon
```

### Conseguir información de dispositivos del sistema

Para conocer por ejemplo, los discos de nuestro Linux:
````bash
df -ht ext4
````

Linux se refiere a los discos, siempre por su dirección virtual

Para ver todos los dispositivos de bloque:
````bash
lsblk | grep sd
````

Otra herramienta es la que nos permite mostrar los mensajes relacionados con el búfer del kernel, es decir cómo entiende Linux su equipo físico.
````bash
dmesg | grep wi
````
El comando que nos permite ver qué dispositivos tenemos en nuestro ordenador es
````bash
sudo lshw
````

Este comando en CentOS hay que instalarlo con ***yum install lshw***


### Instalaciones y paquetes


Ya hemos visto cómo instalar algo con CentOS, pero esto cambia según la distribución

![](img/Aspose.Words.6783ed45-7cca-4b2b-949d-ab0167fefe4a.022.png)

**Instalación desde el Desktop**

Desde el Desktop es sencillo, ya que basta con acceder a Ubuntu Software (El icono de la maleta naranja con la letra A blanca) y aparecen las distintas aplicaciones para instalar

Si nos encontramos ante el problema que al intentar abrir Ubuntu Software se queda un rato intentando abrirlo y al final se acaba cerrando, podemos arreglarlo desinstalando y volviendo a instalar esta aplicación con los siguientes comandos:

````bash 
sudo snap remove snap-store
sudo snap install snap-store
````

Si tampoco, hay que cambiarle el idioma a ingles y ya tira: Configuracion/Idioma

**Instalación desde la terminal**

Desde terminal, el lugar donde se guarda la información sobre los repositorios usados, etc, es en 
````bash 
cd /etc/apt
ls
less sources.list
````

Tras quitar todos los comentarios vemos líneas como estas:
````bash
deb http://security.Ubuntu.com/Ubuntu\_focal-securitiy\_main\_restricted
````

Los repositorios de software de Linux:
  - **Main**: Software de código abierto. Los paquetes restrintgidos son oficialmente compartibles
  - **Restricted**: Son oficialmente compartibles pero están construidos con software de código cerrado. Programas propietario.
  - **Universe**: software de código abierto mantenido por la comunidad en general.
  - **Multiverse**: software de código abierto mantenido por la comunidad pero que tiene uso restringido.

El número de software compartido en el repositorio Main es:
````bash 
apt list --all-versions | wc
````

#### Ubuntu/Debian

Antes de instalar nada, es conveniente utilizar:
````bash 
sudo apt update
````

Así el índice del software local que utiliza APT coincida. Podemos usar search para búsquedas inexactas
````bash 
apt search business card | less
apt show glabels
````

Y mostrará información sobre la aplicación.
`````bash
sudo apt install glabels
`````

También se pude usar apt-get, sobre todo en scripts de automatización


#### CentOS / Red Hat

Con yum:
`````bash
yum info vino
`````

Para instalar:
`````bash
yum install vino
`````

Luego nos pedirá confirmación. Pero que también podemos colocar el flag -y para que diga a todo que SI.

## Comandos Linux

Repaso a los comandos Linux básicos

Se acompañan una serie de documentos para repaso de los comandos básicos:
- [Más comandos básicos](https://github.com/isotomor/thebridgecdptenero23/blob/main/01%20-%20RampUp/Modulo%203%20-%20Fundamentos%20de%20Administraci%C3%B3n%20de%20sistemas/Bash/Comandos%20basicos%20linux/M%C3%A1s%20comandos%20b%C3%A1sicos.pdf)
- [Anexo Comandos Linux](https://github.com/isotomor/thebridgecdptenero23/blob/main/01%20-%20RampUp/Modulo%203%20-%20Fundamentos%20de%20Administraci%C3%B3n%20de%20sistemas/Bash/Comandos%20basicos%20linux/Anexo_Comandos_Linux.pdf)
- [Chuleta shell script](https://github.com/isotomor/thebridgecdptenero23/raw/main/01%20-%20RampUp/Modulo%203%20-%20Fundamentos%20de%20Administraci%C3%B3n%20de%20sistemas/Bash/Comandos%20basicos%20linux/chuleta-shell-script.pdf)
- [Comandos Linux Completo](https://github.com/isotomor/thebridgecdptenero23/raw/main/01%20-%20RampUp/Modulo%203%20-%20Fundamentos%20de%20Administraci%C3%B3n%20de%20sistemas/Bash/Comandos%20basicos%20linux/Comandos%20Linux%20Completo.pdf)
