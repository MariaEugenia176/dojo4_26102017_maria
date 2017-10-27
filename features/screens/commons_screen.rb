class Geral < Calabash::ABase
    
        def aguardar_elemento_por_id(id, timeout=10)
            wait_for_elements_exist(["* id:'#{id}'"], :timeout => timeout) 
        end

        def busca_carro
            touch(query("* text:'GM/Celta'").last)
            

        end
    
    def validar_texto(text, timeout=20)
        wait_for_elements_exist(["* text:'#{text}'"], :timeout => timeout) 
    end
end

