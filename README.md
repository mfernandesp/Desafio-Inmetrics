# Desafio-Inmetrics

## Configurações: 
### Como configurar o projeto:
- Java: 
	1. Instalar o <a href="https://www.oracle.com/java/technologies/javase-jre8-downloads.html" target="_blank">JAVA</a> (versão 8)
	2. Adicionar a variável de ambiente JAVA_HOME com o caminho do java instalado
	3. Adicione o caminho do <diretorio java>/bin a variavel de ambiente "Path"	
- Maven: 
	1. Instalar o <a href="https://maven.apache.org/" target="_blank">MAVEN</a>
	2. Adicionar a variável de ambiente M2_HOME com o caminho do maven instalado 
	3. Adicionar a variável de ambiente M2 com o caminho <diretorio maven>/bin	
	3. Adicione o caminho do <diretorio maven>/bin a variavel de ambiente "Path"	
- Postman: 
	1. Instalar o <a href="https://www.postman.com/" target="_blank">POSTMAN</a>
- Eclipse: 
	1. Instalar o <a href="https://www.eclipse.org/downloads/" target="_blank">ECLIPSE</a>
	2. Instalar os plugins "Cucumber Eclipse Plugin"
	3. Abrir o projeto e executar "Maven > Update Project"	
### Como excutar o projeto: 
- Através do Eclipse: Clicar com o botão direito no projeto > Run as > Maven Test
- Atraves do cmd: acessar o diretórico com pom.xl e executar "mvn test"


## Estrutura do projeto:
### Desafio WebSite:
- Projeto desenvolvido em Java, com os framewors Cucumber e Selenium. 
- **teste-inmetrics\src\test\java**: caminho que contém os scripts de teste e arquivos de suporte
	
	1. **br\com\inmetrics\teste\runner**: possui a classe RunCucumberTest.java responsável pela execução e configuração dos testes. 
	2. **br\com\inmetrics\teste\support**: possui arquivos de suporte aos testes
		- DriverFactory: Classe para centralizar os metódos relacionados a comunicação com o webdriver.
	3. **pageObjects**: possui os scripts que mapeiam os elementos e ações de uma determinada página.
	4. **StepsDefinition**: possui os scripts de testes que relaciona os passos do BDD
- **teste-inmetrics\src\test\resources**: possui as features em linguagem natural
	1. **FeaturesAPI**: Features destinadas ao teste de API
	2. **FeaturesWEB**: Features destinadas ao teste WEB
	
	***Obs: BasePage e BaseSteps possuem metódos comuns a outras classes Steps e Page****
	
### Desafio API: 
- Projeto implementado utilizando a ferramenta Postman (Inmetrics.postman_collection.json)
- Aba ***Authorization***: Informado o nome de usuário e senha (quando necessário)
- Aba ***Body***: Informado o conteúdo a ser enviado em JSON (quando necessário)
- Aba ***Tests***: Script que valida o retorno da requisição
