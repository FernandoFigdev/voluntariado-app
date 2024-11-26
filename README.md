# **App Voluntariado**

![Flutter](https://img.shields.io/badge/Flutter-v3.0-blue)

**Descrição**:  
O App Voluntariado é uma aplicação mobile desenvolvida em Flutter para conectar voluntários a oportunidades de trabalho comunitário. Com uma interface simples e intuitiva, o aplicativo facilita o acesso a eventos, inscrições e informações detalhadas sobre as iniciativas de voluntariado.

---

## **Funcionalidades**

- **Splash Screen**  
  Tela inicial com uma mensagem de boas-vindas e redirecionamento automático.

- **Home Screen**  
  Tela principal com opções para visualizar oportunidades ou acessar inscrições realizadas.

- **Event List Screen**  
  Exibe uma lista de eventos de voluntariado disponíveis.

- **Event Detail Screen**  
  Apresenta informações detalhadas de cada evento e permite inscrições.

- **Registration Screen**  
  Mostra as inscrições realizadas pelo usuário.

---

## **Tecnologias Utilizadas**

- **Framework**: Flutter  
- **Linguagem**: Dart  
- **IDE Recomendada**: Visual Studio Code  

---

## **Instalação e Execução**

1. **Clone o Repositório**
   ```bash
   git clone https://github.com/FernandoFigdev/voluntariado-app

2. **Acesse o Diretório do Projeto**
    ```bash
    cd app-voluntariado

3. **Instale as Dependências**
    ```bash
    flutter pub get

4. **Execute o Aplicativo**
    ```bash
    flutter run

## **Organização do Projeto**

- **lib/**
    - `models/`: Classes para gerenciamento de dados (oportunidades, inscrições).
    - `screens/`: Telas do aplicativo.
    - `utils/`: Configurações auxiliares, como temas e estilos.

## **Melhorias Futuras**

- Integração com APIs para sincronização em tempo real.
- Implementação de notificações push.
- Funcionalidades de login e personalização de perfis.
- Sistema de armazenamento local com SQLite.