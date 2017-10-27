Dado("que estou na tela de consulta de carros") do
  page(Geral).validar_texto('Renova Car')
  page(Home).botao_consultar
  
end

Quando("clico no carro que desejo alterar") do                     
  20.times do
  scroll("* id:'listaCarros'", :down)
  end
  page(Geral).busca_carro
  assert_text("Alterar")
end                                                                         
                                                                             
Quando("toco no botão alterar") do  
  query("* id:'modelo'",setText:"")
  page(Cadastro).preencher_modelo(DATA['carros_alterar']['modelo'])                          
  page(Alterar).botao_alterar
  end                                                                          
                                                                             
                                                                         
Então("o sistema exibirá mensagem de carro alterado com sucesso") do
  page(Geral).validar_texto('Carro alterado com sucesso.')
end                                                                          