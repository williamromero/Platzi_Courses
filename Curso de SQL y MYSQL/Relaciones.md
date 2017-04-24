Create DBs:
<pre>
  mysql> <b>create database platzi;</b>
</pre>

Use DB created:
<pre>
  mysql> <b>use platzi;</b>
  <b>Database changed</b>
</pre>

Create Table:
<pre>
CREATE TABLE books (
  book_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  publisher_id INTEGER UNSIGNED NOT NULL,
  title VARCHAR(60) NOT NULL,
  description TEXT,
  author VARCHAR(60) NOT NULL,
  price DECIMAL(5,2),
  copies INT NOT NULL DEFAULT 0
);

CREATE TABLE publishers (
  publisher_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  country VARCHAR(20)
);

CREATE TABLE users (
  user_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE actions (
  action_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  book_id INTEGER UNSIGNED NOT NULL,
  user_id INTEGER UNSIGNED NOT NULL,
  action_type ENUM('venta', 'prestamo', 'devolucion')
    NOT NULL DEFAULT 'venta',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
</pre>

Table Views:

<pre>
  mysql> <b>describe books</b>;

  +--------------+------------------+------+-----+---------+----------------+
  | Field        | Type             | Null | Key | Default | Extra          |
  +--------------+------------------+------+-----+---------+----------------+
  | book_id      | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
  | publisher_id | int(10) unsigned | NO   |     | NULL    |                |
  | title        | varchar(60)      | NO   |     | NULL    |                |
  | author       | varchar(60)      | NO   |     | NULL    |                |
  | price        | decimal(5,2)     | YES  |     | NULL    |                |
  +--------------+------------------+------+-----+---------+----------------+

  mysql> <b>show tables;</b>

  +------------------+
  | Tables_in_platzi |
  +------------------+
  | books            |
  | publishers       |
  | users            |
  +------------------+
</pre>

Insert Information:

<pre>

  mysql> desc publishers;
  +--------------+------------------+------+-----+---------+----------------+
  | Field        | Type             | Null | Key | Default | Extra          |
  +--------------+------------------+------+-----+---------+----------------+
  | publisher_id | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
  | name         | varchar(100)     | NO   |     | NULL    |                |
  | country      | varchar(20)      | YES  |     | NULL    |                |
  +--------------+------------------+------+-----+---------+----------------+  
</pre>

##TABLES CRUD:

Insert Data:
<pre>
INSERT INTO publishers(name, country) VALUES ('Platzi', 'USA');
INSERT INTO publishers(publisher_id, name, country) VALUES ('10',Santillana', 'MX');
INSERT INTO publishers(name, country) VALUES ('MTI', 'MX');

mysql> SELECT * from publishers;
+--------------+------------+---------+
| publisher_id | name       | country |
+--------------+------------+---------+
|            1 | Platzi     | USA     |
|           10 | Santillana | MX      |
|           11 | MTI        | MX      |
+--------------+------------+---------+
</pre>

Count rows:

<pre>
select count(publisher_id) from publishers;

OR 

select count(*) from publishers;

+---------------------+
| count(publisher_id) |
+---------------------+
|                   3 |
+---------------------+
1 row in set (0.01 sec)
</pre>

Delete INFO and METADATA:

<pre>

  mysql> TRUNCATE publishers;                                                      
  Query OK, 0 rows affected (0.00 sec)

  mysql> SELECT * from publishers;
  Empty set (0.00 sec)
</pre>

Set many data:

<pre>
  mysql> INSERT INTO publishers(publisher_id, name, country) VALUES
      ->   (1, 'OReilly', 'USA'),
      ->   (2, 'Santillana', 'Mexico'),
      ->   (3, 'MIT Edu', 'USA'),
      ->   (4, 'UTPC', 'Colombia'),
      ->   (5, 'Platzi', 'USA');
  Query OK, 5 rows affected (0.00 sec)
  Records: 5  Duplicates: 0  Warnings: 0

  mysql> SELECT * from publishers;
  +--------------+------------+----------+
  | publisher_id | name       | country  |
  +--------------+------------+----------+
  |            1 | OReilly    | USA      |
  |            2 | Santillana | Mexico   |
  |            3 | MIT Edu    | USA      |
  |            4 | UTPC       | Colombia |
  |            5 | Platzi     | USA      |
  +--------------+------------+----------+
  5 rows in set (0.00 sec)
</pre>

Drop Complete Table:

<pre>
  mysql> drop table books;
  Query OK, 0 rows affected (0.01 sec)
</pre>

Fill books with tuplas:

<pre>
INSERT INTO books(publisher_id, title, author, description, price, copies) VALUES
    (1, 'Mastering MySQL', 'John Goodman', 'Clases de bases de datos usando MySQL', 10.50, 4),
    (2, 'Trigonometria avanzada', 'Pi Tagoras', 'Trigonometria desde sus origenes', 7.30, 2),
    (3, 'Advanced Statistics', 'Carl Gauss', 'De curvas y otras graficas', 23.60, 1),
    (4, 'Redes Avanzadas', 'Tim Bernes-Lee', 'Lo que viene siendo el Internet', 13.50, 4),
    (2, 'Curvas Parabolicas', 'Napoleon TNT', 'Historia de la parabola', 6.99, 10),
    (1, 'Ruby On (the) Road', 'A Miner', 'Un nuevo acercamiento a la programacion', 18.75, 4),
    (1, 'Estudios basicos de estudios', 'John Goodman', 'Clases de datos usando MySQL', 10.50 , 4),
    (4, 'Donde esta Y?', 'John Goodman', 'Clases de datos usando MySQL', 10.50, 4),
    (3, 'Quimica Avanzada', 'John White', 'Profitable studies on chemistry', 45.35, 1),
    (4, 'Graficas Matematicas', 'Rene Descartes', 'De donde viene el plano', 13.99, 7),
    (4, 'Numeros Importantes', 'Leonard Euler', 'De numeros que a veces nos sirven', 10, 3),
    (3, 'Modelado de conocimiento', 'Jack Friedman', 'Una vez adquirido, como se guarda el conocimiento', 29.99, 2),
    (3, 'Teoria de juegos', 'John Nash', 'A o B?', 12.55, 3),
    (1, 'Calculo de variables', 'Brian Kernhigan', 'Programacion mega basica', 9.50, 3),
    (5, 'Produccion de streaming', 'Juan Pablo Rojas', 'De la oficina ala pan', 23.49, 9),
    (5, 'ELearning', 'JFD & DvdH', 'Diseno y ejecucion de educacion online', 23.55, 4),
    (5, 'Pet Caring for Geeks', 'KC', 'Que tu perro aprenda a programar', 18.79, 3 ),
    (1, 'Algebra basica', 'Al Juarismi', 'Esto de encontrar X o Y, dependiendo', 13.50, 8);

mysql> select * from books;
+---------+--------------+------------------------------+---------------------------------------------------+------------------+-------+--------+
| book_id | publisher_id | title                        | description                                       | author           | price | copies |
+---------+--------------+------------------------------+---------------------------------------------------+------------------+-------+--------+
|       1 |            1 | Mastering MySQL              | Clases de bases de datos usando MySQL             | John Goodman     | 10.50 |      4 |
|       2 |            2 | Trigonometria avanzada       | Trigonometria desde sus origenes                  | Pi Tagoras       |  7.30 |      2 |
|       3 |            3 | Advanced Statistics          | De curvas y otras graficas                        | Carl Gauss       | 23.60 |      1 |
|       4 |            4 | Redes Avanzadas              | Lo que viene siendo el Internet                   | Tim Bernes-Lee   | 13.50 |      4 |
|       5 |            2 | Curvas Parabolicas           | Historia de la parabola                           | Napoleon TNT     |  6.99 |     10 |
|       6 |            1 | Ruby On (the) Road           | Un nuevo acercamiento a la programacion           | A Miner          | 18.75 |      4 |
|       7 |            1 | Estudios basicos de estudios | Clases de datos usando MySQL                      | John Goodman     | 10.50 |      4 |
|       8 |            4 | Donde esta Y?                | Clases de datos usando MySQL                      | John Goodman     | 10.50 |      4 |
|       9 |            3 | Quimica Avanzada             | Profitable studies on chemistry                   | John White       | 45.35 |      1 |
|      10 |            4 | Graficas Matematicas         | De donde viene el plano                           | Rene Descartes   | 13.99 |      7 |
|      11 |            4 | Numeros Importantes          | De numeros que a veces nos sirven                 | Leonard Euler    | 10.00 |      3 |
|      12 |            3 | Modelado de conocimiento     | Una vez adquirido, como se guarda el conocimiento | Jack Friedman    | 29.99 |      2 |
|      13 |            3 | Teoria de juegos             | A o B?                                            | John Nash        | 12.55 |      3 |
|      14 |            1 | Calculo de variables         | Programacion mega basica                          | Brian Kernhigan  |  9.50 |      3 |
|      15 |            5 | Produccion de streaming      | De la oficina ala pan                             | Juan Pablo Rojas | 23.49 |      9 |
|      16 |            5 | ELearning                    | Diseno y ejecucion de educacion online            | JFD & DvdH       | 23.55 |      4 |
|      17 |            5 | Pet Caring for Geeks         | Que tu perro aprenda a programar                  | KC               | 18.79 |      3 |
|      18 |            1 | Algebra basica               | Esto de encontrar X o Y, dependiendo              | Al Juarismi      | 13.50 |      8 |
+---------+--------------+------------------------------+---------------------------------------------------+------------------+-------+--------+
18 rows in set (0.00 sec)


mysql> INSERT INTO actions (book_id, user_id, action_type) values
    ->   (3, 2, 'venta'),
    ->   (6, 1, 'devolucion'),
    ->   (7, 7, 'devolucion'),
    ->   (2, 5, 'venta'),
    ->   (10, 9, 'venta'),
    ->   (18, 8, 'devolucion'),
    ->   (12, 4, 'venta'),
    ->   (1, 3, 'venta'),
    ->   (4, 5, 'devolucion'),
    ->   (5, 2, 'venta');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0
</pre>

Display in Cards:

<pre>
mysql> select * from books where book_id = 6 \G                                                                                                                                      *************************** 1. row ***************************
     book_id: 6
publisher_id: 1
       title: Ruby On (the) Road
 description: Un nuevo acercamiento a la programacion
      author: A Miner
       price: 18.75
      copies: 4
1 row in set (0.00 sec)
</pre>

##TABLES ASSOCIATIONS:
In this case, actions connect with the USERS and BOOKS

<pre>
  SELECT a.action_id, b.title
  FROM actions AS a 
  LEFT JOIN books AS b
    ON b.book_id = a.book_id;

  +-----------+------------------------------+
  | action_id | title                        |
  +-----------+------------------------------+
  |         1 | Advanced Statistics          |
  |         2 | Ruby On (the) Road           |
  |         3 | Estudios basicos de estudios |
  |         4 | Trigonometria avanzada       |
  |         5 | Graficas Matematicas         |
  |         6 | Algebra basica               |
  |         7 | Modelado de conocimiento     |
  |         8 | Mastering MySQL              |
  |         9 | Redes Avanzadas              |
  |        10 | Curvas Parabolicas           |
  +-----------+------------------------------+
  10 rows in set (0.00 sec)    

  SELECT a.action_id, b.title, a.action_type
  FROM actions AS a 
  LEFT JOIN books AS b
    ON b.book_id = a.book_id;

mysql>   SELECT a.action_id, b.title, a.action_type
    ->   FROM actions AS a 
    ->   LEFT JOIN books AS b
    ->     ON b.book_id = a.book_id;
  
  +-----------+------------------------------+-------------+
  | action_id | title                        | action_type |
  +-----------+------------------------------+-------------+
  |         1 | Advanced Statistics          | venta       |
  |         2 | Ruby On (the) Road           | devolucion  |
  |         3 | Estudios basicos de estudios | devolucion  |
  |         4 | Trigonometria avanzada       | venta       |
  |         5 | Graficas Matematicas         | venta       |
  |         6 | Algebra basica               | devolucion  |
  |         7 | Modelado de conocimiento     | venta       |
  |         8 | Mastering MySQL              | venta       |
  |         9 | Redes Avanzadas              | devolucion  |
  |        10 | Curvas Parabolicas           | venta       |
  +-----------+------------------------------+-------------+    

mysql> SELECT a.action_id,
    ->     b.title,
    ->     a.action_type,
    ->     u.name
    -> FROM actions AS a
    -> LEFT JOIN books AS b
    ->     ON b.book_id = a.book_id
    -> LEFT JOIN users AS u
    ->     ON a.user_id = u.user_id;
+-----------+------------------------------+-------------+----------+
| action_id | title                        | action_type | name     |
+-----------+------------------------------+-------------+----------+
|         1 | Advanced Statistics          | venta       | Laura    |
|         2 | Ruby On (the) Road           | devolucion  | Ricardo  |
|         3 | Estudios basicos de estudios | devolucion  | Maria    |
|         4 | Trigonometria avanzada       | venta       | Fernanda |
|         5 | Graficas Matematicas         | venta       | Jorge    |
|         6 | Algebra basica               | devolucion  | Susana   |
|         7 | Modelado de conocimiento     | venta       | Sofia    |
|         8 | Mastering MySQL              | venta       | Jose     |
|         9 | Redes Avanzadas              | devolucion  | Fernanda |
|        10 | Curvas Parabolicas           | venta       | Laura    |
+-----------+------------------------------+-------------+----------+
10 rows in set (0.00 sec)

mysql> SELECT a.action_id,
        b.title,
        a.action_type,
        u.name
    FROM actions AS a
    LEFT JOIN books AS b
        ON b.book_id = a.book_id
    LEFT JOIN users AS u
        ON a.user_id = u.user_id
    WHERE a.action_type   = 'venta';

  +-----------+--------------------------+-------------+----------+
  | action_id | title                    | action_type | name     |
  +-----------+--------------------------+-------------+----------+
  |         1 | Advanced Statistics      | venta       | Laura    |
  |         4 | Trigonometria avanzada   | venta       | Fernanda |
  |         5 | Graficas Matematicas     | venta       | Jorge    |
  |         7 | Modelado de conocimiento | venta       | Sofia    |
  |         8 | Mastering MySQL          | venta       | Jose     |
  |        10 | Curvas Parabolicas       | venta       | Laura    |
  +-----------+--------------------------+-------------+----------+

 SELECT a.action_id,
        b.title,
        a.action_type,
        u.name
    FROM actions AS a
    LEFT JOIN books AS b
        ON b.book_id = a.book_id
    LEFT JOIN users AS u
        ON a.user_id = u.user_id
    WHERE a.action_type IN ('prestamo', 'devolucion'); 

+-----------+------------------------------+-------------+----------+
| action_id | title                        | action_type | name     |
+-----------+------------------------------+-------------+----------+
|         2 | Ruby On (the) Road           | devolucion  | Ricardo  |
|         3 | Estudios basicos de estudios | devolucion  | Maria    |
|         6 | Algebra basica               | devolucion  | Susana   |
|         9 | Redes Avanzadas              | devolucion  | Fernanda |
+-----------+------------------------------+-------------+----------+
4 rows in set (0.00 sec)    

</pre>

