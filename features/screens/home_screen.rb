class Home < Calabash::ABase

    def botao_cadastrar
    touch("* id:'cadastrar'")
    wait_for_element_exists("* id:'textView'", :timeout => 40)
    end

    def botao_consultar
        touch("* id:'consulta'")
        wait_for_element_exists("* id:'consulta'", :timeout => 40)
    end

end
   