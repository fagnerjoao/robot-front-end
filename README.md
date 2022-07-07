## Robot Framework front-end


# Setup PC
- Python 3.9 ou superior
- JDK 8 ou superior
- Android Studio (apenas para utilização das avds)
- Visual Studio Code
- Appium v1.22.3-4
- Configurar as variáveis de ambiente (ex: JAVA_HOME e ANDROID_HOME) de acordo com SO


# Setup Visual Studio Code (Extensões)
- Robot Framework Formatter
- Robot Framework Intellisense
- RobotF Extension


# Setup Robot Framework
- pip install robotframework (https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installation-instructions)
- pip install robotframework-zoomba (https://github.com/Accruent/robotframework-zoomba)


# Cenários Front-end
Nome Cenário Automatizado               |   Tag
----------------------------------------| ---------
Cenário 1: cadastro básico de cliente   | cenario_1
Cenário 2: Consultar cadastro de cliente| cenario_2
Cenário 3: atualizar cadastro de cliente| cenario_3
Cenário 4: exportar dados de clientes   | cenario_4
Cenário 5: excluir cadastro de cliente  | cenario_5

** Os demais cenários estão no arquivo "cenarios.txt"

# Execução dos Cenários:
- O arquivo .apk deve estar na pasta app do pojeto
- Todos os cenários. Ex: robot -d ./logs tests/cadastroUsuario.robot   
- Cenário específico. Ex: robot -i cenario_5 -d ./logs tests/cadastroUsuario.robot
- Os logs serão gerados e salvos na pasta logs acada nova execução


# Resources
##### [Robot Framework](https://robotframework.org/)
##### [Robot Framework - User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#getting-started)
##### [Mobile_Library Documentation](https://accruent.github.io/robotframework-zoomba/MobileLibraryDocumentation.html#library-documentation-top)
