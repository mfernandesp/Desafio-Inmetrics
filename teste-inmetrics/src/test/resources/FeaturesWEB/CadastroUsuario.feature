Feature: Cadastro de Usuário

  Scenario: Cadastrar Usuario
    Given que eu acesse a pagina Login
    When eu clico no botão Cadastre-se
    And eu preencho os campos Usuario, Senha e Confirme a senha 
    And eu clico no botão Cadastrar
    Then o sistema deve redirecionar para a tela de login
    And o usuário deve conseguir fazer login no sistema

	Scenario: Tentar cadastrar Usuario com nome de usuario menor que 8 caracteres
	    Given que eu acesse a pagina Login
	    When eu clico no botão Cadastre-se
	    And eu preencho o campo Usuario com menos de 8 caracteres
	    And eu clico no botão Cadastrar
	    Then o sistema deve exibir o texto "Aumente esse texto para 8 caracteres ou mais." como tooltip no campo Usuario
	    
	Scenario: Tentar cadastrar Usuario já cadastrado
	    Given que eu acesse a pagina Login
	    When eu clico no botão Cadastre-se
	    And eu preencho o campo Usuario com um usuário já cadastrado
	    And eu prencho os campos Senha e Confirme a senha 
	    And eu clico no botão Cadastrar
	    Then o sistema deve retornar a mensagem "Usuário já cadastrado"
	    	    
	Scenario: Tentar cadastrar Usuario sem informar o campos obrigatórios
	    Given que eu acesse a pagina Login
	    When eu clico no botão Cadastre-se
	    And eu não preencho nenhum dos campos do cadastro de usuário
	    And eu clico no botão Cadastrar
	    Then o sistema deve exibir uma "!" nos campos
	    And o sistema deve exibir o texto "Campo obrigatório" como tooltip no campo Usuario
	    