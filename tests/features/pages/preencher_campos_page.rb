class MapearElementos < SitePrism::Page
    set_url '/Register.html'

    element :first_name, :xpath, '//*[@id="basicBootstrapForm"]/div[1]/div[1]/input'
    element :last_name,  :xpath, '//*[@id="basicBootstrapForm"]/div[1]/div[2]/input'
    element :address,    :xpath, '//*[@id="basicBootstrapForm"]/div[2]/div/textarea'
    element :email,      :xpath, '//*[@id="eid"]/input'
    element :phone,      :xpath, '//*[@id="basicBootstrapForm"]/div[4]/div/input'
    element :male,       :xpath, '//*[@id="basicBootstrapForm"]/div[5]/div/label[1]/input'
    element :famale,     :xpath, '//*[@id="basicBootstrapForm"]/div[5]/div/label[2]/input'
    element :cricket,    :xpath, '//*[@id="checkbox1"]'
    element :movies,     :xpath, '//*[@id="checkbox2"]'
    element :hockey,     :xpath, '//*[@id="checkbox3"]'
    element :skills,     :xpath, '//*[@id="Skills"]/option[5]'
    element :country,    :xpath, '/html/body/span/span/span[1]/input'
    element :year,       :xpath, '//*[@id="yearbox"]/option[76]'
    element :month,      :xpath, '//*[@id="basicBootstrapForm"]/div[11]/div[2]/select/option[6]'
    element :day,        :xpath, '//*[@id="daybox"]/option[6]'
    element :password,   :xpath, '//*[@id="firstpassword"]'
    element :confirm,    :xpath, '//*[@id="secondpassword"]'
    element :btnSubmit,  :xpath, '//*[@id="submitbtn"]'
    element :btnRefresh, :xpath, '//*[@id="Button1"]'
    element :upload,     :xpath, '//*[@id="imagesrc"]'

    def preencher_formulario
      first_name.set 'Teste Nome'
      last_name.set 'Teste Sobrenome'
      address.set 'Endereço Teste'
      email.set 'teste@teste.com'
      phone.set '48 2222-3333'
      male.click
      cricket.click
      movies.click
      hockey.click
      skills.click
      year.click
      month.click
      day.click
      password.set '123456'
      confirm.set '123456'
    end

    def email_fora_padrao
      email.set 'teste'      
    end

    def upload_imagem
      @foto = File.join(Dir.pwd, 'features/download.jpg')
      attach_file('imagesrc', @foto, make_visible:true)
    end

end
