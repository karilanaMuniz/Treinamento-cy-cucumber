import { Given, When, Then, DataTable } from '@badeball/cypress-cucumber-preprocessor';

Given(`que eu esteja na tela de cadastro de produtos`, () => {
    //cy.login('7f2db2c7-cbcf-41da-9796-4915f97505fd@uorak.com', 'teste')
    cy.fixture('usuarioAdmin').then((usuario) => {
        cy.login(usuario.email, usuario.senha)

    })



});

When(`eu inserir {string}, {float}, {string}, {int}`, (nome, preco, descricao, quantidade) => {
    let nomeProduto = `${nome}-${Date.now()}` // Para criar um numero alertorio no nome da tabela de produto
    cy.cadastrarProdutos(nomeProduto, preco, descricao, quantidade)
});

Then(`deve validar o nome {string} do produto na lista`, (nome) => {
    cy.get('.jumbotron').should('contain', nome)

});