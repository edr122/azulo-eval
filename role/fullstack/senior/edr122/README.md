# Azulo: APLICACIÓN AIRPORTART - AZULAPP
## Comenzando
_Estas instrucciones te permitirán desplegar y probar la aplicación._

### Ejecutando docker compose
_Este archivo de docker compose crea el contenedor de mysql y directus a la vez creando la conexion entre los dos contenedores._
_Pasos para desplegar:_

```sh
docker-compose up -d
```

```sh
docker-compose run --rm directus install --email ejemplo@example.com --password eder
```

_Para ingresar al panel de administración de directus en el siguiente enlace "http://localhost:8081/":_

### (Contenedor de flyway inconcluso)

### Base de datos usada
_Diagrama de base datos._

![Aquí la descripción de la imagen por si no carga](https://raw.githubusercontent.com/edr122/azulo-eval/role/fullstack/senior/role/fullstack/senior/edr122/sql/Diagrama_BD_Airportart.JPG)

_Ruta de los scripts de base datos._
_Ejecutar los scripts (En el orden que se muestra) en una consola o IDE de admnistración de base datos (Mysql)_

```
/sql/db_structure.sql
/sql/db_data.sql
```

### Proyecto backend (API)
_Contiene todos los endpoints de la aplicación._

```
/airportart-api
```
_Pasos para desplegar:_

```sh
npm install
```

```sh
npm run dev
```

_Descripción de los endpoints: _

![Aquí la descripción de la imagen por si no carga](https://raw.githubusercontent.com/edr122/azulo-eval/role/fullstack/senior/role/fullstack/senior/edr122/collection-api/imagen_collection.JPG)

- Get all Airports : Trae una lista de Airports
- Update Airport : Actualizar el operador por id de airport.
- Update Priorities by List : Actualiza el orden de prioridad masivamente (por una lista).

_Ruta del collection (Postman) de los endpoints._

```
/collection-api/airportart-api-azulapp.postman_collection.json
```

### Proyecto frontend en VUEJS
_Contiene las funcionalidades de listar Airports._

```
/airportart-web
```

_Pasos para desplegar:_

```sh
npm install
```

```sh
npm run serve
```
