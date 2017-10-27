class Cadastro < Calabash::ABase

    def preencher_modelo(modelo)
        page(Geral).aguardar_elemento_por_id('modelo')
        touch("* id:'modelo'")
        keyboard_enter_text modelo
        hide_soft_keyboard
    end

    def preencher_ano(ano)  
        page(Geral).aguardar_elemento_por_id('ano') 
        touch("* id:'ano'")
        keyboard_enter_text ano
        hide_soft_keyboard
    end

    def preencher_placa(placa)    
        page(Geral).aguardar_elemento_por_id('placa')
        touch("* id:'placa'")
        keyboard_enter_text placa
        hide_soft_keyboard
    end

    def preencher_km(km)   
        page(Geral).aguardar_elemento_por_id('km')
        touch("* id:'km'")
        keyboard_enter_text km
        hide_soft_keyboard
    end  

    def preencher_valor(valor)  
        page(Geral).aguardar_elemento_por_id('valor')
        touch("* id:'valor'")
        keyboard_enter_text valor
        hide_soft_keyboard
    end

    def preencher_cadastro(modelo, ano, placa, km, valor)
        preencher_modelo(modelo)
        preencher_ano(ano)
        preenhcer_placa(placa) 
        preenhcer_km(km) 
        preencher_valor(valor)
    end

    def botao_cadastrar
        touch("* id:'cadastrar'")    
    end

end