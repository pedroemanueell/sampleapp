*** Settings ***
Resource    ../Elements/PreencherFormulario_Elements.robot

*** Variables ***
${URL}         https://sampleapp.tricentis.com/101/app.php
${BROWSER}     chrome

*** Keywords ***
Dado que tenha acesso ao site
    Abrir o meu navegador    

Quando preencher o Formulario Enter Vehicle Data
    Select From List By Value        ${Formulario.select_make}              Ford
    Select From List By Value        ${Formulario.select_model}             Moped
    Input Text                       ${Formulario.input_cyli}               10
    Input Text                       ${Formulario.input_engine}             20
    ${data}                          Set Variable                           10/10/2023
    Input Text                       ${Formulario.input_dateofmanu}         ${data}
    Select From List By Value        ${Formulario.select_numberseats}       1
    Click Element                    ${Formulario.click_element_next}
    Select From List By Value        ${Formulario.select_numberofseats}     1
    Select From List By Value        ${Formulario.select_fuel}              Petrol
    Input Text                       ${Formulario.input_payload}            20
    Input Text                       ${Formulario.input_totalweight}        600
    Input Text                       ${Formulario.input_listprice}          700
    Input Text                       ${Formulario.input_licenseplate}       20
    Input Text                       ${Formulario.input_annualmileage}      100
    Click Button                     ${Formulario.click_next_enter_insurant_data}
E Preencher o formulário Enter Insurant Data
    Input Text                       ${Formulario.input_firstname}          Teste
    Input Text                       ${Formulario.input_lastname}           Testando
    ${data}                          Set Variable                           10/10/1994
    Input Text                       ${Formulario.input_birthdate}          ${data}
    Execute JavaScript               ${Formulario.click_gendermale}
    Input Text                       ${Formulario.input_streetaddress}      Rua
    Select From List By Value        ${Formulario.select_country}           Brazil
    Input Text                       ${Formulario.input_zipcode}            10101010
    Input Text                       ${Formulario.input_city}               Caruaru
    Select From List By Value        ${Formulario.select_occupation}        Farmer
    Execute JavaScript               ${Formulario.click_bungeejumping}
    Input Text                       ${Formulario.input_website}            www.teste.com.br
    Click Button                     ${Formulario.click_nextproductdata}
E Preencher o formulário Enter Product Data
    ${data}                          Set Variable                           03/05/2024
    Input Text                       ${Formulario.input_startdate}          ${data}
    Select From List By Value        ${Formulario.select_insurancesum}      7000000
    Select From List By Value        ${Formulario.select_meritrating}       Bonus 2
    Select From List By Value        ${Formulario.select_damageinsurance}   Partial Coverage
    Execute JavaScript               ${Formulario.click_EuroProtection}
    Select From List By Value        ${Formulario.select_courtesycar}        Yes
    Click Button                     ${Formulario.click_PriceOption}

E Preencher o formulário Select Price Option
    Execute JavaScript               ${Formulario.click_selectgold}
    Click Button                     ${Formulario.click_SendQuote}
E Preencher o formulário Send Quote
    Input Text                       ${Formulario.input_email}              teste@teste.com
    Input Text                       ${Formulario.input_phone}              11999999999
    Input Text                       ${Formulario.input_username}           teste.com
    Input Text                       ${Formulario.input_password}           Ab123456
    Input Text                       ${Formulario.input_confirmpassword}    Ab123456
    Input Text                       ${Formulario.input_Comments}           Testando
    Click Button                     ${Formulario.input_sendemail}
    Sleep                            10
Então devo visualizar a mensagem Sending e-mail success! na tela
    ${message} =                     Get Text                               ${Formulario.text_messagem}
    Should Contain                   ${message}                             Sending e-mail success!
    Close Browser

Abrir o meu navegador
    Open Browser                     ${URL}    ${BROWSER}
    Set Selenium Implicit Wait       30
    Maximize Browser Window