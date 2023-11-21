            #language: pt
            # Login na Plataforma - US-0002

            Funcionalidade: Realizar login na plataforma da EBAC-SHOP - US-0002
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma 
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação do portal Ebac

            Cenário: Usuário ativo
            Quando eu digitar um <usuarioAtivo>
            E a senha <senha>
            Então devo ser direcionado para a tela de Meus Pedidos

            Exemplos:
            | usuarioAtivo          | senha       |
            | "joao@ebac.com.br"    | "teste@123" |


            Cenário: Usuário Não Ativo
            Quando eu digitar um <usuario> não ativo
            E a senha <senha>
            Então devo ver uma <mensagem>

            Exemplos:
            | usuario       | senha       | mensagem                                   |
            | "joao@teste"  | "teste@123" | "Apenas usuários ativos podem fazer login" |


            Cenário: Senha ou user incorreto
            Quando eu digitar um <usuario> ou sua <senha> errados
            Então devo ver uma <mensagem>

            Exemplos:
            | usuario       | senha  | mensagem                                                  |
            | "joao@teste"  | "123"  | "Senha ou usuário incorretos, por favor, tente novamente" |


            Cenário: Senha ou user incorreto pela 3ª vez
            Quando eu digitar um <usuario> ou sua <senha> errada pela terceira vez
            Então devo ver uma <mensagem>
            E o login estará trancado por 15 minutos 

            Exemplos:
            | usuario       | senha  | mensagem                                                                                        |
            | "joao@teste"  | "123"  | "muitas tentativas de login realizadas, para sua segurança o login será travado por 15 minutos" |