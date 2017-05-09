### RUBY ON RAILS

### Introducción a Ruby on Rails
[Platzi - Introducción a Ruby on Rails] (https://platzi.com/clases/ruby-on-rails/concepto/dia-1-introduccion-a-ruby-on-rails/b-introduccion-a-ruby-on-rails/material/)

* Es un framework creado en **Ruby** para desarrollar aplicaciones web. Dentro contiene, diferentes librerías que desarrollan diferentes funciones. Este framework, está elaborado sobre la arquitectura MODELO-VISTA-CONTROLADOR. Esto responde a la forma en la que se desarrollan las tareas de cada elemento.

* Así mismo, la herramienta se basa sobre "convención", lo que implica que Rails brindará al desarrollador, la estructura que deberá de utilizarse y así mismo, procesos que se  constituyen por defecto para reducir la toma de decisiones e intervenciones hechas por el programador.

### Modelo

* Está formado por clases. Cada clase es un modelo y cada modelo, representa una tabla en la DB. Por lo tanto, es el encargado de trabajar con la lógica de la base de datos. Por otra parte, los modelos son "objetos" que se crean para la aplicación web. Los modelos son la forma como se encapsulara la informacion, es decir es el tipo de informacion que finalmente vera el usuario.

* Es la representación de la información con la cual el sistema opera. Componentes contables y descriptivos que conviven con métodos para su manipulación.
  
### Controlador

* Son los que se encargan de recibir las peticiones HTTP y de acuerdo a ello, realiza una acción para responder de forma adecuada.

* El usuario, interactua con el controlador mediante las rutas (las páginas), luego los manipuladores se encargan de realizar la conexión con los modelos. Una vez esto hecho y la conexión con los modelos, el controlador se encarga de obtener los datos para la vista.

* Es el encargado de la lógica de la petición. Es un puente entre la Vista y el modelo. Cada controlador, será una clase con métodos y por cada método habrá una vista que representará la versión procesada de ese método. El controlador, por lo tanto se traduce en los archivos que operan acciones y scripts, haciendo llamadas a diferentes propiedades del objeto (las clases de la DB) y desplegandolas luego en la vista.

* Los controladores son como las operaciones que se van a realizar, es ahi donde se incluyen los metodos a los cuales se podran acceder por medio de una URL: Ejemplo de una url donde se llama a un controlador usuario y a su metodo login, con dos parametros: http://misitioweb.com/usuario/login/{par

* Un controlador puede acceder y utilizar una clase Modelo para pasar datos a las vistas.

### Vista

* Es la representación final de una petición. (HTML, ERB, JS, CSS) Es decir, la forma en la que se presentará la información. Asimismo, es como cuando en un archivo PHP utilizamos diferentes plantillas HTML para desplegar lo que se busca en la DB con scripts de PHP y MySQL. Por lo tanto, las vistas son las que despliegan las funciones que se requieren al explorador.

* Para desplegar un modelo, se introduce dentro de una vista HTML, código **ERB**. Esto, mediante la operación intermediaria de un **controlador** que busca dentro del modelo, los datos requeridos al mismo.


## Ejecutando nuestra Aplicación:

* Luego de haber instalado el framework, debe de realizarse la creación de la aplicación mediante el comando **rails new newapp**. Si quiere especificarse la DB que se va a utilizar, se deberá de agregar la opción "-d" seguido de su nombre o descripción.


Base de Datos | Comando de Rails
--------------|------------------
SQLITE		  |	rails new myappname
POSTGRESQL    |	rails new myappname --database=postgresql
MYSQL		  |	rails new myappname -d mysql

[MySQL with your Ruby on Rails Application on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-use-mysql-with-your-ruby-on-rails-application-on-ubuntu-14-04)

* Luego de haberse creado, nos indicará que se ha creado satisfactoriamente el proyecto.

## Arrancando nuestra Aplicación:

* A diferencia de lo que se coincibe de Rails, para arrancar un proyecto del mismo, no se utiliza la **Terminal** para ejecutarla sino un **"SERVIDOR DE APLICACIONES"**.

* Para arrancar el servidor de aplicaciones de **Rails**, deberá de introducirse el siguiente comando:

```rails
	rails server 
	rails s
```

* Para dar apagar el servidor de aplicaciones, deberán de presionarse las teclas:

```
	CTRL+c
```

## Estructura de Archivos de una App de Rails

* **app:** Se contiene todo el código relacionado a la lógica de la aplicación. Por convención, todo el contenido de controllers, models y views, se situan en esta carpeta.
	- **Assets:** son todos los archivos que se requieren. (imgs, js, css)
	- **Controllers:** Los controladores son los que se encargan de manejar todas las peticiones HTTP y la devolución de los modelos.
	- **Helpers:** Se coloca toda la estructura de código que vamos a reutilizar en todas las vistas como sidebars, headers y footers.
	- **Mailers:** Se 
	- **Modelos:** Contienen toda la lógica de la app y el contenido de las clases de las bases de datos.
* **bin:**
* **config:** 	
	* **Environments:** Configuraciones que tenemos cuando estamos desarrollando. Estas son diferentes en prueba, en desarrollo y en producción. Por ejemplo, en método de desarrollo, las vistas se cargan en su totalidad, lo que no sucede en producción.
	* **Initializers:** Configuraciones que necesitamos que se carguen al iniciar el servidor. 

		- **database.yml** => Es en donde se guarda la configuración de las bases de datod. Usuario, tipo de DB, contraseña, etc.
		- **routes.rb** => Son las rutas que se generan por cada controlador. 
		- **secrets.yml** => Es el archivo en el que se guardan todas las llaves de usuario.

* **db:** Es donde se guardan las configuraciones de los modelos.
* **lib:** Para librerías de terceros.
* **log:** Registro de todas las interacciones con nuestra aplicación.
* **public:** Se encuentran todos los archivos estáticos (404.html, 500.html) que no necesitan el procesamiento de Ruby.
* **test:** 
* **tmp:**
* **vendor:**
	* **gemfile:** Es donde se especifican las gemas a funcionar en el proyecto. Se describen todas las dependencias de gemas a funcionar en el proyecto.

		- **sass:** css precompilado
		- **coffee script:** javascript precompilado al estilo Rails
		- **turbolinks:** gema para crear aplicaciones que no tengan que recargarse completas sino solo los elementos a modificar. Es una alternativa parecida a Angular o React.

## MySQL Creación de Usuario, DB

*	Cuando se desarrolla una aplicación nueva en MySQL, se necesita tener instalado MySQL en el ordenador, crear un usuario con todos los privilegios y por si se produce un error, realizar un cambio en la variable de passwords de MySQL para que admita el password que desees.

	+ Crear la base de datos:

		```rails
			mysql> create database musicapp;
		```

	+ Asignar todos los permisos al usuario **nuevo** que se está creando en esta misma linea:
	  
	  [MySQL Grant Usage](http://stackoverflow.com/a/1720254) | [MySQL User Creation](https://www.digitalocean.com/community/tutorials/crear-un-nuevo-usuario-y-otorgarle-permisos-en-mysql-es)

		<pre>
			mysql> grant usage on *.* to <b>william</b>@<b>localhost</b> identified by <b>'Cocacola15'</b>;
		</pre>

		- Si al escribir este comando, se produce error [ERROR 1819 solution](http://qiita.com/liubin/items/3722ab10a73154863bd4): 
			
			<pre>
				<b>ERROR 1819 (HY000): Your password does not satisfy the current policy requirements</b>
			</pre>	
		
		- Deberá de resetear la política de passwords fuetes. El nivel por defecto es MEDIUM, pero se puede modificar mediante el siguiente comando:

			```
				mysql> SET GLOBAL validate_password_policy=LOW;
				Query OK, 0 rows affected (0.00 sec)
			```

		- o modificando esta propiedad en el archivo my.cnf:
			
			```
				[mysqld]
		 		validate_password_policy=LOW
			```

	+ Luego, asígnar todos los permisos al usuario creado, sobre la base de datos nueva que también hemos creado antes.

		<pre>
			grant all privileges on <b>musicapp</b>.* to <b>william@localhost;</b>
								    <b>db_name</b>		 <b>user_localhost</b>
		</pre>

	+ Ó puedes finalmente usar una sintaxis que crea el usuario y le permite todos los privilegios sobre la DB, como el que se desarrolla a continuación:

	<pre>
		grant all privileges on <b>musicapp</b>.* to <b>'william'@'localhost'</b> identified by <b>'Cocacola15'</b>;
	</pre>

## Generadores y Scaffold de un modelo en Rails

* Es una función que servirá para crear una estructura de vistas, controladores para manejar los modelos. Se les llama también **generadores** debido a que ofrecen una manera fácil para desarrollar estructuras de forma más fácil.

* La definición de **scaffold** técnica, es la de un sistema al que le proveemos detalles de la estructura general y el mismo, crea todas las intancias de la misma.

* Los **modelosd** se escriben en singular, debido a que la convención de **Ruby on Rails**, construirá los **controladores, las vistas y las tablas** en plural.

	**Modelo** -> Nombre en singular | **Tabla** -> Nombre en plural
	
	<pre>
		rails generate scaffold <b>track</b> title:string album:string artist:string
								<b>model_name</b>		<b>name_fields:data_type</b>
	</pre>

* Luego de generar la estructura de **Track**, y de reiniciar el servidor con su comando **rails s**, en el cual recibiremos un error llamado:

	<pre>
		Migrations are pending. To resolve this issue, run: bin/rake db:migrate RAILS_ENV=development
	</pre>

* Pero, ¿qué entendemos sobre este mensaje? ¿Qué es jacerrw


## Migraciones:

* Las migraciones son instrucciones que se depositan en un archivo **(db/migrate/2016###...)** que se crea cuando se inicia una nueva estructura **(scaffold)** y que sirven para que mediante de un comando **(rake)** de Rails, pueda ser este interpretado y se ejecuten las sentencias que generen tablas de contenido, con sus diferentes campos.

* Cada archivo de migración, tiene un método **change**, que crea una tabla con el nombre del **modelo** en **plural**. Como bien lo habíamos evaluado, la pluralización de los elementos afecta también al controlador, vistas, etc. Pero el modelo, seguirá llamandose: Track.

	```rails
		class CreateTracks < ActiveRecord::Migration
	      def change
	        create_table :tracks do |t|
	          t.string :title
	          t.string :album
	          t.string :artist

	          t.timestamps null: false // hora de creación
	        end
	      end
		end
	```

* Para resolver este error, debemos de migrar todas los cambios para que se apliquen en la DB con el siguiente comando.

	<pre>
		<b> rake db:migrate RAILS_ENV=development </b>
	</pre>

## Rutas

* Para poder interactuar con los modelos se necesitan **rutas**, que podrán manipularse mediante las intervenciones de los **controladores**.

* Lo que quiere decir, es que cuando vayamos a **"/tracks"**, esta **ruta** corresponde al **método index** de nuestra clase controlador **tracks**.

* Para dirigirnos hacia la representación gráfica o lista de las rutas disponibles de los modelos, podemos acceder desde el archivo:

```
	cd /config/routes.rb 
```

ó bien desde el comando en la consola:

```	
	rake routes
```


### Explicación MVC de Rutas en Rails:

* En routes, podemos ver que las **rutas** responden a los **métodos** de nuestra **clase del controlador**.
	
	Prefix | Verb | URI Pattern 	  	  | Controller#Action
	-------|------|-----------------------|--------------------
	tracks | GET  | /tracks(.:format) 	  | tracks#index
		   | POST | /tracks(.:format) 	  | tracks#create
new_tracks | GET  | /tracks/new(.:format) | tracks#new		   

* Por tanto, se ha de considerar que los **modelos**, son los objetos que contienen la lógica de la aplicación.

* Si no dirigimos al controlador del modelo, encontraremos en su respectivo archivo, 7 métodos por pre definidos para las vistas.

	```
		- index		- update
		- show		- destroy
		- news		- create
	```

* Si ingresamos al controlador **"tracks_controller"**, podemos ver como el método **"index"** se toma todos los datos del modelo **Track** y lo deposita en la variable de instancia **"@tracks"**, la cual será aplicada en la vista correspondiente del controlador.


* Los verbos de HTTP son GET, POST, PUT & PATCH.
Para ingresar a cada una de las vistas de las acciones, seguimos el patrón brindado por el comando **rake routes**.

* Las **"acciones o métodos"**, tomarán el valor de todas las **instancias del modelo** para luego delegar a la **vista** la representación del contenido.

## Modelos, ORM y ActiveRecord en Rails:

### Modelos

* Los modelos son las estructuras de contenido **(OBJETOS)** con las cuales interactuaremos mediante la instanciación de variables del controlador con su mismo nombre. 

* Por ejemplo, en el caso del modelo en cuestión, conocemos que hay muchas rutas que representan los métodos que pertencen al controlador. Por lo tanto, en cada una de ellas se solicitará de diferente forma la intervencion del controlador para retornar o para registrar la información que ingresa.

* Por ejempo, el **método SHOW** del controlador **"TracksController"**, se muestra vacío pero al ser llamado, responde el método predefinido **set_track**, el cual además responde a otros métodos como **":show, :edit, :update, :destroy"**. 


```
	class TracksController < ApplicationController
  		before_action :set_track, only: [:show, :edit, :update, :destroy]

```

* El método **"SHOW"**, mediante la declaración una variable de instancia, se redicciona al método privado *"set_track"* que manipula al **modelo** cuando ejecuta su función **find** que permite encontrar objetos en el modelo, dentro de un **hash** llamado "params" con una **"clave id"** (modelo de array asociativo con un nombre y una llave de identificación para un valor);
Ver más: [Hashes Rails](http://fernando-gaitan.com.ar/ruby-on-rails-parte-4-variables/)


```
    def set_track
      @track = Track.find(params[:id])
      #Instance = Modelo.find(parametro[:id])
    end
	
```

En la consola, se desplegará así:

```
	Started GET "/tracks/1/edit" for ::1 at 2016-06-09 12:18:20 -0600
	Processing by TracksController#edit as HTML
	  Parameters: {"id"=>"1"}
	  Track Load (0.4ms)  SELECT  `tracks`.* FROM `tracks` WHERE `tracks`.`id` = 1 LIMIT 1
	  Rendered tracks/_form.html.erb (3.4ms)
	  Rendered tracks/edit.html.erb within layouts/application (5.6ms)
	Completed 200 OK in 29ms (Views: 27.5ms | ActiveRecord: 0.4ms)

```

* En este ejemplo, podemos ver que inicialmente, se realiza una petición HTTP a "/tracks/1/edit" mediante el controlador **TracksController**. Este recoge el parámetro "id" mediante la función find, en el hash *params*, y el controlador se comunica con el **modelo y su tabla** mediante SQL y hace el render en los arhivos */app/views/tracks/_form.html.erb* y */app/views/tracks/edit.html.erb* y termina el proceso mostrando su información en la página */tracks/edit.html.erb*. El archivo *_form.html.erb* despliega mediante código **Ruby**, la variable de instancia que se determinó en el método "EDIT". 

### Active Record:

* Los modelos son todos los objetos que forman nuestro sistema. Si recordamos, cuando creamos una estructura mediante Scaffold, se generaba el **modelo**, el **controlador**, rutas, etc. Si chequeamos en el "app/models/" veremos un archivo **"track.rb".

```
	class Track < ActiveRecord::Base

	end
```

* El **Active Record**, es una clase con métodos internos que permite al programador solucionar muchísimas cosas desde su uso. Es una capa de abstracción más alta para manipular los objetos del modelo. Por ejemplo, permite realizar conexiones a la DB para evitar que el desarrollador realice las consultas directamente. Por lo tanto, cuando se genera el **modelo**, también se le heredan todos los métodos de la clase *Active Record*, para que cualquiera pueda manipular sus objetos.

* Mediante la clase *Active Records*, se posee la capacidad de realizar solicitudes a la DB. Por ello, cuando la clase de un modelo hereda de la misma, está habilitada para funcionar con métodos y comandos que posee la principal.

* Cuando los datos son expuestos en la vista para su cambio, la vista adquiere un token de seguridad que se adhiere al formulario que de ser cambiado, rompe la conexión con la seguridad de la DB.

## Uso y configuración de DBs en Rails

* Si se usa SQLITE es muy probable que el sistema ya posea la capacidad de conexión y creación de DBs. Si no, deberá de instalar su gestor de base de datos para manipular los datos.

* Cuando ya se ha creado una estructura en el proyecto (en este caso **track**), este cambio se registra en el archivo *db/schema.rb*. Esto con la finalidad de que la configuración de la base de datos pueda migrarse fácilmente hacia cualquier ordenador con solo ejecutar el comando: 

	<pre>
		rake <b>db:setup</b>
	</pre>

	+ Esto generará las tablas del archivo *schema.rb* y creará los datos de inicialización de la migración de la tabla.

	```
		-- create_table("tracks", {:force=>:cascade})
		   -> 0.0370s
		-- initialize_schema_migrations_table()
		   -> 0.0289s
		-- create_table("tracks", {:force=>:cascade})
		   -> 0.0311s
		-- initialize_schema_migrations_table()
		   -> 0.010s	   
	```

## Rutas y Controladores

## Rails Console

* Es una consola de Rails que sirve para manipular los objetos del modelo. Para ingresar a ella, insertamos el siguiente comando:

	```
		rails console
	```

	+ Lo cual nos permitirá ingresar en la consola de manipulación del modelo.


	```
		Running via Spring preloader in process 15817
		Loading development environment (Rails 4.2.6)
		2.3.0 :001 > 
	```

* Para comenzar a manipular el modelo, tenemos que pedir acceso a la conexión con la base de datos.

	+ Nombramos el modelo:

	<pre>
		2.3.0  :001 > <b>Track</b>
		 <b>=> Track (call 'Track.connection' to establish a connection)</b> 
	</pre>

	+ Esto nos solicitará que conectemos con la base de datos
	```
		Track.connection
	```

	+ Luego de haber escrito este comando unido al nombre del **modelo**, podremos ver ya todo el contenido del mismo. Por ello, si ingresamos el **nombre del modelo** de nuevo, obtendremos los campos que hemos creado:

	<pre>
		2.3.0 :003 > Track
 		=> <b>Track(id: integer, title: string, album: string, artist: string, created_at: datetime, updated_at: datetime)</b>
	</pre>

	+ También puede contabilizar la cantidad de registros de la tabla.

	<pre>
		<b>Track.count</b>
		  (19.7ms)  SELECT COUNT(*) FROM `tracks`
 		<b>=> 1</b> 
	</pre>

	+ O también podemos seleccionar el primer registro:

	<pre>
		2.3.0 :005 > <b>Track.first</b>
		  Track Load (9.9ms) <b>SELECT  `tracks`.* FROM `tracks`  ORDER BY `tracks`.`id` ASC LIMIT 1</b>
 		<b>=> 1</b> 
	</pre>

	+ Así también podemos seleccionar el último registro:

	<pre>
		2.3.0 :005 > <b>Track.last</b>
		  Track Load (9.9ms) <b>SELECT  `tracks`.* FROM `tracks`  ORDER BY `tracks`.`id` DESC LIMIT 1</b>
		   => #Track id: 3, title: "Torquemada", album: "El silencio del guerrero", artist: "Avalanch", created_at: "2016-06-16 00:31:22", updated_at: "2016-06-16 00:31:22"
	</pre>	

	#### Para crear registros en la tabla que representa el modelo, podemos realizar las siguientes opciones.

	+ Para **crear un nuevo registro** podemos utilizar el comando **create**:

	<pre>
		2.3.0 :006 > <b>Track.create</b> <b>title:</b> 'Torquemada', <b>artist:</b> 'Avalanch', <b>album:</b> 'Llanto de un héroe'
	</pre>

	+ Podemos también crear objetos desde el **Rails Console**, instanciando los modelos sobre variables y modificando sus llaves para completar su contenido.

	<pre>
		2.2.2 :008 > cancion = <b>Track.new</b>
		   => #<Track id: nil, title: nil, album: nil, artist: nil, created_at: nil, updated_at: nil> 
		2.2.2 :009 > cancion.title = 'Nemo'
		   => "B"
		2.2.2 :010 > cancion.album = 'Nighthwish'
		   => "Nightwish"
		2.2.2 :011 > cancion.artist = 'Nigthwish
			= "Night'		   
		2.2.2 :012 > <b>cancion.save</b>
	</pre>

	* **El método "create" crea el objeto y lo guarda de una vez en la base de datos. Si usamos "new", crea el objeto pero lo tenemos que guardar manualmente en la DB**. 

	* El estado "nil", no significa vacío, sino que sin data.

	* La diferencia entre create y save, es que cuando se utiliza el método **create**, se envían en ese momento los parámetros a registrar. Por otra parte **new** se utiliza cuando los datos de la tabla, se van llenando mediante la instanciación de una variable. 


	+ Para obtener todos los datos de una tabla, basta con nombrarla y escribir su método **.all**.

	<pre>
		<b>Track.all</b>
		  Track Load (1.8ms)  SELECT "tracks".* FROM "tracks"
		 [Track id: 1, title: "S.T.A.Y.", album: "Interstellar Soundtrack", artist: "Hans Zimmer", created_at: "2016-06-10 00:48:56", updated_at: "2016-06-10 00:48:56", Track id: 2, title: "The mother we share", album: "The Bones of What You Believe", artist: "Chvrches", created_at: "2016-06-10 05:15:15", updated_at: "2016-06-10 05:15:15", Track id: 3, title: "Torquemada", album: "El silencio del guerrero", artist: "Avalanch", created_at: "2016-06-16 00:31:22", updated_at: "2016-06-16 00:31:22"]		
	</pre>	

	+ También podemos depositar el arreglo de respuesta, dentro de una variable y así desplegar únicamente el registro que deseamos. 

	<pre>
		2.3.0 :018 > <b>cancion = Track.last</b>
		Track Load (2.1ms)  SELECT  `tracks`.* FROM `tracks`  ORDER BY `tracks`.`id` DESC LIMIT 1
		 => Track id: 3, title: "Torquemada", album: "El silencio del guerrero", artist: "Avalanch", created_at: "2016-06-16 00:31:22", updated_at: "2016-06-16 00:31:22"

		2.3.0 :019 > cancion.artist
		  => "Avalanch"
		2.3.0 :019 > cancion.title
		  => "Torquemada"		  
	</pre>

	#### Para editar registros en los campos de la base de datos, tenemos varias formas de hacerlo.

	+ Para realizar un cambio en el **"registro"** de un **campo**, podemos utilizar el ejemplo anterior, mediante la variable de instancia en la cual tenemos depositado el valor del registro que seleccionamos. Por ello, podemos modificar el valor de los campos del mismo y luego guardarlos acompañando el **valor del modelo** con **save** porque se está incluyendo el valor sobre la misma variable de instancia. 

	<pre>
	2.3.0 :022 > cancion.album = 'Llanto de un héroe'
	  => "Llanto de un héroe"
	2.3.0 :023 > <b>cancion.save</b>
	   (0.2ms)  BEGIN
	  SQL (0.6ms)  UPDATE `tracks` SET `artist` = 'Avalanch', `album` = 'Llanto de un héroe', `updated_at` = '2016-06-16 02:33:04' WHERE `tracks`.`id` = 3
	   (0.7ms)  COMMIT
	 => true
	</pre>  

	+ Si queremos crear un registro varias veces para hacer un test del modelo, podemos utilizar un [**"ciclo times"**](http://ruby.bastardsbook.com/chapters/loops/) mezclado con el **modelo.create**:

	<pre>
	2.3.0 :024 > 5.times do
	2.3.0 :025 > Track.create title: 'Against the wind', artist: 'Stratovarius', album: 'Fourth Dimension'
	2.3.0 :026 > end

	   (1.5ms)  BEGIN
	  SQL (0.4ms)  INSERT INTO `tracks` (`title`, `artist`, `album`, `created_at`, `updated_at`) VALUES ('Against the wind', 'Stratovarius', 'Fourth Dimension', '2016-06-16 04:33:44', '2016-06-16 04:33:44')
	   (29.2ms)  COMMIT
	   (0.3ms)  BEGIN
	  SQL (0.3ms)  INSERT INTO `tracks` (`title`, `artist`, `album`, `created_at`, `updated_at`) VALUES ('Against the wind', 'Stratovarius', 'Fourth Dimension', '2016-06-16 04:33:44', '2016-06-16 04:33:44')
	   (10.3ms)  COMMIT
	   (0.3ms)  BEGIN
	  SQL (0.4ms)  INSERT INTO `tracks` (`title`, `artist`, `album`, `created_at`, `updated_at`) VALUES ('Against the wind', 'Stratovarius', 'Fourth Dimension', '2016-06-16 04:33:44', '2016-06-16 04:33:44')
	   (0.4ms)  COMMIT
	   (0.1ms)  BEGIN
	  SQL (0.3ms)  INSERT INTO `tracks` (`title`, `artist`, `album`, `created_at`, `updated_at`) VALUES ('Against the wind', 'Stratovarius', 'Fourth Dimension', '2016-06-16 04:33:44', '2016-06-16 04:33:44')
	   (0.4ms)  COMMIT
	   (0.2ms)  BEGIN
	  SQL (0.2ms)  INSERT INTO `tracks` (`title`, `artist`, `album`, `created_at`, `updated_at`) VALUES ('Against the wind', 'Stratovarius', 'Fourth Dimension', '2016-06-16 04:33:44', '2016-06-16 04:33:44')
	   (7.8ms)  COMMIT
	 => 5 
	</pre>

	![Image of times loop](https://github.com/williamromero/platzi-rails-course/blob/master/imgs/times%20loop.png?raw=true)

	#### Para buscar elementos en los campos de la base de datos, tenemos varias formas de hacerlo.

	+ Si sabemos directamente el **id** de un elemento, podemos utilizar el **metodo find**:
	
	<pre>
		<b>2.3.0 :027 > Track.find(1)</b>
		  Track Load (38.9ms)  SELECT  `tracks`.* FROM `tracks` WHERE `tracks`.`id` = 1 LIMIT 1
		   => #<Track id: 1, title: "S.T.A.Y.", album: "Interstellar Soundtrack", artist: "Hans Zimmer", created_at: "2016-06-10 00:48:56", updated_at: "2016-06-10 00:48:56"> 
	</pre>

	+ O también podemos traer un **grupo de registros** que cumplan con una **condición**:
	<pre>
		2.3.0 :028 > <b>canciones = Track.where artist: 'Stratovarius'</b>
		Track Load (53.6ms)  SELECT `tracks`.* FROM `tracks` WHERE `tracks`.`artist` = 'Stratovarius'
 		=> ActiveRecord::Relation [Track id: 4, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 5, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 6, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 7, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 8, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44"] 
	</pre>

	+ Así mismo, luego de hacer una query de búsqueda, podemos contar la cantidad de registros de la variable que contiene el modelo:

	<pre>
		2.3.0 :029 > <b>canciones.count</b>
		(37.8ms)  SELECT COUNT(*) FROM `tracks` WHERE `tracks`.`artist` = 'Stratovarius'
 		<b>=> 5</b> 
	</pre>

	+ Si necesitamos solo la **primera coincidencia** utilizamos:

	<pre>
		2.3.0 :030 > <b>Track.find_by title: 'Against the wind'</b>
		  Track Load (0.5ms)  SELECT  `tracks`.* FROM `tracks` WHERE `tracks`.`title` = 'Against the wind' LIMIT 1
		 => #<Track id: 4, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44"> 		
	</pre>

	#### Asimismo, para destruir elementos en los campos de la base de datos, tenemos también varias formas de hacerlo.

	+ Si necesitamos **borrar** un **registro**, podemos mezclar las herramientas de búsqueda y de destrucción para eliminar el mismo:

	<pre>
		2.3.0 :031 > <b>cancion = Track.find_by artist: "Stratovarius"</b>
		  Track Load (0.4ms)  SELECT  `tracks`.* FROM `tracks` WHERE `tracks`.`artist` = 'Stratovarius' LIMIT 1
		 => #<Track id: 9, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 23:52:48", updated_at: "2016-06-16 23:52:48"> 

		2.3.0 :032 > <b>cancion.destroy</b>

		   (0.2ms)  BEGIN
		  SQL (0.9ms)  DELETE FROM `tracks` WHERE `tracks`.`id` = 9
		   (0.5ms)  COMMIT
		 => #<Track id: 9, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 23:52:48", updated_at: "2016-06-16 23:52:48">
	</pre>

	+ Si necesitamos **borrar** un **grupo de elementos**:
	<pre>
		2.3.0 :033 > <b>canciones = Track.where artist: 'Stratovarius'</b>
		
			Track Load (53.6ms)  SELECT `tracks`.* FROM `tracks` WHERE `tracks`.`artist` = 'Stratovarius'
	 		=> ActiveRecord::Relation [Track id: 4, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 5, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 6, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 7, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44", Track id: 8, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44"] 
	 	
	 	2.3.0 :034 > <b>canciones.destroy_all</b>

 		   (14.3ms)  BEGIN
		  	SQL (36.8ms)  DELETE FROM `tracks` WHERE `tracks`.`id` = 4
		   (20.2ms)  COMMIT
		   (0.2ms)  BEGIN
		 	SQL (0.3ms)  DELETE FROM `tracks` WHERE `tracks`.`id` = 5
		   (15.9ms)  COMMIT
		   (0.6ms)  BEGIN
		  	SQL (7.3ms)  DELETE FROM `tracks` WHERE `tracks`.`id` = 6
		   (11.4ms)  COMMIT
		   (0.1ms)  BEGIN
		  	SQL (0.3ms)  DELETE FROM `tracks` WHERE `tracks`.`id` = 7
		   (0.4ms)  COMMIT
		   (0.1ms)  BEGIN
		  	SQL (0.3ms)  DELETE FROM `tracks` WHERE `tracks`.`id` = 8
		   (0.4ms)  COMMIT
			 => [#<Track id: 4, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44">, #<Track id: 5, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44">, #<Track id: 6, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44">, #<Track id: 7, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44">, #<Track id: 8, title: "Against the wind", album: "Fourth Dimension", artist: "Stratovarius", created_at: "2016-06-16 04:33:44", updated_at: "2016-06-16 04:33:44">] 
	</pre>

		![Image of registers destroy](https://github.com/williamromero/platzi-rails-course/blob/master/imgs/delete_regs.png?raw=true)

## Rutas

* Las rutas, son las direcciones a las que responde nuestra aplicación. Estas rutas, hacen referencia a los métodos del controlador.

	+ Para visualizar las rutas, podemos utilizar la función **"rake routes"** la cual, nos permitirá un acceso al listado de las vistas:
	<pre>
		rake routes
	</pre>

		![Image of routes](https://github.com/williamromero/platzi-rails-course/blob/master/imgs/routes.png?raw=true)	

	+ Para habilitar la configuración de las rutas de la aplicación, podemos acceder al archivo **routes**, que está ubicado en la ubicación siguiente:

	<pre>
		<b>config/routes.rb</b>
	</pre> 

	+ **Resources:** En el archivo routes podemos apreciar dicha palabra, la cual hace referencias a los componentes que queremos hacer accesibles a los usuarios mediante **"rutas"**. Un recurso es toda la **funcionalidad** que queremos exponer mediante rutas de nuestra app.

	<pre>
		Rails.application.routes.draw do
		  <b>resources :tracks</b>
		  # The priority is based upon order of creation: first created -> highest priority.
		  # See how all your routes lay out with "rake routes".

		  # You can have the root of your site routed with "root"
		  # root 'welcome#index'
	</pre>

	+ Con el método **resources**, podemos crear automáticamente las 7 rutas expuestas en la imagen anterior. Rails, las redirige automáticamente por la convención. Estas rutas, siguen el **patrón REST** que especifíca ciertas rutas predefinidas para trabajar con el controlador y su modelo.

## Vistas

* Las **vistas** son la interpretación visual de las rutas vinculadas a los métodos existentes del **controlador** en la que se despliegan los elementos del **modelo**.

* Desde el **Controlador Tracks**, podemos visualizar que las **rutas** y sus **vistas** responden a cada método existente.

	+ Para acceder a las **vistas** para su modificación, se puede ingresar a la carpeta:
	<pre>
		<b>app/views/</b>
	</pre>

	+ En este folder, encontraremos por defecto las **vistas** correspondientes a los **controladores**.
	<pre>
	<b> File: </b> tracks_controller.rb
	</pre>
	```
	class TracksController < ApplicationController
	  before_action :set_track, only: [:show, :edit, :update, :destroy]

	  # GET /tracks
	  # GET /tracks.json
	  def index
	    @tracks = Track.all
	  end

	  # GET /tracks/1
	  # GET /tracks/1.json
	  def show
	  end

	  # GET /tracks/new
	  def new
	    @track = Track.new
	  end

	  # GET /tracks/1/edit
	  def edit
	  end

	```


* **Layots:** Las layouts son gestoras del contenido que se repite dentro de la aplicación tales como el **header** o bien el **footer**. Los layouts se encargan de contener dentro de sí, todos los elementos comunes de las vistas.
	Para manipularlas o crear una, nos dirigmos al folder:

	<pre>
		<b> File: </b> /assets/views/layouts/application.html.erb
	</pre>

	```		
	################### LAYOUTS ################### 
	#<!DOCTYPE html>
	#	<html>
	#	<head>
	#	  <title>Musicapp</title>
	#	  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
	#	  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
	#	  <%= csrf_meta_tags %>
	#	</head>
	#	<body>
	#		<div class="container">
	################### LAYOUTS ################### 
	```		
	```
		<%= yield %> => El elemento yield, contendrá todo el contenido que se desplegará en la vista.
	```
	```
	################### LAYOUTS ################### 
	#		</div>
	#	</body>
	#</html>
	################### LAYOUTS ################### 
	```

	<pre>
		<b> File: </b> /assets/controllers/tracks/index.html.erb
	</pre>

	```	
	#################### YIELD #################### 
		<p id="notice"><%= notice %></p>
		<h1>Listing Tracks</h1>

		<table>
		  <thead>
		    <tr>
		      <th>Title</th>
		      <th>Album</th>
		      <th>Artist</th>
		      <th colspan="3"></th>
		    </tr>
		  </thead>

		  <tbody>
		    <% @tracks.each do |track| %>
		      <tr>
		        <td><%= track.title %></td>
		        <td><%= track.album %></td>
		        <td><%= track.artist %></td>
		        <td><%= link_to 'Show', track %></td>
		        <td><%= link_to 'Edit', edit_track_path(track) %></td>
		        <td><%= link_to 'Destroy', track, method: :delete, data: { confirm: 'Are you sure?' } %></td>
		      </tr>
		    <% end %>
		  </tbody>
		</table>

		<br>

		<%= link_to 'New Track', new_track_path %>

	#################### YIELD ####################
	```		


* **Helpers:** Son elementos de la lógica de la apliación, que podemos utilizar en todas las vistas como formularios, etc. Esto, con el motivo de no recurrir a crear bloques de código que para una acción común en cada vista. Por ejemplo, para poder visualizar que el mismo se utiliza dentro de una vista, pordemos dirigirnos al código del archivo:


	<pre>
		<b> File: </b> /assets/views/tracks/_form.html.erb
	</pre>


	```	
		<%= form_for(@track) do |f| %>
		  <% if @track.errors.any? %>
		    <div id="error_explanation">
		      <h2><%= pluralize(@track.errors.count, "error") %> prohibited this track from being saved:</h2>

		      <ul>
		      <% @track.errors.full_messages.each do |message| %>
		        <li><%= message %></li>
		      <% end %>
		      </ul>
		    </div>
		  <% end %>

		  <div class="field">
		    <%= f.label :title %><br>
		    <%= f.text_field :title %>
		  </div>
		  <div class="field">
		    <%= f.label :album %><br>
		    <%= f.text_field :album %>
		  </div>
		  <div class="field">
		    <%= f.label :artist %><br>
		    <%= f.text_field :artist %>
		  </div>
		  <div class="actions">
		    <%= f.submit %>
		  </div>
		<% end %>

	```	

	<pre>
		<b> File: </b> /assets/views/tracks/new.html.erb
	</pre>


	```	
		<h1>New Track</h1>

		<%= render 'form' %>
		<%= link_to 'Back', tracks_path %>

	```

## Creación de Modelos sin uso de Scaffold

* Podemos crear estructuras de modelos y controladores sin el uso de gestores como **scaffold**. Esto, debido a que **Rails** nos provee ya de métodos para realizar de forma manual las estructuras de cada modelo.

* Esta generación manual, también ubicará los archivos generados en las ubicaciones que por convención les corresponde.

* Para crear un **MODELO** de forma manual, es conveniente dirigirse a la carpeta:
	
	<pre>
		<b> File: </b> /assets/models/<b>playlist.rb</b>
	</pre>

* Para **CREAR EL MODELO**, abrimos el archivo **playlist.rb** y agregamos el siguiente código. Tomar en cuenta que los modelos se declaran con la primera inicial **MAYÚSCULA Y EN SINGULAR**. También que si creamos el **modelo** en **INGLÉS**, la plataforma de **Rails** podrá crear los **controladores** en **PLURAL**. No hay que olvidar **salvar el archivo** para que en el paso anterior, no tengamos ningún problema.

	<pre>
		class <b>Playlist &lt; ActiveRecord::Base</b>

		end
	</pre> 

* Si queremos inspeccionar dentro de la **Base de Datos** si el **modelo** ha sido conectado, sin tener que crear vistas, podemos ingresar mediante **Rails Console**:
	
	<pre>
		Ingresamos a la consola con el comando <b>rails console</b>
		2.3.0 :001 > <b>Playlist.connection</b>
	</pre>
	![Image from DB Connection](https://github.com/williamromero/platzi-rails-course/blob/master/imgs/playlist-connection.png?raw=true)

	+ **OJO** Si obtenemos una imagen similar, veremos que el **modelo** ha sido creado correctamente.

* Luego de crear el modelo, se deberá de crear la migración, que es el archivo en el que se escribirá la estructura:

	<pre>
		rails <b>generate migration</b> Create_LandingPages
						**action**-**Nombre de Modelo**
	</pre>

* Para comprobar el estado de la **Base de Datos** y si ya hemos hecho la conexión de la **Tabla Playlist**, utilizamos el comando **rake db:migrate:status**:

	<pre>
		rake <b>db:migrate:status</b>
	</pre>
	```
		 Status   Migration ID    Migration Name
		--------------------------------------------
		   up     20160609161056  Create    tracks
   	```

* Con ello, veremos cual es el **estado** de la versión de la migración. Por ello, cuando utilizamos el comando **rake db:migrate**, tomamos los cambios que existen en nuestra **base de datos**.

### Migraciones: 

* Las migraciones son **versiones** de nuestra **base de datos**. Lo que nos permite **crear un tabla de un modelo sin especificar su estructura** o bien, para modificarla de acuerdo a nuestras necesidades.

* Si desde consola, nos conectamos mediante el comando **Playlist.connection** y no obtenemos ningún problema, debemos de evaluar si la tabla no está creada de la siguiente forma:

	<pre>
		2.3.0 :003 > <b>Playlist</b>
		<b> => Playlist(Table doesn't exist) </b>
		2.3.0 :004 > 
	</pre>

* Gracias a este indicador, sabemos que aunque hemos conectado el **modelo**, aún no hemos creado la **"tabla Playlist"** debido a que **no hemos actualizado la versión** del archivo de **migración**. Cuando actualicemos la versión de la migración, **obtendremos** como resultado la **creación de la tabla Playlists**. Si nos preguntamos el porqué la tabla se crea cuando actualizamos la **migración**, es debido a que dentro del archivo de migración, que se genera cuando se conecta el modelo con la DB, este mismo contiene un código interno que el generador de migraciones interpretará para crear la tabla. Vea el siguiente ejemplo:

	<pre>
		<b>Ruta:</b> musicapp/db/migrate/20160622010452_create_playlists.rb

		class CreatePlaylists &lt; ActiveRecord::Migration
		  def change
		    create_table :playlists do |t|
		    end
		  end
		end
	</pre>

* No debemos olvidar que el nombre de las tablas, se generan en **PLURAL** y los del modelo en **SINGULAR**. 

	<pre>
		rails generate migration <b>Create</b>Playlists
		Running via Spring preloader in process 14014
	      invoke  active_record
	      create  db/migrate/20160622010452_create_playlists.rb
	</pre>

* Podemos ver, que con la ayuda de la clase [**"objeto-relacional"**](http://codehero.co/activerecord-parte-1/) de conexión a DBs, **"Active Record"** se ha creado exitosamente la migración del modelo **"Playlists"**.

* Habiendose realizado la migración y por consiguiente, la creación del modelo, podemos comenzar a **ingresar los campos de la tabla**, en el archivo de la migración generado:

	<pre>
		<b>Ruta:</b> musicapp/db/migrate/20160622010452_create_playlists.rb

		class CreatePlaylists &lt; ActiveRecord::Migration
		  def change
		    create_table :playlists do |t|
		    	<b>t.string  :name</b>
		    	<b>t.integer :number_of_votes</b>
		    end
		  end
		end
	</pre>

* Luego de haber salvado los cambios en el archivo de migración de la **"tabla Playlists"**, si activamos el servidor, obtendremos el siguiente error en la aplicación, el cual se debe a que no hemos actualizado los cambios:

	![Imagen de Error Migration](https://github.com/williamromero/platzi-rails-course/blob/master/imgs/playlists-error-migration.png?raw=true)

* Por lo tanto, deberemos de actualizar las migraciones de nuestra base de datos. Para saber cual es el modelo que requiere que se actualice su versión de migración, podemos ingresar el siguiente comando en la Terminal:

	<pre>
		rake db:migrate:status

		database: musicapp

		 Status   Migration ID    Migration Name
		--------------------------------------------------
		   up     20160609161056  Create 	tracks
		  down    20160622010452  Create 	playlists
	</pre>

* Si vemos que el **status** de migración de algún modelo, se encuentra con valor **"down"**, debemos de correr una actualización de la migración, debido a que aunque la migración haya sido generada, la misma no ha sido activada para la aplicación y por lo tanto la tabla no ha sido creada, lo cual nos requiere que utilicemos el comando:

	<pre>
		<b>rake db:migrate</b>
		== 20160622010452 CreatePlaylists: migrating ==================================
		-- create_table(:playlists)
		   -> 0.0641s
		== 20160622010452 CreatePlaylists: migrated (0.0643s) =========================
	</pre>

* Ahora, si vamos a la consola de Rails, veremos que la tabla de **Playlist** ha sido creada, con un campo más que se llama **"id"**, el cual servirá como contador incrementador para cada registro:

	<pre>
		2.3.0 :002 > <b>Playlist</b>
 		 => Playlist(id: integer, name: string, number_of_votes: integer) 
	</pre>

	+ **OJO:** Para recargar la consola de Rails, podemos presionar el comando:

	<pre>
		<b>reload!</b>
		Reloading...
		=> true
	</pre>

* Ahora, si queremos ubicar registros dentro de la tabla, podemos realizar búsquedas en la tabla:

	<pre>
	2.3.0 :009 > <b>Playlist.find_by id='1'</b>
	  Playlist Load (10.8ms)  SELECT  `playlists`.* FROM `playlists` WHERE (1) LIMIT 1
	 => nil 
	</pre>

* Ahora, si cargamos el servidor de nuevo y tratamos de dirigirnos a la ruta que corresponde a nuestro **modelo**, tendremos dos errores los cuales deberemos de manejar. El primero, es que no podrá encontrar un registro de rutas del **modelo Routes**.

	![Routing Error](https://github.com/williamromero/platzi-rails-course/blob/master/imgs/no-route-matches.png?raw=true)

* Este error, se produce porque aún no existen **rutas** para manipular las vistas del modelo. Por ello, deberán de agregarse en el archivo **routes.rb**.

	<pre>
		<b> File: </b> /config/routes.rb
	</pre>

	<pre>
		Rails.application.routes.draw do
		  resources :tracks
		  <b>resources :playlists</b>
		end

		iMac-de-William:musicapp williamromero$ <b>rake routes</b>
		       Prefix Verb   URI Pattern                   Controller#Action
		       tracks GET    /tracks(.:format)             tracks#index
		              POST   /tracks(.:format)             tracks#create
		    new_track GET    /tracks/new(.:format)         tracks#new
		   edit_track GET    /tracks/:id/edit(.:format)    tracks#edit
		        track GET    /tracks/:id(.:format)         tracks#show
		              PATCH  /tracks/:id(.:format)         tracks#update
		              PUT    /tracks/:id(.:format)         tracks#update
		              DELETE /tracks/:id(.:format)         tracks#destroy
		    playlists GET    /playlists(.:format)          playlists#index
		              POST   /playlists(.:format)          playlists#create
		 new_playlist GET    /playlists/new(.:format)      playlists#new
		edit_playlist GET    /playlists/:id/edit(.:format) playlists#edit
		     playlist GET    /playlists/:id(.:format)      playlists#show
		              PATCH  /playlists/:id(.:format)      playlists#update
		              PUT    /playlists/:id(.:format)      playlists#update
		              DELETE /playlists/:id(.:format)      playlists#destroy

	</pre>

* Ahora, si volvemos a activar al servidor de aplicaciones tendremos otro error, que corresponde a que aunque las **rutas** ya han sido creadas, el **"controlador Playlists"** aún figura en la carpeta **controllers**. Esto, porque el **controlador** se encarga de gestionar las peticiones al servidor de aplicaciones, y buscar entre las **rutas** existentes para enviarles los datos y que el mismo, maneje con el **modelo**, las  

el controlador al que hace mención esa ruta

* Ahora, al volver a activar el servidor de aplicaciones y actualizar el explorador, tendremos otro error, el cual sucede porque aunque las **rutas** han sido creadas, el **controlador Playlists** aún no existe. Los controladores, se encargan de gestionar las peticiones al servidor de aplicaciones. Cada vez que se hace referencia a una ruta de las que existen, estos evalúan si existe un controlador que corresponda a una acción del mismo y así, le es envida la información para su manejo y su posterior despliegue en la vista. Por ello, tenemos que **crear el controlador**.

### Creación de un Controlador: 

* Para crear un controlador, podemos crear un archivo nuevo en la carpeta controllers, con el nombre de nuestro modelo, en plural o bien, generarlo de un método **"generate"**.
	<pre>
		rails g controller <b>playlists</b>
	</pre>

	<pre>
		iMac-de-William:musicapp williamromero$ rails g controller <b>playlists</b>
		Running via Spring preloader in process 35846
		      create  app/controllers/playlists_controller.rb
		      invoke  erb
		      create    app/views/playlists
		      invoke  test_unit
		      create    test/controllers/playlists_controller_test.rb
		      invoke  helper
		      create    app/helpers/playlists_helper.rb
		      invoke    test_unit
		      invoke  assets
		      invoke    js
		      create      app/assets/javascripts/playlists.js
		      invoke    scss
		      create      app/assets/stylesheets/playlists.scss	
	</pre>

* Este método, creará el folder de las vistas del controlador, sus assets y sus helpers. Al ingresar al folder **Controllers**, podrá apreciar que dentro del mismo se ha creado un archivo con el nombre del controlador el cual al abrir se verá de esta forma:

	<pre>
		<b> File: </b> app/controllers/playlists_controller.rb
	</pre>

	<pre>
		class PlaylistsController &lt; <b>ApplicationController</b>


		end		
	</pre>

* La herencia de la clase **ApplicationController** a nuestro controlador **PlaylistController**, permite la interacción entre las rutas y los métodos que responden a las mismas. 

* Ahora, si vamos a recargar el explorador, obtendremos otro error, el cual será producido porque aunque hemos creado ya el **controlador**, aún nos faltan los **métodos** que responderán a las **llamadas de las rutas existentes para cada modelo**.

	![Unknown Action](https://github.com/williamromero/platzi-rails-course/blob/master/imgs/unknown-action.png?raw=true)

* Para acceder a un método, por ejemplo en la imagen anterior **index**, debemos de programar la lógica del método. 

	<pre>
		Link: app/controllers/<b>playlists_controller.rb</b>
	</pre>

	<pre>
		class PlaylistsController &lt; ApplicationController
			def <b>index</b>
			end
		end
	</pre>

* Pero al iniciar el servidor de aplicaciones de nuevo, habrá otro problema producido por **"el generador de controladores"**, el cual ha creado los **folders** del controlador respectivo pero sin **ningún archivo interno** (los css & js si fueron creados. Por lo tanto para crear las **vistas** que se le requieren al **controlador**, se deberá de ingresar en el **directorio del controlador** en desarrollo y luego se deberá crear un archivo dentro del mismo, con el **nombre del método** que responde a la ruta requerida.  

	<pre>
		cd app/views/<b>playlists</b>/
	</pre>

	<pre>
		touch <b>index.html.erb</b>
	</pre>

* Los archivos con extensión **"ERB"** permiten introducir dentro de las páginas, código **Ruby**, el cual requeriremos para solicitar información al **controlador** y que el mismo, la manipule en el **modelo**.

* En el caso del **action index**, sabemos que deberá de desplegarnos toda la información, por lo tanto, editaremos el archivo que hemos creado anteriormente.

	<pre>
		app/views/<b>playlists</b>/<b>index.html.erb</b>
	</pre>

	```
		<h1> Listado Playlists </h1>
		<table>
			<thead>
				<tr>
					<th> Name </th>
					<th> Number of Votes </th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	```

#### ¿Como mostrar el contenido del modelo en una vista?

* Para cargar el contenido de un **modelo** en una **vista**, debemos de crear el **action** en el controlador, definir lo que vamos a manejar en la vista que corresponde al mismo y luego, mediante la **instanciación** del un objeto que corresponde al **modelo** que el **controlador** maneja, podremos desplegarlo en la vista. 

* Recordemos que los controladores reciben las peticiones HTTP, acceden o manipulan a los modelos y luego se encargan de decirles a la vista, como representarlos.

* Tomar en cuenta, que la sintáxis de **ERB**, guarda similitudes con la de **PHP** en la cual hay que hacer el llamado al lenguaje de programación mediante las llaves:
"**<%= %>**". Todo el código que se introduzca dentro las llaves, será compilado como **Ruby** y por lo tanto, podremos utilizarlo para acceder a las **variables de instancia** del **controlador**. 

	+ **<%= %>** Se utiliza para imprimir datos de Ruby. Si el código tiene el **signo "="**, nos regresa el contenido de la iteración o cualquier objeto que se incluya dentro de ambos signos.

##### Ciclos (Iteracción de Data):

* **Método Each:** La estructura each es la forma más común de iterar un registro. Por ello su construcción es sumamente fácil de navegar.

	<pre>
		&lt;%= <b>@playlists</b>.each do <b>|playlist|</b> %&gt;
			Variable de 		Variable
			 Instancia 			Temporal
		&lt;% end %&gt;

	</pre>

* Cuando utilizamos el **método "ALL"**, obtenemos una **colección de registros** que debemos de **iterar** para poder desplegar en una vista. Por ello, es común su despliegue mediante los **ciclos**.

	<pre>
		app/<b>controllers</b>/<b>playlists_controller.rb</b>
	</pre>

	```
		class PlaylistsController < ApplicationController
			def index
				@playlists = Playlist.all
			end
		end
	```	


	<pre>
		app/views/<b>playlists</b>/<b>index.html.erb</b>
	</pre>

	```
	<h1> Listado Playlists </h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th> Name </th>
				<th> Number of Votes </th>
			</tr>
		</thead>
		<tbody>
			<% @playlists.each do |playlist| %>
			<tr>
				<td><%= playlist.name %></td>
				<td><%= playlist.number_of_votes %></td>
			</tr>
			<% end %>	
		</tbody>
	</table>		
	```
 
* Como áun no hemos desarrollado toda la estructura de archivos para **crear, eliminar o editar registros**, crearemos un un registro mediante **rails console**.

	<pre>
		2.3.0 :003 > Playlist.<b>create name:</b>'Heavy Metal List', <b>number_of_votes:</b>'2'
		   (0.3ms)  BEGIN
  		   SQL (62.9ms)  INSERT INTO `playlists` (`name`, `number_of_votes`) VALUES ('Heavy Metal List', 2)
   		   (9.6ms)  COMMIT
 		=> #&lt;Playlist id: 1, name: "Heavy Metal List", number_of_votes: 2 &gt;

		2.3.0 :004 > Playlist.create name:'Latin Pop', number_of_votes:'10'
		   (0.3ms)  BEGIN
		   SQL (0.5ms)  INSERT INTO `playlists` (`name`, `number_of_votes`) VALUES ('Latin Pop', 10)
		   (30.4ms)  COMMIT
		=> #&lt;Playlist id: 2, name: "Latin Pop", number_of_votes: 10 &gt; 

	</pre> 

* Para mostrar la ruta y acción **"SHOW"**, deberemos de crear el método en su **controlador** y así mismo, su vista. Por lo tanto crearemos ambos archivos.

	<pre>
		cd app/views/<b>playlists</b>
		touch <b>show.html.erb</b>
	</pre>

##### Parámetros:

* Los [parámetros](http://librosweb.es/libro/introduccion_rails/capitulo_5.html) son la forma de comunicación entre el usuario y la aplicación. Esto se realiza mediante verbos HTTP, y existen dos tipos de parámetros: Los que pueden ser enviados por el URL (GET) en forma de query y el segundo que puede ser referido a los enviados por un POST donde la información puede venir de un formulario de datos.

* El método **params** es el objeto que representa a los parámetros que vienen en una URL o un Formulario. Este, devuelve un **objeto "ActiveSupport::HashWithIndifferentAccess"**, que permite acceder a las claves **hash** usando tanto cadenas de texto como símbolos. 

	<pre>
		nano app/controllers/<b>playlists_controller.rb</b>
	</pre>
	```
		def show
			@playlist_show = Playlist.find(params[:id])
	  		respond_to do |format|
	    		format.html # show.html.erb
	    		format.json  { render :json => @playlist_show }
	  		end
		end
	```

#### ¿Cómo desplegar un solo registro?

* Para ello, debemos de utilizar la **variable de instancia** creada en el método **SHOW** en la vista que se ha creado para dicha acción:

	```
		<h3> Detalle de Registro No. <%= @playlist_show.id %>
		<hr/>

		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th><p>Id</p></th>
					<th><p>Nombre</p></th>
					<th><p>Número de Votos</p></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><p> <%= @playlist_show.id %></p></td>
					<td><p> <%= @playlist_show.name %></p></td>
					<td><p> <%= @playlist_show.number_of_votes %></p></td>
				</tr>
			</tbody>
		</table>		
	```

#### ¿Cómo crear un registro?


* Para ello, debemos de crear un archivo que responda al método del **controlador**. En este caso, la acción será **NEW**. En este caso, deberemos de utilizar un **helper form** para cargar nuestros datos al modelo.

* Primero, deberemos de crear **la vista** con su helper **form_for()** para introducir los nuevos registros dentro del formulario.

* Luego, debemos de crear la **acción** en el **controlador**.

	<pre>
		nano app/controllers/<b>playlists_controller.rb</b>
	</pre>

	```
		def new
		  @playnew = <b>Playlist.new</b>
		end

		def create
	 	  @playsave = Playlist.new(playlist_params)
		  if @playsave.save
		  	redirect_to @playsave
		  else
		  	render :index 
		  end
		end 

		private

			def playlist_params
			  params.require(:playlist).permit(:name, :number_of_votes)
			end
	```

* El uso de [**"params"**](https://github.com/rails/strong_parameters) se expande a diferentes funciones en las cuales se requiere de obtener los datos de un formulario o bien de una URL, en la que estos vayan implícitos. Para crear registros, se genera un método **"NEW"**, el cual crea un **"index"** vacío que será rellenado en el método **"CREATE"**.

* En el método **"CREATE"**, se generará de nuevo el índice para luego rellenarlo con la función Model.**save**. Si se desea, se puede crear un método que requiera los parámetros o bien, implementarlos dentro de la misma búsqueda.

	<pre>
		cd app/views/<b>playlists</b>
		touch <b>new.html.erb</b>
	</pre>

	```
		<%= form_for(@playnew) do |f| %>
			<table>
				<tr>
					<td><%= f.label :name %></td>
					<td><%= f.text_field :name %></td>
				</tr>
				<tr>
					<td><%= f.label :number_of_votes %></td>
					<td><%= f.text_field :number_of_votes %></td>
				</tr>
			</table>
			<%= f.submit "Guardar" %>
		<% end %>
	```

* Luego, al dirigirse a la **vista**, se hará uso del **[helper "Form_for"](http://rubysur.org/introduccion.a.rails/capitulos/puesta_en_marcha/el_primer_formulario.html)**, el cual instanciará los campos del modelo, y creará (objetos) cuadros de texto identificados especialmente para su manejo dentro de la variable **["f"](https://carlossanchezperez.wordpress.com/2015/01/11/rails-4-como-crear-un-formulario-y-utilizar-accepts_nested_attributes_for-con-has-many-through-relations-algunos-consejos-para-entenderlo-desde-cero/)**.

* Los helpers nos ayúdan a crear etiquetas que reducirán la sintaxis de nuestro código.

* En esta acción, también se creará un cuadro de contenido oculto el cual contendrá un token de autenticidad, el cual será evaluado al momento de registrar la operación. Si este, es modificado por alguna razón, esta ya no se realizará por no coincidir con el valor establecido.




