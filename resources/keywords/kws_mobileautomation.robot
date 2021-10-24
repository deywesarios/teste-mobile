***Settings***
Documentation   Aqui estarão presente todas as keywords dos testes mobile.

Resource        ../package.robot
*** Variables ***
${SENHA}        robot123456

*** Keywords ***
#TESTS CASES
Dado que o cliente esteja na tela de Home do YouTube
    Wait Until Element Is Visible       xpath=${HOME.BTN_INICIO}
    Wait Until Element Is Visible       accessibility_id=${HOME.ELEMENT_PAGE_HOME}

E logue no aplicativo com a conta "${EMAIL}"
    Click Element                       accessibility_id=${USER.BTN_ACCOUNT}
    Wait Until Page Contains Element    xpath=${USER.BTN_LOGIN}     5s
    Click Element                       xpath=${USER.BTN_LOGIN}
    Wait Until Page Contains Element    xpath=${USER.BTN_ADD_ACCOUNT}        5s
    Click Element                       xpath=${USER.BTN_ADD_ACCOUNT}
    Wait Until Page Contains Element    class=${USER.INPUT_TEXT}            10s
    Click Element                       class=${USER.INPUT_TEXT}
    Input Text                          class=${USER.INPUT_TEXT}      ${EMAIL}
    Click Element                       xpath=${USER.BTN_NEXT}
    Wait Until Page Contains Element    xpath=${USER.SHOW_PASSWD}   5s
    Click Element                       class=${USER.INPUT_TEXT}
    Input Text                          class=${USER.INPUT_TEXT}      ${SENHA}
    Click Element                       xpath=${USER.BTN_NEXT}
    Wait Until Page Contains Element    xpath=${USER.TXT_AGREE}    5s
    Click Element                       xpath=${USER.BTN_AGREE}
    Wait Until Page Contains Element    xpath=${USER.BTN_MORE}       5s
    Click Element                       xpath=${USER.BTN_MORE}
    Wait Until Page Contains Element    xpath=${USER.BTN_ACCEPT}       5s
    Click Element                       xpath=${USER.BTN_ACCEPT}
    Wait Until Page Contains Element    accessibility_id=${HOME.ELEMENT_PAGE_HOME}      10s
    Wait Until Element Is Visible       xpath=${HOME.BTN_INICIO}

Quando o cliente entrar no menu "Explorar"
    Click Element       xpath=${EXPLORAR.BTN_EXPLORAR}

E usar o swipe da tela até o décimo item da tela
    Wait Until Element Is Visible   class=${EXPLORAR.VIEW}
    FOR  ${x}  IN RANGE  0  10
        Swipe  580  1500  580  700
        Sleep  1
    END
E clicar no vídeo
    Click Element At Coordinates    497    676

Então o vídeo deverá abrir o vídeo para o cliente
    Wait Until Page Contains Element      xpath=${EXPLORAR.TOP_10}      10s

E pesquise um vídeo sobre "${​​​PESQUISA}"
    Click Element       accessibility_id=${HOME.BTN_PESQUISAR}
    Input Text          id=${HOME.INPUT_PESQUISAR}         ${​​​PESQUISA}​​​
    Press Keycode       66

E acessar o canal da Prime
    Wait Until Element Is Visible   xpath=${PRIME.ACESS_CHANNEL}
    Click Element At Coordinates    549	    470

Quando clicar em Inscrever-se
    Wait Until Element Is Visible                   accessibility_id=${PRIME.BTN_INSCREVER}
    Click Element                                   accessibility_id=${PRIME.BTN_INSCREVER}

Então será apresentado como Inscrito
    Wait Until Element Is Visible                   accessibility_id=${PRIME.BTN_CANCEL_INS}

