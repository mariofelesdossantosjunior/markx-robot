*** Settings ***
Documentation     Elementos e ações da tela de tarefas

Library           AppiumLibrary

*** Variables ***
${new__task__input}          xpath=//*[@resource-id="newTask"]
${crete_button}              xpath=//*[@resource-id="createTask"]

*** Keywords ***
Create a new task
    [Arguments]  ${task_name}
    

    Wait Until Element Is Visible       ${new__task__input}

    Input Text                          ${new__task__input}  ${task_name}
    Click Element                       ${crete_button}
    
    Wait Until Page Contains            ${task_name}  5s