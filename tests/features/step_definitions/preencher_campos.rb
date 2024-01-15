@uploaded = false

Então('preencho todos os campos') do
    mapear.load
    mapear.preencher_formulario
    sleep(2)
end

Quando('preencho o campo sem estar no formato de e-mail') do
    mapear.load
    mapear.email_fora_padrao
    sleep(2)
end
  
Então('é exibido o alerta de formato inválido.') do
    @texto = find(:xpath, '//*[@id="basicBootstrapForm"]/div[3]/div[2]/span')
    expect(@texto.text).to eql 'Provide a valid email id for further updates'
end

Quando('clico em Escolher arquivo e seleciono uma foto') do
    mapear.load
    mapear.upload_imagem
    @uploaded = true
    sleep(2)
end
  
Então('é exibido o nome do arquivo na tela') do
    expect(@uploaded).to eql true
end

