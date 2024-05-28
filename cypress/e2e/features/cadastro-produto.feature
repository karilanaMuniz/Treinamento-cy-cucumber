      #language: pt
      Funcionalidade: Cadastro de produtos
      Eu como Admin do sistema serverest
      Quero cadastrar produtos
      Para ter um estoque

      Cenario: Cadastro de produtos com sucesso
      Dados que eu esteja na tela de cadastro de produtos
      Quando eu inserir <nome>, <preco>, <descricao>, <quantidade>
      Então deve validar o nome <nome> do produto na lista
      Exemplos:
      | nome          | preco | descricao           | quantidade |
      | "CelularTres" | 100   | "Celular descrição" | 10         |
      | "Celulardois" | 100   | "Celular descrição" | 30         |
      | "CelularUm"   | 100   | "Celular descrição" | 20         |