use avaliacao_22a;

/*Primeiro exercício*/
insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) value
("As Crônicas de Nárnia", "C.S. Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

/*Segundo exercício*/
insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"), 
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"), 
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

/* Terceiro exercício */
insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Napoleão Bom na Party", "Elma Maria", 1503, TRUE, "História", "978-0064471191", "Shounen Pulo", 2, "Português");

/* Quarto exercício */
update Livros
set disponivel = false
where ano_publicacao < 2000;

/* Quinto exercício */
update Livros
set editora = "Plume Books"
where titulo = "1984";

/* Sexto exercício */
update Livros
set idioma = "Inglês"
where editora = "Penguin Books";

/* Sétimo exercício */
update Livros
set titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
where isbn = "978-0439708180";

/* Oitavo exercício */
delete from Livros
where categoria = "Terror";

/* Nono exercício */
delete from Livros
where idioma = "Francês" and ano_publicacao < 1970;

/* Décimo exercício */
delete from Livros
where titulo = "As Crônicas de Nárnia";

/* Décimo primeiro exercício */
delete from Livros
where editora = "Penguin Books";

/* Décimo segundo exercício */
select * from Livros
where quantidade_paginas > 500;

/* Décimo terceiro exercício */
select count(categoria) from Livros
group by categoria;

/* Décimo quarto exercício */
select * from Livros
limit 0,5;

/* Décimo quinto exercício */
select count(quantidade_paginas) and sum(quantidade_pagina) from Livros
where categoria = "Drama";

/* Décimo sexto exercício */
select avg(ano_publicacao) from Livros;

/* Décimo sétimo exercício */
SELECT max(ano_publicacao), min(ano_publicacao)
FROM Livros;

/* Décimo oitavo exercício */
select * from Livros
order by ano_publicacao desc;

/* Décimo nono exercício */
select titulo from Livros
where idioma = "Inglês"
UNION
select titulo from Livros
where idioma = "Português";

/* Vigésimo exercício */
select * from Livros
where autor = "George Orwell";