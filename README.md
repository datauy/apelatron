![Donde reciclo](src/assets/img/generico.png)
 # Donde Reciclo v4.0
![](https://img.shields.io/badge/version-v3.4-blue) ![](https://img.shields.io/badge/build-ionic-blue) ![](https://img.shields.io/github/issues/datauy/DondeReciclo-3) ![](https://img.shields.io/github/license/datauy/DondeReciclo-3) ![](https://img.shields.io/twitter/url?url=https%3A%2F%2Fgithub.com%2Fdatauy%2FDondeReciclo-3)
### Versión 4.0.6
## Indice

* [Introducción](#Introducción)
* [Instalación](#Instalación)
* [Uso](#Uso)
* [Datos Abiertos](#Datos)

## Introducción

¿Dónde Reciclo? es una herramienta web y una app para iOS y Android, sirve para encontrar contenedores de residuos reciclables en todo Uruguay y a aprender cómo clasificar mejor en casa.

Esta basada en Ionic5, Angular usando las últimas tecnologías de CSS4 y HTML5 para generar una mejor experiencia de usuario y contenidos exportables a Android e IOS así como las nuevas Web Apps.


<details>
<summary>Origen</summary>
En Uruguay existen muchos esfuerzos destinados a la recuperación de residuos sólidos para su revalorización, tratamiento o disposición final adecuados. Sin embargo la diversidad de programas y el desconocimiento de cada uno de ellos, redunda en que muchas personas crean que en Uruguay no se reciclan ni se recuperan los residuos, o que hacerlo es muy difícil.
</details>

<details>
<summary>Objetivo</summary>
 Nuestro objetivo es unificar toda la información sobre todos los lugares, contenedores, dispositivos y programas para recibir residuos o materiales y envases reciclables.
</details>

<details>
<summary>Antecedentes</summary>

*  La primera versión de esta herramienta, disponible en la web fue desarrollada y diseñada por [Agustín Kryger](https://twitter.com/agustinkry) y [Agustín Díaz](https://twitter.com/hiroagustin), en coordinación con DATA Uruguay, de forma voluntaria. Utilizando datos de la Intendencia de Montevideo para mostrar en qué lugares se podían depositar pilas, latas, plástico y vidrio.

* En el año 2016, [CEMPRE](https://cempre.org.uy/)  (Compromiso Empresarial Para el Reciclaje)  y [DATA Uruguay](https://data.org.uy/) acordaron trabajar en conjunto para actualizar y ampliar la ambición de dicha herramienta, convirtiéndola además en una aplicación móvil y sumando información sobre clasificación en casa y formas de disposición de residuos.

*  En 2020 se lanza una tercera versión de la herramienta v3.4.0, con más información sobre materiales, mejoras de diseño, interfaz y usabilidad y cambios en el sistema de gestión de la herramienta para permitir enviar reportes sobre contenedores a los distintos programas, así como permitirles a éstos gestionar y actualizar los puntos que se visualizan en la app.
</details>

***

![](src/assets/img/readmeGif.gif)



## :notebook: Guía de instalación y uso

Son instrucciones que permitira tener una copia de poroyecto funcionando en un ordenador local para desarrollo y pruebas.

### Pre-requisitos:

#### [Node.js](https://nodejs.org/en/)  >=10.19.0 <=12.15.0

#### [Angular](https://angular.io/) 8.2.14

    npm install -g @angular/cli

#### [Ionic](https://ionicframework.com/) 0.0.0

- **[Ionic](https://ionicframework.com/docs/cli)**

    npm install -g @ionic/cli

### Instalación

- Creación de la carperta donde se quiera guardar el proyecto en tu ordenador (Desktop, Documents,etc).

- Entrar a la carpeta a través de la  consola de comandos. </br>
    cd Desktop </br>
    cd Nombre_Carpeta </br>

- Clonar el proyecto del repositorio. </br>
    git clone git@github.com:datauy/DondeReciclo-3.git

- Entrar a la carpeta del proyecto final. </br>
    cd DondeReciclo-3

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

## Bitácora de cambios

- [Changelog](http://soporte.data.org.uy/es/blog/dr-changelog)
## Contacto
* Consultas sobre el proyecto en general (OBSERVACOM):
 contacto@observacom.org

* Consultas sobre la herramienta (DATA Uruguay):
contacto@data.org.uy

## Autores
