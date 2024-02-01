# robot-framework-desafio-tecnico

Robot Framework Desafio Técnico README

Descrição do projeto

    - Projeto criado para validação de conhecimento em Robot Framework de Marcos Paes.

Pré-requisitos
    - Python (versão 3.9.0)
    - Robot Framework (versão 4.1)
    - Robot Framework BDD Library (versão 2.0.8.1)

Dependências
    - Chromedriver (versão usada para desenvolvimento 121.0.6167.85)
        - Disponível em https://googlechromelabs.github.io/chrome-for-testing/

    - Selenium Library (versão 6.2.0)
        - pip install robotframework-seleniumlibrary==6.2.0

Ferramentas 
    -Visual Studio Code
    -Extensão: Robot Code - Robot Framework Support


Execução dos testes
    - Para execução de todos os testes disponíveis:
        - robot .\tests\     

    - Para execução dos happy paths
        - robot --include happyPath .\tests\

    - Para execução dos alternative paths
        - robot --include alternative .\tests\
