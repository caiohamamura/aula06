/*markdown
# Título nível 1
## Nível 2
### Lista:
*/

/*markdown
- Item 1
- Item 2
- Outro item
*/

/*markdown
### Lista numerada
*/

/*markdown
1. Um item
1. Outro item
1. Mais um item

*/

/*markdown
Clique [aqui](https://cpv.ifsp.edu.br/) para abrir o site

*/

/*markdown
<img src="https://cpv.ifsp.edu.br/images/Logo_Campus/Marca_IFSP_2015-03.jpg" height=200>

*/

/*markdown

| Nome | Curso | Nota |
|------|-------|------|
| João | ADS   | 9.5  |
| Maria| ADS   | 9.0  |

*/

/*markdown

## Criar banco de dados aula06

*/

DROP DATABASE IF EXISTS aula06;
CREATE DATABASE aula06;
USE aula06;

/*markdown

## Criar tabela usuário

*/

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

TRUNCATE usuario;
INSERT INTO usuario (id_usuario, nome)
VALUES 
    (1, 'Caio'),
    (2, 'Outro usuario');


SELECT * FROM usuario;

SELECT * 
FROM usuario 
WHERE id_usuario = 2;

use mysql;
UPDATE mysql.user SET Host='%' WHERE Host='localhost' AND User='root';
FLUSH PRIVILEGES;

