
# Lab 1 Henry

Primer proyecto individual de Labs del bootcamp  Data Science de SoyHenry. En este se busca realizar ETL de gran cantidad de datos provenientes de una cadena de mercado con multiples sucursales, a su vez con un listado de precios tomados en diferentes momentos del año. lo que en teoria permitirá analizar la varianza de precios en el tiempo y por sucursal, entre otras cosas. estos datos se encuentran en diferentes formatos y con multiples inconcistencias, para posteriormente ser cargados en una Database, en el momento elegido MySQL. Este proyecto Esta destinado al estudio y practica de lo aprendido previamente.


## Autor

- [@Emblask39](https://www.github.com/Emblask39)


## Guia de uso

El proyecto cuenta con un archivo .ipynb el cual es un notebook de jupyter el cual será necesaria su instalación previa para su uso.

La ultima parte del codigo, la cual ejecuta la función contiene una variable "pathfile" la cual será necesario cambiar con la ruta del directorio en el que se encuentran los arhivos.

esta función leerá todos los archivos que se encuentran contenidos alli, por lo que es optimo que no existan otros archivos de similares formatos a menos que cuenten con inconsistencias similares a las del archivo original.

Al finalizar el script se crearán multiples archivos .CSV en el directorio donde se encuentra  contenido el .ipynb, los cuales ya se encuentran normalizados y listos para cargar a una base de datos.

Tambien cuenta con un archivo .sql con el script necesario para montar la base de datos relacional que cuenta con 3 tablas: "precios", "productos", "sucursales". Es necesario cambiar la ruta del directorio de acuerdo a donde se encuentren los archivos .CSV
## Lecciones aprendidas

Puesta en practica de conocimientos en un ambiente cercano al laboral, fue increiblemente interesante enfrentarse a las multiples inconsistencias que se pueden presentar ante un proceso de extracción de datos lejano al estado ideal, el cual lamentablemente es la realidad de la gran mayoria de procesos.

El proceso de transformación del dato a un punto en el que puede ser considerado utilizable es complejo, de alto consumo de tiempo y energia, pero sumamente importante ya que sin esto el analisis de los mismos no es posible, o en el mejor de los casos poco certero.


## Roadmap

- Separar en multiples funciones para generalizar la transformación.

- Disminuir el tiempo de procesamiento.

- Limpiar inconsistencias faltantes.

- Pulir la base de datos.

- Presentar resultados y analisis de datos.


## Screenshots

![App Screenshot](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/606ab795-7f58-48fd-870b-c8a02539b05b/Python.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221027%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221027T162505Z&X-Amz-Expires=86400&X-Amz-Signature=1fb924e6a5273e91ba3c1ccd8cc1e792fdc007a5b0f2a969437184e07c42aa1c&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Python.png"&x-id=GetObject)
![App Screenshot](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/49537648-24e1-4068-b8bf-48f3fa594976/Archivos.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221027%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221027T162624Z&X-Amz-Expires=86400&X-Amz-Signature=b2587192f2d40b327c2c8c9aa85626b8d654a8c255396d04cd432a671fe8e4f1&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Archivos.png"&x-id=GetObject)
![App Screenshot](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/db7451e1-62f0-4bed-8a61-e87fcc36c5b2/Dataframe.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221027%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221027T162426Z&X-Amz-Expires=86400&X-Amz-Signature=1a15e00b98221853e35c04ec162dbc7a57ac8b0feb036ce2cd5e2fb427c7c6b0&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"Dataframe.jpg"&x-id=GetObject)
![App Screenshot](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/66eeddbd-b64b-4b7a-afa9-7b26417a6903/lab1.drawio.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221027%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221027T164030Z&X-Amz-Expires=86400&X-Amz-Signature=81926bea205c0f297d309e89fe7181c77be10633360d00e44c29c655910bd9b0&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D"lab1.drawio.png"&x-id=GetObject)

## Feedback

Si tiene alguna retroalimentación que realizar por favor contactar al email salas.mangel@gmail.com


![Logo](https://neurona-ba.com/wp-content/uploads/2021/07/HenryLogo.jpg)

