*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${URL}                                https://pt.aliexpress.com   
${Mercadinho}                         //a[contains(@biz_code,'BRSuperMarket')]  
${CATEGORIA_MODA_MASCULINA}           //a[contains(.,'Moda Masculina')]

*** Keywords ***
Abrir o navegador
    Open Browser
    Maximize Browser Window

Fechar o navegador 
    Capture Page Screenshot
    Close Browser

Acessar a home page do site AliExpress.com
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${Mercadinho} 

Verificar se o titulo da pagina fica "${TITULO}"
    Title Should Be    title=${TITULO}

Entrar na categoria "Moda Masculina"
    Click Element    locator=${CATEGORIA_MODA_MASCULINA} 

Verificar se o titulo da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se esta na categoria "Moda Masculina"
    Element Should Be Visible    locator=//img[contains(@alt,'Colete masculino sem mangas de singlets fitness, roupas casuais para musculação, regatas tamanho grande, preto, branco, cinza, novo, verão 2020')]

#GHERKIN STEPS 
Dado que estou na home page do site AliExpress.com
    Acessar a home page do site AliExpress.com
    Verificar se o titulo da pagina fica "AliExpress - Comprar eletrônicos, produtos de moda, produtos para casa & jardim e automotivos vindos diretamente da China - AliExpress.com"

Quando acessar a categoria "Moda Masculina"
    Entrar na categoria "Moda Masculina"

Então o titulo da página deve fica "Moda Masculina - Compre Moda Masculina com envio grátis no aliexpress"
    Verificar se o titulo da página fica "Moda Masculina - Compre Moda Masculina com envio grátis no aliexpress"

E a categoria "Moda Masculina" deve ser exibida na pagina
    Verificar se esta na categoria "Moda Masculina"