Dado(/^que acessei o aplicativo$/) do
  @placa = Detran.new
  @placa.tela_inicial_carregou?
end

Quando(/^pesquisar por uma placa de "([^"]*)"$/) do |placa_veiculo|
  @placa.pesquisar_placa(placa_veiculo)
end

Então(/^devo visualizar as informações do veículo$/) do
  @placa.valida_consulta
end

Então(/^devo visualizar alerta de placa inválida$/) do
  @placa.alerta_invalido
end
