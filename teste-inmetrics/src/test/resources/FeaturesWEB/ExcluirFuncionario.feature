Feature: Exclusão de Usuário

  Scenario Outline: Excluir Funcionario
    Given que eu esteja autenticado no sistema
    When eu pesquiso pelo funcionario <Nome do Funcionario>
    And eu clico no botão Excluir
    Then o sistema deve retornar a mensagem "SUCESSO! Funcionario removido com sucesso"
    And o funcionario deve ser removido com sucesso

    Examples: 
      | Tipo de Contratação | Nome do Funcionario |
      | CLT                 |               |
      | PJ                  |               |

