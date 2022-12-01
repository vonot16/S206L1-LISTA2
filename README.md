# S206 - Qualidade de Software Lista 2

## Como rodar:
 - Faça um clone do Repositório na sua maquina local;
 - Tenha instalado o Maven e o JDK;
 - De o comando mvn clean install;
 - E execute o teste com o comando mvn test –Dtest=mangadexRunner;
 - Se o comando não funcionar, você pode executar via IDE o plugin do VSCODE atravez do arquivo mangadex.feature;

## Exercicio 2
 - 1. Quantas suítes de testes você desenvolveu?
   R: Desenvolvi apenas 2 suítes de testes, que conta com respectivamente 4 e 2 casos de teste.
   Suite 1: Busca Por Mangás
     Caso 1: Busca por todos os mangás
     Caso 2: Busca por um mangá aleatório
     Caso 3: Busca por um mangá especifico (One Piece)
     Caso 4: Busca por um mangá inexistente (Caso de Falha)
   Suite 2: Busca Por Scans
     Caso 1: Busca por Scans  Brasileiras
     Caso 2: Busca por uma scan de nome Inatel (Caso de Falha)
 
 - 2. Os testes desenvolvidos são manuais ou automatizados?
 
   R: São testes automatizados, após serem desenvolvidos não há mais a necessidade de interação com o usuario (tester)
 
 - 3. Onde os testes se localizam na pirâmide apresentada?
 
   R: São testes de Integração
   
 - 4. Os testes desenvolvidos são funcionais ou não-funcionais?
 
   R: São testes funcionais
 
 - 5. Alguns dos testes desenvolvidos são testes Fim-a-Fim(End-To-End)?
 
   R: Não, nenhum dos testes que desenvolvi são de fim a fim, são todos testes de integração
 
 - 6. O que se deve fazer para que os testes desenvolvidos funcionem em modo regressão?
 
   R: Deve-se configurar o maven para que sempre que houver uma nova BUILD do sistema os teste rodem automaticamente.
