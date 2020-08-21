Feature: Cadastro de Usuário

  Scenario Outline: Cadastrar Funcionario
    Given que eu esteja autenticado no sistema
    When eu clico no botão Novo Funcionario
    And eu preencho os campos Nome, CPF, Sexo, Admissao, Cargo, Salário e <Tipo de Contratação>
    And eu clico no botão Enviar
    Then o sistema deve retornar a mensagem "SUCESSO! Usuário cadastrado com sucesso"
    And o funcionario deve ser cadastrado com sucesso

    Examples: 
      | Tipo de Contratação |
      | CLT                 |
      | PJ                  |

  Scenario: Cancelar cadastro de Funcionario
    Given que eu esteja autenticado no sistema
    When eu clico no botão Novo Funcionario
    And eu preencho os campos Nome, CPF, Sexo, Admissao, Cargo, Salário e Tipo de Contratação
    And eu clico no botão Cancelar
    Then o sistema deve retornar inicial
    And o funcionario não deve ser cadastrado no sistema

  Scenario: Tentar cadastrar Funcionario sem informar os campos Obrigatórios
    Given que eu esteja autenticado no sistema
    When eu clico no botão Novo Funcionario
    And eu não preencho os campos Nome, CPF, Sexo, Admissao, Cargo, Salário e Tipo de Contratação
    And eu clico no botão Enviar
    Then o sistema deve exibir o texto "Preencha este campo" como tooltip no campo Nome

  Scenario: Tentar cadastrar Funcionario com cpf inválido
    Given que eu esteja autenticado no sistema
    When eu clico no botão Novo Funcionario
    And eu preencho o campo CPF com um valor inaválido
    Then o sistema deve exibir o alerta "CPF Inválido"