*** Settings ***
Documentation     Suite de testes do cadastro de tarefas

Resource        ../resources/base.resource

Test Setup      Start Session
Test Teardown   Finish Session

*** Test Cases ***
Deve poder cadastrar uma tarefa

    ${task_name}=   Set Variable    Estudar XPath
    
    Remove task from database    ${task_name}

    Do Login
    Create a new task   ${task_name}
    Should have task    ${task_name}

Deve poder remover uma tarefa indesejada

    ${task_name}=   Set Variable    Comprar refrigerante
    Remove task from database    ${task_name}
    
    Do Login
    Create a new task       ${task_name}
    Should have task        ${task_name}

    Remove task by name                 ${task_name}
    Wait Until Page Does Not Contain    ${task_name}    5s
    

    

    
    
