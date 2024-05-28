
Cypress.Commands.add('login', (email, senha) => {
  cy.visit('login')
  cy.get('[data-testid="email"]').type(email)
  cy.get('[data-testid="senha"]').type(senha)
  cy.get('[data-testid="entrar"]').click()
  cy.get('h1', { timeout: 10000 }).should('contain', 'Bem Vindo')

})

Cypress.Commands.add('cadastrarProdutos', (nome, preco, descricao, quantidade) => {
  cy.visit('admin/cadastrarprodutos')
  cy.get('[data-testid="nome"]').type(nome)
  cy.get('[data-testid="preco"]').type(preco)
  cy.get('[data-testid="descricao"]').type(descricao)
  cy.get('[data-testid="quantity"]').type(quantidade)
  cy.get('[data-testid="cadastarProdutos"]').click()

})