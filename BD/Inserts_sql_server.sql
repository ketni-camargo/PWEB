--Inserindo melhoria
insert into tb_melhoria (descricaoMelhoria, dataHoraMelhoria) values 
('Ol�, gostaria de deixar como sugest�o, acrescentar um campo para coment�rios nas receitas', getdate()); 

insert into tb_melhoria (descricaoMelhoria, dataHoraMelhoria) values 
('Seria legal se pudessemos adicionar fotos no perfil', '19/10/22'); 

insert into tb_melhoria (descricaoMelhoria, dataHoraMelhoria) values 
('Gostaria de poder adicionar v�deos na receita', '23/11/22'); 

--select * from tb_melhoria;

--Inserindo usu�rio
insert into tb_usuario (nomeusuario, email, telefone, senha) values
('Julia Almeida', 'julia.almeida@gmail.com', '99796-4052', 'julinha10');

insert into tb_usuario (nomeusuario, email, telefone, senha) values
('Carlos Pessoa', 'carlos.pessoa@gmail.com', '99896-5053', 'helloWorld');

insert into tb_usuario (nomeusuario, email, telefone, senha, tipo) values
('Ketni Camargo', 'ketni_camargo@hotmail.com', '99663-2343', 'ninjadeKonoha',1);--admin

insert into tb_usuario (nomeusuario, email, telefone, senha, tipo) values
('Andressa Couto', 'andressa_couto@gmail.com', '99767-5698', 'vampireDiares',1);--admin

insert into tb_usuario (nomeusuario, email, telefone, senha, tipo) values
('Vinicius Zanon', 'vinicius.zanon@fatec.sp.gov', '99143-4565', 'jogadordeMagic',1); --admin

insert into tb_usuario (nomeusuario, email, telefone, senha, tipo) values
('Matheus Rubio', 'matheus.rubio@fatec.sp.gov', '87451-8401', 'jogadorValorant',1); --admin

insert into tb_usuario (nomeusuario, email, telefone, senha, tipo) values
('Grace Zanon', 'grace.zanon@fatec.sp.gov.br', '78494-4895', 'ViVa2nOis',1); 

--select * from tb_usuario;


--Inserindo Categoria de Ingrediente
insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Fruta');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('L�cteos'); --categoria de leite condensado

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Refresco'); --categoria do suco em p�

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Gelatinoso'); --categoria da gelatina

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Aquoso'); --categoria da �gua

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Ovos');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Gr�os');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Cereais');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Carne-Boi');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Carne-Porco');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Frango');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Legume');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Verdura');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Peixe');

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Latic�nios e Derivados'); --categoria de manteiga

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Hortali�a'); --categoria da cebola

insert into tb_categoria_ingrediente (nomecategoriaingrediente) values
('Farin�ceos'); --categoria da farinha de mandioca

--select * from tb_categoria_ingrediente;


--Inserindo Unidade de medida
insert into tb_unidade_medida (tipomedida) values
('Gramas');

insert into tb_unidade_medida (tipomedida) values
('Unidade');

insert into tb_unidade_medida (tipomedida) values
('Caixinha');

insert into tb_unidade_medida (tipomedida) values
('Saquinho'); --suco

insert into tb_unidade_medida (tipomedida) values
('ML');

insert into tb_unidade_medida (tipomedida) values
('Colher de Sopa');

insert into tb_unidade_medida (tipomedida) values
('Colher de Ch�');

insert into tb_unidade_medida (tipomedida) values
('Colher de Caf�');

insert into tb_unidade_medida (tipomedida) values
('X�cara');

insert into tb_unidade_medida (tipomedida) values
('Copo');

insert into tb_unidade_medida (tipomedida) values
('Copo Americano');

insert into tb_unidade_medida (tipomedida) values
('Kilo');

insert into tb_unidade_medida (tipomedida) values
('Litro');

insert into tb_unidade_medida (tipomedida) values
('Duzia');

insert into tb_unidade_medida (tipomedida) values
('Ma�o');

insert into tb_unidade_medida (tipomedida) values
('Lata');

--select * from tb_unidade_medida;


--Inserindo Categoria Ingrediente Unidade de Medida
insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(2,1); --morango e banana

insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(3,2); -- leite condensado e creme de leite

insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(4,3); -- Suco em p�

insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(3,4); --gelatina

insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(5,5); --�gua

insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(2,6); --ovo

insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(6,15); --manteiga de amendoin

insert into tb_catingr_unimedida (fk_id_unidMedida, fk_id_categoriaIngrediente) values
(15,1); --suco de lim�o

--select * from tb_categoria_ingrediente;


--Inserindo Ingrediente
insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Morango', 1);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaIngrediente) values
('Leite Condensado', 2);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Creme de Leite', 2);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Suco em p� de Morango', 3);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Gelatina', 4);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('�gua Gelada', 5);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('�gua Quente', 5);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Ovo', 6);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Banana', 1);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Ma��', 1);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Abacaxi', 1);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Alface', 13);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('R�cula', 13);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Cebola', 16);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Manteiga de Amendoim', 15);

insert into tb_ingrediente (nomeingrediente, fk_id_categoriaingrediente) values
('Suco de Lim�o', 1);

--select * from tb_categoria_ingrediente;


--Inserindo Categoria de Receita
insert into tb_categoria_receita (nomecategoriareceita) values
('Doce');

insert into tb_categoria_receita (nomecategoriareceita) values
('Salgado');

insert into tb_categoria_receita (nomecategoriareceita) values
('Salgado-Assado');

insert into tb_categoria_receita (nomecategoriareceita) values
('Salgado-Frito');

insert into tb_categoria_receita (nomecategoriareceita) values
('Salgado-Massa');

insert into tb_categoria_receita (nomecategoriareceita) values
('Salgado-Geladeira');

insert into tb_categoria_receita (nomecategoriareceita) values
('Caldos');

insert into tb_categoria_receita (nomecategoriareceita) values
('Saladas');

insert into tb_categoria_receita (nomecategoriareceita) values
('Doce-Assado');

insert into tb_categoria_receita (nomecategoriareceita) values
('Doce-Frito');

insert into tb_categoria_receita (nomecategoriareceita) values
('Doce-Geladeira');

--select * from tb_categoria_receita;


--Inserindo Receita
insert into tb_receita (nomereceita, fk_id_categoriareceita, fk_id_usuario, mododepreparo, sugestaocheff) values
('SOBREMESA SIMPLES DE MORANGO', 1, 1, 'Pique e separe os morangos.
Misture as latas de leite condensado e creme de leite, e o suco em p� no liquidificador at� ficar bem homog�neo.
Depois coloque em um recipiente e misture com os morangos picados.
Se quiser que fique cremoso coloque na geladeira, se preferir mais s�lido coloque no congelador.', 
'Pode fazer tamb�m de abacaxi e outras frutas de sua prefer�ncia. Lembrando que se mudar a fruta � necess�rio mudar o suco em p� tamb�m.');

insert into tb_receita (nomereceita, fk_id_categoriareceita, fk_id_usuario, mododepreparo) values
('GELATINA COM CREME DE LEITE E LEITE CONDENSADO', 1, 2,'Passo 1 - 
Dissolva a gelatina na �gua quente, mexendo bem at� diluir tudo; Passo 2 - 
Em seguida adicione a �gua gelada e misture bem; Passo 3 - 
Transfira essa mistura para o liquidificador e adicione o creme de leite e o leite condensado; Passo 4 - 
Bata tudo por 1 minutinho e em seguida despeje essa mistura numa travessa ou em ta�as individuais; Passo 5 - 
Leve para gelar por cerca de 4 horas ou at� que fique bem firme; Passo 6 - 
Sirva em seguida.');

insert into tb_receita (nomereceita, fk_id_categoriareceita, fk_id_usuario, mododepreparo, curtidas) values
('OMELETE DE BANANA', 1, 4,'Corte a banana em rodelas e amasse com o garfo; Depois, misture com o ovo (clara e gema);
Unte uma frigideira com um fio de azeite e despeje a banana misturada com o ovo na frigideira;
Frite at� o ponto que preferir.', 5);

insert into tb_receita (nomereceita, fk_id_categoriareceita, fk_id_usuario, mododepreparo, curtidas) values
('Sorvete de Banana e Manteiga de amendoin', 11, 6,'Coloque as bananas no congelador por cerca de duas horas.
Quando estiverem congeladas, coloque-as no liquidificador. Bata por um tempo, misturando com uma colher,
e volte a bater at� alcan�ar uma textura homog�nea. Se for dif�cil alcan�ar esta textura, adicione duas colheres de leite.
Quando estiver bem cremoso, adicione a manteiga de amendoim e bata at� ficar bem cremosa. 
Se quiser um sorvete mais durinho, congele e depois sirva..', 10);


--select * from tb_receita;

--Inserindo Item da Receita
--receita 1
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(1, 1, 1, 20); -- morango
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(2, 2, 1, 2); --leite condensado 
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(2, 3, 1, 2); -- creme de leite
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(3, 4, 1, 1);

--receita 2 --verificar id_receita
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(4, 5, 2, 1); --gelatina
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(2, 2, 2, 1); -- leite condensado
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(2, 3, 2, 1); --creme de leite
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(5, 6, 2, 250); --agua gelada
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(5, 7, 2, 250); -- �gua quente

--receita 3
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(1, 8, 3, 1); --ovo
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(6, 9, 3, 2); --banana

--receita 4
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(6, 9, 4, 4); --banana
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(7, 15, 4, 2); --manteiga de amendoin

--receita 5
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(2, 2, 5, 1); --leite condensado
insert into tb_item_receita (fk_id_catmedida, fk_id_ingrediente, fk_id_receita, quantidadeingrediente) values
(8, 16, 5, 1);--suco de lim�o

--select * from tb_item_receita;


--Inserindo Denuncia
insert into tb_denuncia (fk_id_receita, descricaodenuncia, datahoraDenuncia) values
(1, 'Ol�, gostaria que verificasse essa receita, pois achei que a pessoa utilizou palavras exdr�xulas', getdate());

insert into tb_denuncia (fk_id_receita, descricaodenuncia, status, datahoraDenuncia) values
(2, 'Segui a receita e n�o deu certo, t� faltando alguma coisa', 'Rejeitada', '12/11/22');

insert into tb_denuncia (fk_id_receita, descricaodenuncia, status, datahoraDenuncia) values
(3, 'Passo a passo cont�m instru��es indevidas', 'Rejeitada', '03/11/2022');

insert into tb_denuncia (fk_id_receita, descricaodenuncia, datahoraDenuncia) values
(1, 'Essa receita � plagiada de outra receita que j� existe no site do Tudo Gostoso', '15/11/2022');

insert into tb_denuncia (fk_id_receita, descricaodenuncia, datahoraDenuncia) values
(4, 'A lista de ingredientes est� errada. Tem ingrediente no modo de preparo que n�o consta na lista!', '03/12/2022');
select * from tb_denuncia;

--select * from TB_Denuncia;


--Inserindo curtidas
insert into TB_Info_Curtidas (fk_id_usuario, fk_id_receita, dataCurtida) values
(1, 1, getdate());

insert into TB_Info_Curtidas (fk_id_usuario, fk_id_receita, dataCurtida) values
(7, 3, '03/12/2022');

insert into TB_Info_Curtidas (fk_id_usuario, fk_id_receita, dataCurtida) values
(2, 2, '20/01/2023');

insert into TB_Info_Curtidas (fk_id_usuario, fk_id_receita, dataCurtida) values
(7, 2, '20/01/2023');

insert into TB_Info_Curtidas (fk_id_usuario, fk_id_receita, dataCurtida) values
(3, 1, '04/04/2023');

insert into TB_Info_Curtidas (fk_id_usuario, fk_id_receita, dataCurtida) values
(4, 1, '09/04/2023');

insert into TB_Info_Curtidas (fk_id_usuario, fk_id_receita, dataCurtida) values
(5, 1, '15/02/2023');


--select * from TB_Info_Curtidas


--Inserindo coment�rios nas receitas
insert into TB_Comentarios (texto_comentario, fk_id_receita) values ('Fiz em casa essa receita, seguindo o passo a passo e deu certinho!', 1);

insert into TB_Comentarios (texto_comentario, fk_id_receita) values ('Fiz com abacaxi, conforme a sugest�o do cheff e ficou MARAVILHOSO!!!!', 1);

insert into TB_Comentarios (texto_comentario, fk_id_receita) values ('Troquei o lim�o por laranja e at� que ficou bom =)', 5);

--select * from TB_Comentarios;