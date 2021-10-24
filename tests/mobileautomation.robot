*** Settings ***
Documentation        Aqui estará 

Test Setup           Abrir aplicativo
Test Teardown        Fechar aplicativo

Resource            ../resources/package.robot

*** Test Case ***
Caso de Teste 01: Logar no YouTube
    [Tags]      LOGAR
    Dado que o cliente esteja na tela de Home do YouTube
    E logue no aplicativo com a conta "testerobotframework@gmail.com"

Caso de Teste 02: Usar método Swipe na tela
    [Tags]      SWIPE
    Dado que o cliente esteja na tela de Home do YouTube
    Quando o cliente entrar no menu "Explorar"
    E usar o swipe da tela até o décimo item da tela
    E clicar no vídeo
    Então o vídeo deverá abrir o vídeo para o cliente

Caso de Teste 03: Pesquisar canal “Prime Experts”
    [Tags]        PRIME
    Dado que o cliente esteja na tela de Home do YouTube
    E pesquise um vídeo sobre "Prime Experts"
    E acessar o canal da Prime
    Quando clicar em Inscrever-se
    Então será apresentado como Inscrito
