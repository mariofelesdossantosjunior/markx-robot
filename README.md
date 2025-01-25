# Automação de Testes Mobile com Robot Framework e Appium

Este repositório contém os exemplos, exercícios e projetos desenvolvidos durante o curso [Robot Framework e Appium para Android e iOS](https://www.udemy.com/course/robot-framework-e-appium-para-android-e-ios/?couponCode=2021PM25), disponível na Udemy.

O curso abrange a utilização do **Robot Framework** em conjunto com o **Appium** para criar testes automatizados em dispositivos Android e iOS.

## 🔧 Configuração do Ambiente

Antes de começar, é necessário configurar o ambiente de desenvolvimento. Siga os passos abaixo:

### Pré-requisitos
- **Python 3.7 ou superior**: [Download](https://www.python.org/)
- **Node.js** (necessário para o Appium): [Download](https://nodejs.org/)
- **Appium**:
  ```bash
  npm install -g appium
  ```
- **Drivers para dispositivos**:
  - [Android Studio](https://developer.android.com/studio) (para ADB e emuladores)
  - Xcode (para testes em dispositivos iOS)
- **Bibliotecas Python**:
  - Instale as dependências do Robot Framework e Appium:
    ```bash
    pip install robotframework robotframework-appiumlibrary
    ```

## 🗂️ Estrutura do Projeto

- `api/`: Contém o backend da aplicação.
- `apps/`: Contém a apk que será testada.
- `tests/`: Contém os casos de teste organizados por funcionalidade.
- `resources/`: Contém arquivos de configuração, keywords personalizadas e dados reutilizáveis.
- `reports/`: Armazena relatórios gerados após a execução dos testes.
- `drivers/`: Contém os drivers necessários para comunicação com os dispositivos.

## 🚀 Executando os Testes

1. Conecte o dispositivo ou inicie o emulador/simulador.
2. Certifique-se de que o Appium está em execução:
   ```bash
   appium
   ```
3. Execute os testes usando o Robot Framework:
   ```bash
   robot -d reports tests/
   ```

## 📋 Funcionalidades Abordadas

- Configuração do Appium para Android e iOS.
- Estruturação de projetos de teste no Robot Framework.
- Criação de keywords reutilizáveis.
- Execução de testes em dispositivos físicos e emuladores.
- Geração de relatórios detalhados.

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests com melhorias ou correções.

## 📚 Recursos Adicionais

- [Documentação do Robot Framework](https://robotframework.org/)
- [Documentação do Appium](http://appium.io/)
- [Fórum do Curso na Udemy](https://www.udemy.com/course/robot-framework-e-appium-para-android-e-ios/)

## 🛡️ Licença

Este projeto é licenciado sob a [MIT License](LICENSE).

---

Desenvolvido com base no curso [Robot Framework e Appium para Android e iOS](https://www.udemy.com/course/robot-framework-e-appium-para-android-e-ios/?couponCode=2021PM25).

