# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Instalar Ruby (se recomienda usar version manager https://rvm.io/) y Postgres
.rvm use 2.6.3
.bundle install
.yarn install
.(crear base de datos local y accesos de ser necesario)
. modificar el archivo config/database.yml para el entorno de desarrollo con las credenciales de la db
. Generar estructura de base de datos `rails db:migrate`
. Correr servidor de desarrollo: `rails s`
