# Pruebas automatizadas - Kraken
<p align="center">
  <img src="https://thesoftwaredesignlab.github.io/KrakenMobile/assets/imgs/kraken.png"/>
</p>

## Instrucciones
1. Levantar Ghost 3.4.25. desde la carpeta donde esta intalado el Ghost (ghost start)
2. Open terminal in root project folder and execute
3. Se debe crear un usuario y pasword de acuerdo con los siguientes datos: 
titulo: pruebas_automatizadas
Usuario: misw
Correo: misw_pruebas@misw.com	
psswd: 0123456789
4. La carpeta Escenarios Kraken contienen los escenarios de prueba, estos debe ser ubicados en la carpeta de Feature del proyecto en kraken
5. Se deberian ejecutar los escenarios con la instruccion:
bundle exec kraken-mobile run
6. Debe correr todos lo escenarios en serie uno tras otro hasta terminar la totalidad de lo archivos
7. Revisar en la carpeta de Reports del proyecto las condiciones decada corrida de escenarios
8. Levantar Ghost 3.42.5 y repetir los pasos anteriores para poder realizar las pruebas con las herramientas de regresion Backstop y Resemble
## Instrucciones semana 7
10. Para el caso de los escenarios de prueba con cucumber y datos Random tenemos lo siguiente:
11.  Las features se encuentran en la carpeta de escenarios cucumber_random (entrega semana 7)
12.  Se debe seguir el procedimiento de la instalacion de cucumber-webdriverio
13.  En la carpera de Features debe ir la carpeta de step-definitions y tambien cada uno de los features.
14.  Al mismo nivel de Features debe ir la carpeta de Suport Suport (con funcionalidades de generacion de datos aleatorios)
15.  En la terminal se da el comando npm run test

## Instrucciones semana 8
16. Se añadió el link a los Pros y Contras de las herramientas escogidas.
17. Se añadió el link a los escenarios Cucumber con pools de datos y generacion aleatorias de informacion
18. Para correr el cucumber Webdriver por favor seguir las indicaciones para el tutorial mostrado en la semana # 5 de Coursera [cucumber](https://www.coursera.org/learn/pruebas-automatizadas-software/ungradedWidget/pnCp6/tutorial-escenarios-y-pruebas-bdt)
19. Los steps y archivos de soporte (support) se encuentran en este repositorio
20. Cabe anotar que hay un archivo de soporte que contiene funciones que generan datos aleatorios
21. Se anexa el Webdriver en una carpeta comprimida en este repositorio
22. Los datos para el ingreso a Ghost se encuentran dentro de los escenarios, asi que no debe haber problema

 

## Repositorios
[Repositorio Cypress](https://github.com/jimmy-cardenas-miso/pruebas-automatizadas-ghost-cypress)

[Repositorio Kraken](https://github.com/mauricio-corredor/pruebas-automatizadas-kraken-ghost)

[Repositorio Cucumber](https://github.com/mauricio-corredor/pruebas-automatizadas-kraken-ghost/tree/main/Escenarios_cucumber)

[Repositorio Backstop](https://github.com/jimmy-cardenas-miso/pruebas-automatizadas-ghost-backstop)

[wiki Pros y Contras](https://github.com/mauricio-corredor/pruebas-automatizadas-kraken-ghost/wiki/Herramientas-escogidas-para-el-proyecto)





## Integrantes
| Nombre | Correo |
| --- | --- |
| Mauricio Corredor | malec@uniandes.edu.co |
| Ricardo Arango | r.arango@uniandes.edu.co |
| Darwin Moreno | d.moreno11@uniandes.edu.co |
| Jimmy Cárdenas | ja.cardenas3388@uniandes.edu.co |
