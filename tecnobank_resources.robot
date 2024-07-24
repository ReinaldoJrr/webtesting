*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${URL}            https://www.demoblaze.com
${REGISTRAR}      //a[@class='nav-link'][contains(.,'Sign up')]


*** Keywords ***
Abrir Navegador
    Open Browser    browser=edge
    Maximize Browser Window
    

Fechar Navegador
    Close Browser

Dado que o usuário crie uma nova conta
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${REGISTRAR}
    Click Element    //a[@class='nav-link'][contains(.,'Sign up')]
    Click Element    //input[contains(@id,'sign-username')]
    Input Text       //input[contains(@id,'sign-username')]    admintestetecnobank
    Click Element    //input[contains(@id,'sign-password')]
    Input Text       //input[contains(@id,'sign-password')]    12345
    Click Element    //button[@type='button'][contains(.,'Sign up')]


E que o usuário faça o login com sucesso
    Click Element    //a[@class='nav-link'][contains(.,'Log in')]
    Click Element    //input[contains(@id,'loginusername')]
    Input Text    //input[contains(@id,'loginusername')]    admintestetecnobank
    Click Element    //input[contains(@id,'loginpassword')]
    Input Text    //input[contains(@id,'loginpassword')]    12345
    Click Element    //button[@type='button'][contains(.,'Log in')]
    

Quando Usuário compre três itens
    Click Element    //a[contains(.,'HTC One M9')]
    Click Element    //a[contains(@onclick,'addToCart(7)')]
    Click Element    //a[@class='nav-link'][contains(.,'Home (current)')]
    Click Element    //a[contains(.,'Sony vaio i5')]
    Click Element    //a[contains(@onclick,'addToCart(8)')]
    Click Element    //a[@class='nav-link'][contains(.,'Home (current)')]
    Click Element    //a[contains(.,'Monitors')]
    Click Element    //a[contains(.,'ASUS Full HD')]
    Click Element    //a[contains(@onclick,'addToCart(14)')]
    Click Element    //a[@class='nav-link'][contains(.,'Home (current)')]


E Usuário remove um item dentro do Carrinho
    Wait Until Element Is Visible    //a[@class='nav-link'][contains(.,'Cart')]
    Click Element    //a[@class='nav-link'][contains(.,'Cart')]
    Click Element    /html[1]/body[1]/div[6]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[3]/td[4]/a[1]


E atualize a página
    Reload Page


Então sistema deve remover item do carrinho
    Get Text    //h3[@class='panel-title'][contains(.,'1490')]
