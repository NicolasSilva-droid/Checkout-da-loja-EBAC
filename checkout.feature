            #language: pt

            Funcionalidade: Checkout da loja EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu tenha os dados necessários para concluir o cadastro

            Cenário: E-mail de formato inválido
            Quando eu digitar no campo do e-mail "bruno7ebac"
            Então deve exibir uma mensagem de erro "Formato de e-mail inválido"

            Cenário: Cadastrar campos vazios
            Quando eu digitar informações em campos vazios
            Então deve exibir uma mensagem de alerta "Esse campo não pode ser preenchido"

            Cenário: Dado obrigatório não apresentado
            Quando eu não responder um campo de dado obrigatório marcado com asteriscos
            Então deve exibir uma mensagem de alerta "Dado obrigatório não apresentado"

            Esquema do Cenário: Validar o 'CEP'
            Quando eu informar <CEP>
            E ele for <existente>
            Então deve exibir uma <mensagem> de compra autorizada

            Exemplos:
            | CEP         | existente | mensagem          |
            | "88010-010" | "sim"     | "autorizada"      |
            | "88000-000" | "sim"     | "autorizada"      |
            | "23439-716" | "não"     | "não autoriazada" |
