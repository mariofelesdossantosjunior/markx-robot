*** Settings ***
Documentation     Testes de Login

Resource          ../resources/base.resource

Test Setup           Start Session
Test Teardown        Finish session

*** Test Cases ***
Deve logar com sucesso
    
    Do Login
    Wait Until Page Contains  Minhas tarefas   5