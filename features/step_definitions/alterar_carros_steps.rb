Dado("que estou na tela de consulta de carros") do
  page(Geral).validar_texto('Renova Car')
  page(Home).botao_consultar
  
end

Quando("clico no carro que desejo alterar") do                     
  page(Geral).busca_modelo_na_pagina_consulta
 

end                                                                         
                                                                             
Quando("toco no botão alterar") do  
  page(Geral).limpa_campo_id 'modelo'
  page(Cadastro).preencher_modelo(DATA['carros_alterar']['modelo'])                          
  page(Alterar).botao_alterar
  end                                                                          
                                                                             
                                                                         
Então("o sistema exibirá mensagem de carro alterado com sucesso") do
  page(Geral).validar_texto('Carro alterado com sucesso.')
end                                                                                                                                                 
