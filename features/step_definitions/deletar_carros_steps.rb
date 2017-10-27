Quando("clico no carro que desejo deletar") do                                
  20.times do
    scroll("* id:'listaCarros'", :down)
    end
    page(Geral).busca_carro
end                                                                           
                                                                              
Quando("toco no botão deletar") do                                                                    
  page(Deletar).botao_deletar
  assert_text("Deletar")
end                                                                           
                                                                              
Então("o sistema exibirá mensagem de carro excluído com sucesso") do          
  page(Geral).validar_texto('Carro excluído com sucesso.')
end                                                                           
  