class Detran < Calabash::ABase

    #==================================== ELEMENTS =========================================

    def initialize
        @classificar = "* id:'alertTitle' text:'Classificar'"
        @classificar_mais_tarde = "* id:'button3' text:'MAIS TARDE'"
        @tela_inicial = "* id:'decor_content_parent'"
        @placa_letra = "* id:'et_placa_letra'"
        @placa_numero = "* id:'et_placa_numero'"
        @consultar = "* id:'fab_consultar'"
        @carregando_consulta = "* id:'message' text:'Consultando placa...'"
        @botao_fechar_propaganda = "* contentDescription:'Interstitial close button'"
        @texto_placa = "* id:'result_placa'"
        @msg_placa_invalida = "* id:'alertTitle', text:'Placa inválida'"
    end

    #==================================== METHODS ==========================================

    def tela_inicial_carregou?
        begin
            when_element_exists @botao_fechar_propaganda, :timeout => 25, :action => lambda { touch(@botao_fechar_propaganda)}, :screenshot_on_error => false
            wait_for_elements_exist @tela_inicial, :timeout => 10, :screenshot_on_error => false
        rescue
            wait_for_elements_exist @tela_inicial, :timeout => 10, :screenshot_on_error => false
        end
    end

    def alerta_invalido
        wait_for_elements_exist @msg_placa_invalida, :timeout => 5, :screenshot_on_error => false
    end

    def pesquisar_placa(placa_veiculo)
        preencher_placa(placa_veiculo)
        touch @consultar
    end

    def valida_consulta
        wait_for_elements_exist @texto_placa, :timeout => 20, :screenshot_on_error => false
        placa = query @texto_placa, :text
        placa_valida(placa[0])
    end

    def preencher_placa(placa)
        @dado = MASSA[placa.gsub(' ', '_').to_sym]
        enter_text @placa_letra, @dado[:letra]
        enter_text @placa_numero, @dado[:numero]
    end

    def placa_valida(placa)
        arq = File.open("features/data/placas_validas.txt", "a")
        arq.write placa + " \n"
        arq.close unless arq.closed?
    end

end

