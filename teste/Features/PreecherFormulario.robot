*** Settings ***
Resource    ../Steps/PreencherFormulario_Steps.robot
Library     SeleniumLibrary


*** Test Cases ***
Cenario 1: Preencher o formulário
    Dado que tenha acesso ao site
    Quando preencher o Formulario Enter Vehicle Data
    E Preencher o formulário Enter Insurant Data
    E Preencher o formulário Enter Product Data
    E Preencher o formulário Select Price Option
    E Preencher o formulário Send Quote
    Então devo visualizar a mensagem Sending e-mail success! na tela