Feature: Edição de Usuário

  Scenario Outline: Editar Funcionario
    Given que eu esteja autenticado no sistema
    When eu pesquiso pelo funcionario <Nome do Funcionario>
    And eu clico no botão Editar
    And eu altero os campos Nome, CPF, Sexo, Admissao, Cargo, Salário e <Tipo de Contratação>
    And eu clico no botão Enviar
    Then o sistema deve retornar a mensagem "SUCESSO! Informações atualizadas com sucesso"
    And o funcionario deve ser editado com sucesso

    Examples: 
      | Tipo de Contratação | Nome do Funcionario |
      | CLT                 | Rayssa              |
      | PJ                  | Rayssa              |

  Scenario: Cancelar Editção de Funcionario
    Given que eu esteja autenticado no sistema
    When eu pesquiso pelo funcionario <Nome do Funcionario>
    And eu clico no botão Editar
    And eu altero os campos Nome, CPF, Sexo, Admissao, Cargo, Salário e Tipo de Contratação
    And eu clico no botão Cancelar
    Then o sistema deve retornar inicial
    And o funcionario não deve ser alterado no sistema

  Scenario: Tentar editar Funcionario sem informar os campos Obrigatórios
    Given que eu esteja autenticado no sistema
    When eu pesquiso pelo funcionario <Nome do Funcionario>
    And eu clico no botão Editar
    And eu limpo os campos Nome, CPF, Sexo, Admissao, Cargo, Salário e Tipo de Contratação
    And eu clico no botão Enviar
    Then o sistema deve exibir o texto "Preencha este campo" como tooltip no campo Nome      

  Scenario: Tentar editar Funcionario com cpf inválido
    Given que eu esteja autenticado no sistema
    When eu pesquiso pelo funcionario <Nome do Funcionario>
    And eu clico no botão Editar
    And eu altero o campo CPF para um valor inaválido
    Then o sistema deve exibir o alerta "CPF Inválido"
