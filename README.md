![Apelatron](src/assets/img/generico.png)
 # Apelatrón v1.0
![](https://img.shields.io/badge/version-v1.0.0-blue) ![](https://img.shields.io/github/issues/datauy/apelatron) ![](https://img.shields.io/github/license/datauy/apelatron) ![](https://img.shields.io/twitter/url?url=https%3A%2F%2Fgithub.com%2Fdatauy%2Fapelatron)
### Versión 1.0.0
## Indice

* [Introducción](#Introducción)
* [Instalación](#Instalación)
* [Uso](#Uso)
* [Datos Abiertos](#Datos)

## Introducción

Apelatrón es un "Asistente de apelación" ¿Te borraron una publicación de una red social? ¿Usás las plataformas para compartir información y te suspendieron la cuenta? En internet también tenés derecho a expresarte con libertad. Si te eliminaron un contenido o te bloquearon la cuenta injustamente, podés apelar la decisión. Si no sabés cómo hacerlo, seguí los pasos de Apelatron para aprender cómo presentar la apelación en la plataforma.

Esta basada en Rails utilizando carga dinámica de contenidos para una mejor experiencia de usuario. A nivel de la administración permite la inclusión de pasos de manera flexible con templates que habilitan la funcionalidad que puede verse en la plataforma, lo que hace que la herramienta sea fácilmente escalable.


<details>
<summary>Origen</summary>
La creciente intervención de unas pocas corporaciones internacionales en el libre flujo de información y comunicación en internet ha sido considerada como una amenaza para la libertad de expresión por Relatores de Libertad de Expresión de todo el mundo.

Frente a este escenario, en el que las grandes plataformas avanzan con la remoción o desindexación de contenidos.

<details>
<summary>Objetivo</summary>
 El asistente Apelatron fue creado para asistir a los usuarios y usuarias de redes sociales a defender su derecho a expresarse en línea cuando entienden que ha habido una decisión de moderación injusta o ilegítima.
</details>

<details>
<summary>Antecedentes</summary>

*  
</details>

***

![](src/assets/img/readmeGif.gif)



## :notebook: Guía de instalación y uso

Son instrucciones que permitira tener una copia de poroyecto funcionando en un ordenador local para desarrollo y pruebas.

### Pre-requisitos:

#### [Rails](https://nodejs.org/en/)  =6.1.7.3

### Instalación

- Creación de la carperta donde se quiera guardar el proyecto en tu ordenador (Desktop, Documents,etc).

- Entrar a la carpeta a través de la  consola de comandos. </br>
    cd Desktop </br>
    cd Nombre_Carpeta </br>

- Clonar el proyecto del repositorio. </br>
    git clone git@github.com:datauy/apelatron.git

- Entrar a la carpeta del proyecto final. </br>
    cd apelatron

- Instalar Ruby (se recomienda usar version manager https://rvm.io/) y Postgres
- rvm use 2.6.3
- bundle install
- yarn install
- (crear base de datos local y accesos de ser necesario)
- modificar el archivo config/database.yml para el entorno de desarrollo con las credenciales de la db
  - Generar estructura de base de datos `rails db:migrate`
  - Correr servidor de desarrollo: `rails s`

### Ejecución

Para iniciar el proyecto en local es a través del siguiente comando. </br>
    rails s

### Tecnología utilizada

- **[Ruby On Rails](https://rubyonrails.org/)**

## Ejemplo de inicio

![Codigo](app/assets/images/paso1-head.png)

![Codigo](app/assets/images/paso2-head.png)

## :chart_with_upwards_trend: Datos


##### ¿Qué son los datos abiertos?
Los datos abiertos como aquellos datos digitales que son puestos a disposición con las características técnicas y jurídicas necesarias para que puedan ser usados, reutilizados y redistribuidos libremente por cualquier persona, en cualquier momento y cualquier lugar.
##### Datos abiertos que utiliza la aplicación
Los datos utilizados en esta aplicación se encuentran disponibles para su reutilización a través del [Catálogo Nacional de Datos Abiertos ](https://catalogodatos.gub.uy/).

<!-- FALTAN LINKS A LOS DATOS-->

<!-- FALTA PROCESO DE DATOS -->
 ## Acerca de DATA Uruguay

 Es una organización de la sociedad civil que busca el fortalecimiento de comunidades y activismo social a traves de herramientas sociales para la participación y el uso de datos abiertos. [Conoce más](https://data.org.uy/)

## Acerca de Observacom
OBSERVACOM (Observatorio Latinoamericano de Regulación, Medios y Convergencia) es un think tank regional sin ánimo de lucro, profesional e independiente, especializado en regulación y políticas públicas relacionadas con los medios de comunicación, las telecomunicaciones, Internet y la libertad de expresión. [Conoce más](https://www.observacom.org/)
## Bitácora de cambios

- [Changelog](http://soporte.data.org.uy/es/blog/apelatron-changelog)
## Contacto
* Consultas sobre el proyecto en general (OBSERVACOM):
 contacto@observacom.org

* Consultas sobre la herramienta (DATA Uruguay):
contacto@data.org.uy

## Autores
