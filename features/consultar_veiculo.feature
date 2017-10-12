#language: pt
#coding: utf-8

Funcionalidade: Consultar informações do veículo

@reinstall @first
Cenário: Consultar placa de veículo válida
    Dado que acessei o aplicativo
    Quando pesquisar por uma placa de "veiculo valida"
    Então devo visualizar as informações do veículo

@reinstall @second
Cenário: Visualizar alerta de placa inválida
    Dado que acessei o aplicativo
    Quando pesquisar por uma placa de "veiculo invalida"
    Então devo visualizar alerta de placa inválida
