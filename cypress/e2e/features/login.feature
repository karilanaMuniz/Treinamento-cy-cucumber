                  #language: pt

                  Funcionalidade: Login

                  Contexto:
                  Dado que eu esteja na tela de login do serverest

                  Cenário: Deve fazer login com sucesso
                  Quando eu inserir email e senha
                  Então deve ser direcionado para home do serverest

                  Cenário: Deve fazer login com sucesso usando exemplo
                  Quando eu inserir email:"kqlv@emailteste.com" e senha: "teste"
                  Então deve ser direcionado para home do serverest


                  Cenário: Deve  validar erro ao fazer login com email e senha inválidas
                  Quando eu inserir email:"teste@loma.com" e senha: "teste1234"
                  Então deve exibir uma mensagem de erro

                  #colocar Dado como contexto

                  Esquema do Cenário: Devo fazer login com sucesso usando tabela
                  Quando eu inserir <email> e <senha>
                  Então deve ser direcionado para home do serverest

                  Exemplos:
                  | email                        | senha      |
                  | "dwaynekassulkedvm@test.com" | "Test;123" |
                  | "kqlv@emailteste.com"        | "teste"    |
                  | "cfischer@example.net"       | 123456"    |
                 
