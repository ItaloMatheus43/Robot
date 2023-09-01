*** Settings ***
Documentation     Essa suite testas o site da AliExpress.com
Resource          AliExpress_Resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acasso ao menu "Moda Masculina"
    [Documentation]    Esse teste verifica o menu Moda Masculina do site da AliExpress.com
    [Tags]             menu categoria
    Dado que estou na home page do site AliExpress.com
    Quando acessar a categoria "Moda Masculina"
    Então o titulo da página deve fica "Moda Masculina - Compre Moda Masculina com envio grátis no aliexpress"
    E a categoria "Moda Masculina" deve ser exibida na pagina
    
