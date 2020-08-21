Feature: Teste de api #

  Scenario Outline: Cadastrar empregado na api empregado-controller (/empregado/cadastrar)
    Given que eu deseje cadastrar um empregado
    When eu enviar uma requisição com as inforções: <admissao>, <cargo>, <comissao>, <cpf>, <departamentoId>, <nome>, <salario>, <sexo>, e <tipoContratacao>
    Then o sistema deve retornar o codigo 202
    And o sistema deve retornar o Json do empregado cadastrado com sucesso

    Examples: 
      | admissao | cargo | comissao | cpf | departamentoId | nome | salario | sexo | tipoContratacao |

  Scenario: Listar empregado cadastrado (/empregado/list/id)
    Given que eu cadaste um empregado com as inforções: <admissao>, <cargo>, <comissao>, <cpf>, <departamentoId>, <nome>, <salario>, <sexo>, e <tipoContratacao>
    When eu enviar uma requisição List com o ID do empregado cadastrado
    Then o sistema deve retornar o codigo 202
    And o sistema deve retornar o Json do empregado listado com sucesso

  Scenario: Listar todos os empregados (/empregado/list_all)
    Given que exista empregados cadastrados
    When eu enviar uma requisição List
    Then o sistema deve retornar o codigo 200
    And o sistema deve retornar as informações de todos os empregados cadastrados

  Scenario Outline: Listar empregado cadastrado (/empregado/alterar/id)
    Given que eu cadaste um empregado com as inforções: <admissao>, <cargo>, <comissao>, <cpf>, <departamentoId>, <nome>, <salario>, <sexo>, e <tipoContratacao>
    When eu enviar uma requisição PUT alterando com as inforções: <admissao1>, <cargo1>, <comissao1>, <cpf1>, <departamentoId1>, <nome1>, <salario1>, <sexo1>, e <tipoContratacao1>
    Then o sistema deve retornar o codigo 200
    And o sistema deve alterar os dados do empregado alterado

    Examples: 
      | admissao | admissao1 | cargo | cargo1 | comissao | comissao | cpf | cpf1 | departamentoId | departamentoId1 | nome | nome1 | salario | salario1 | sexo | sexo1 | tipoContratacao | tipoContratacao1 |
