#language: pt
Funcionalidade: Cadastro de carros

  Esquema do Cenário: Cadastrar carro no aplicativo
    Dado que estou na tela de cadastro de carros
    Quando preencho os campos <Modelo_Marca>, <Ano>, <Placa>, <Kilometragem>, <Valor>
      E toco no botão cadastrar
    Então o sistema exibirá mensagem de carro cadastrado com sucesso

    Exemplos:
      | Modelo_Marca     | Ano    | Placa     | Kilometragem   | Valor   |
      | 'Fox/Volskwagen' | '2017' | 'ETJ0799' | '10.000'       | '35000' |
    
  @wip
  Cenário: Cadastrar com dados incompletos
    Dado que estou na tela de cadastro de carros
    Quando preencho parcialmente os campos
      E toco no botão cadastrar
    Então o sistema exibirá mensagem de cadastro incompleto