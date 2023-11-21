            #language: pt
            # Adicionar item ao Carrinho - US-0001

            Funcionalidade: Adicionar item ao carrinho da EBAC-SHOP - US-0001
            Como cliente da EBAC-SHOP
            Quero adicionar produtos no carrinho
            Para realizar a compra dos itens

            Cenário: Produto adicionado ao carrinho com sucesso
            Dado que estou na página de um produto
            E clico no <botao>
            Então o produto deve ser <acao>

                Exemplos:
                | cor        | tamanho | quantidade | botao                    |  ação                           |
                | "Vermelho" | "M"     | 5          | "Adicionar ao Carrinho"  | "Adicionar produto ao carrinho" |
                | "Azul"     | "L"     | 3          | "Adicionar ao Carrinho"  | "Adicionar produto ao carrinho" |


            Cenário: Limite de 10 produtos por venda
            Dado que estou na página de um produto
            E seleciono uma <quantidade> maior que 10 para um único produto
            Então devo ver uma <mensagem> informando que apenas 10 itens e um mesmo produto podem ser adicionados por venda

                Exemplos:
                | quantidade |  mensagem                                            |
                | 50         | "apenas 10 produtos podem ser adicionados por venda" |


            Cenário: Compras entre R$ 200 e R$ 600
            Dado que estou no carrinho de compras da EBAC-SHOP
            E adiciono produtos que somam entre R$ 200 e R$ 600
            Então devo ganhar um <cupom>

                Exemplos:
                | valorCompra   | cupom                                      |
                | R$250         | "você recebeu um cupom de 10% de desconto" |


            Cenário: Compras acima de R$ 990,00
            Dado que estou no carrinho de compras da EBAC-SHOP
            E adiciono produtos que ao total ultrapassam R$ 990,00
            Então devo ver uma <mensagem>

                Exemplos:
                | valorCompra   | mensagem                                     |
                | R$990         | "o valor da compra não pode passar de R$990" |
            

            Cenário: Compras acima de R$ 600
            Dado que estou no carrinho de compras da EBAC-SHOP
            E adiciono produtos que somam mais de R$ 600
            Então devo ganhar um <cupom>

                Exemplos:
                | valorCompra   | cupom                                      |
                | R$650         | "você recebeu um cupom de 15% de desconto" |