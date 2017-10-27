Dado("que estou na tela de cadastro de carros") do
 page(Geral).validar_texto('Renova Car')
end

Quando("preencho os campos {string}, {string}, {string}, {string}, {string}") do |modelo, ano, placa, km, valor|
  page(Home).botao_cadastrar
  page(Cadastro).preencher_cadastro(modelo, ano, placa, km, valor)
end

Quando("toco no botão cadastrar") do 
  page(Cadastro).botao_cadastrar
end

Então("o sistema exibirá mensagem de carro cadastrado com sucesso") do
  page(Geral).validar_texto('Carro cadastrado com sucesso')
end

  #preencher parcialmente os campos
  Quando("preencho parcialmente os campos") do
    page(Home).botao_cadastrar
    
    page(Cadastro).preencher_modelo(DATA['carros']['modelo'])
    page(Cadastro).preencher_ano(DATA['carros']['ano'])
    page(Cadastro).preencher_placa(DATA['carros']['placa'])
    page(Cadastro).preencher_km(DATA['carros']['km'])
  end
  
  Então("o sistema exibirá mensagem de cadastro incompleto") do
    page(Geral).validar_texto('Informe o valor')
  end

  