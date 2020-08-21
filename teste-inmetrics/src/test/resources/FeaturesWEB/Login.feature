Feature: Login

  Scenario: Fazer login com usuário autenticado
    Given que eu acesse a pagina Login
    When eu preencho os campos Usuario e Senha
    And eu clico no botão Entre
    Then o usuário deve conseguir fazer login no sistema

  Scenario: Tentar logar sem informar o campos obrigatórios
    Given que eu acesse a pagina Login
    When eu não preencho nenhum dos campos do login
    And eu clico no botão Entre
    Then o sistema deve exibir uma "!" no campo
    And o sistema deve exibir o texto "Campo obrigatório" como tooltip

  Scenario: Tentar logar com usuário inválido
    Given que eu acesse a pagina Login
    When eu preencho o campo Usuário com um valor não cadastrado
    And eu clico no botão Entre
    Then o sistema deve retornar a mensagem "ERRO! Usuário ou Senha inválidos"
        
  Scenario: Tentar logar com senha inválida
    Given que eu acesse a pagina Login
    When eu preencho o campo Usuário com um valor cadastrado
    And eu preencho o campo Senha com um valor diferente do cadastrado 
    And eu clico no botão Entre
    Then o sistema deve retornar a mensagem "ERRO! Usuário ou Senha inválidos"
