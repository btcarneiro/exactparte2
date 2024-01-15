#language: pt

Funcionalidade: Preencher campos

Cenario: Preencher todos os campos do formulário
Então preencho todos os campos

Cenario: Validar email inválido
Quando preencho o campo sem estar no formato de e-mail
Então é exibido o alerta de formato inválido.

Cenario: Fazer upload de arquivo
Quando clico em Escolher arquivo e seleciono uma foto
Então é exibido o nome do arquivo na tela
