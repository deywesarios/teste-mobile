Documentation       Aqui estarão presente todas as variáveis/elementos da tela de login do YouTube.

*** Variables ***
##################################################
#                      LOGIN                     #
##################################################
&{USER}     
...         BTN_ACCOUNT=Conta
...         BTN_LOGIN=//*[contains(@text,'FAZER LOGIN')]
...         BTN_ADD_ACCOUNT=//*[contains(@text,'Adicionar conta')]
...         INPUT_TEXT=android.widget.EditText  
...         BTN_NEXT=//*[contains(@text,'Próxima')]
...         SHOW_PASSWD=//*[contains(@text,'Mostrar senha')]
...         TXT_AGREE=//*[contains(@text,'Concordo')]
...         BTN_AGREE=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[4]
...         BTN_MORE=//*[contains(@text,'MAIS')]
...         BTN_ACCEPT=//*[contains(@text,'ACEITAR')]