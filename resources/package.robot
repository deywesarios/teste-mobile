*** Settings ***
Documentation       Aqui estarão presentes todos os recursos que compõem o projeto.

##################################################
#                  Libraries                     #
##################################################
Library         AppiumLibrary

##################################################
#                  Keywords                      #
##################################################
Resource        keywords/kws_mobileautomation.robot   

##################################################
#                    Pages                       #
##################################################
Resource        pages/pages_home.robot
Resource        pages/pages_login.robot
Resource        pages/pages_explorar.robot
Resource        pages/pages_prime.robot

##################################################
#                    Hooks                       #
##################################################
Resource        hooks.robot