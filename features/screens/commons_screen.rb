class Geral < Calabash::ABase
    
        def aguardar_elemento_por_id(id, timeout=10)
            wait_for_elements_exist(["* id:'#{id}'"], :timeout => timeout) 
        end

        def busca_carro
            touch(query("* text:'Fiat'").last)
        end
    
    def validar_texto(text, timeout=20)
        wait_for_elements_exist(["* text:'#{text}'"], :timeout => timeout) 
    end

    def limpa_campo_id(modelo)
        clear_text_in("* id:'#{'modelo'}'")  
       end
       
       def busca_modelo_na_pagina_consulta
        until query("* text:'yhj'").count == 1
           scroll("* id:'listaCarros'", :down)
        end
        touch("* text:'yhj'")
    end 
       

end
