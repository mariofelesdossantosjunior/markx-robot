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


Should have task
    [Arguments]  ${task_name}
    Wait Until Element Is Visible       xpath=//*[@resource-id="taskText"][@text="${task_name}"]   
    ...     5s     

Remove task by name
    [Arguments]  ${task_name}

    ${button}  Set Variable  xpath=//android.widget.Button[@text="SIM"]

    Click Element                       xpath=//*[@text="${task_name}"]/../..//*[@resource-id="removeTask"]
    Wait Until Element Is Visible       ${button}    5s
    Click Element                       ${button}  


Finish task by name
    [Arguments]  ${task_name}

    ${radio}  Set Variable              xpath=//*[@text="${task_name}"]/../..//*[@resource-id="updateTask"]

    Wait Until Element Is Visible       ${radio}    5s
    Click Element                       ${radio}      

Task should be done
    [Arguments]  ${task_name}

    Wait Until Element Is Visible       xpath=//*[@text="${task_name}"]/..//android.widget.ImageView   5s