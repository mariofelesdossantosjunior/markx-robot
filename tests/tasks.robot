*** Settings ***
Documentation     Suite de testes do cadastro de tarefas

Resource        ../resources/base.resource

Test Setup      Start Session
Test Teardown   Finish Session

*** Test Cases ***
Deve poder casastrar uma tarefa

    Do Login
    Create a new task   Estudar XPath

    

    
    
