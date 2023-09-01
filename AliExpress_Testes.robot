*** Settings ***
Documentation     Essa suite testas o site da AliExpress.com
Resource          AliExpress_Resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acasso ao menu "Moda Masculina"
    [Documentation]    Esse teste verifica o menu Moda Masculina do site da AliExpress.com
    [Tags]             menu categoria
    Acessar a home page do site AliExpress.com
    Verificar se o titulo da pagina fica "AliExpress - Comprar eletrônicos, produtos de moda, produtos para casa & jardim e automotivos vindos diretamente da China - AliExpress.com"
    Entrar na categoria "Moda Masculina"
    Verificar se o titulo da página fica "Moda Masculina - Compre Moda Masculina com envio grátis no aliexpress"
    Verificar se esta na categoria "Moda Masculina"
    
