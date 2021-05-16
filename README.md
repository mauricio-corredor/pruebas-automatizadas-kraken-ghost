# Pruebas automatizadas - Kraken
<p align="center">
  <img src="https://thesoftwaredesignlab.github.io/KrakenMobile/assets/imgs/kraken.png"/>
</p>

## Instrucciones
1. Levantar Ghost 3.3.0. desde la carpeta donde esta intalado el Ghost (ghost start)
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

## Repositorios
[Repositorio Cypress](https://github.com/jimmy-cardenas-miso/pruebas-automatizadas-ghost-cypress)

[Repositorio Kraken](https://github.com/mauricio-corredor/pruebas-automatizadas-kraken-ghost)

[Repositorio Backstop](https://github.com/jimmy-cardenas-miso/pruebas-automatizadas-ghost-backstop)

[wiki Pros y Contras](https://github.com/mauricio-corredor/pruebas-automatizadas-kraken-ghost/wiki/Analisis-de-las-herramientas)




## Integrantes
| Nombre | Correo |
| --- | --- |
| Mauricio Corredor | malec@uniandes.edu.co |
| Ricardo Arango | r.arango@uniandes.edu.co |
| Darwin Moreno | d.moreno11@uniandes.edu.co |
| Jimmy Cárdenas | ja.cardenas3388@uniandes.edu.co |
