CREATE TABLE TB_Melhoria
	(
		id_melhoria  INT IDENTITY
		, descricaoMelhoria VARCHAR(500)
		, status VARCHAR(20)
		, dataHoraMelhoria DATE
	)
;

CREATE TABLE TB_Usuario
	(
		id_usuario INT IDENTITY
		, email VARCHAR(100)
		, senha VARCHAR(20)
		, telefone VARCHAR(15)
		, nomeUsuario VARCHAR(50)
		, tipo INT
	)
;

CREATE TABLE TB_Categoria_Ingrediente
	(
		id_categoriaIngrediente  INT IDENTITY
		, nomeCategoriaIngrediente VARCHAR(50)
		, fk_id_unidMedida INT
	)
;

CREATE TABLE TB_Unidade_Medida
	(
		id_unidMedida INT IDENTITY
		, tipoMedida VARCHAR(20)
	)
;

CREATE TABLE TB_CatIngr_UniMedida 
	(
		id_catMedida INT IDENTITY
		, fk_id_unidMedida INT
		, fk_id_categoriaIngrediente INT
	)
;

CREATE TABLE TB_Ingrediente
	(
		id_ingrediente INT IDENTITY
		, fk_id_categoriaIngrediente INT
		, nomeIngrediente VARCHAR(50)
	)
;

CREATE TABLE TB_Categoria_Receita
	(
		Id_categoriaReceita INT IDENTITY 
		, nomeCategoriaReceita VARCHAR(20)
	)
;

CREATE TABLE TB_Receita
	(
		id_receita INT IDENTITY
		, fk_id_categoriaReceita INT
		, fk_id_usuario INT 
		, nomeReceita varchar(60)
		, modoDePreparo varchar(500)
		, sugestaoCheff varchar(300)
		, curtidas INT
	)
;

CREATE TABLE TB_Item_Receita 
	(
		id_ingrReceita INT IDENTITY
		, fk_id_catMedida INT
		, fk_id_ingrediente INT
		, fk_id_receita INT
		, quantidadeIngrediente INT
	)
;

CREATE TABLE TB_Denuncia
	(
		id_denuncia INT IDENTITY
		, fk_id_receita INT
		, descricaoDenuncia VARCHAR(500)
		, status VARCHAR(20),
		dataHoraDenuncia DATE
	)
;

--Criando as PK
ALTER TABLE TB_Melhoria
	ADD CONSTRAINT PK_Melhoria_ID 
		PRIMARY KEY(id_melhoria)
;

ALTER TABLE TB_Usuario
	ADD CONSTRAINT PK_Usuario_ID 
		PRIMARY KEY(id_usuario)
;

ALTER TABLE TB_Categoria_Ingrediente
	ADD CONSTRAINT PK_CategoriaIngrediente_ID 
	PRIMARY KEY(Id_categoriaIngrediente)
;

ALTER TABLE TB_Unidade_Medida
	ADD CONSTRAINT PK_UnidadeMedida_ID 
		PRIMARY KEY(id_unidMedida)
;

ALTER TABLE TB_catIngr_uniMedida
	ADD CONSTRAINT PK_INGREDMEDIDA_ID 
		PRIMARY KEY (id_catMedida)
;

ALTER TABLE TB_Ingrediente
	ADD CONSTRAINT PK_Ingrediente_ID 
		PRIMARY KEY(id_ingrediente)
;

ALTER TABLE TB_Categoria_Receita
	ADD CONSTRAINT PK_CategoriaReceita_ID 
		PRIMARY KEY(Id_categoriaReceita)
;

ALTER TABLE TB_Receita
	ADD CONSTRAINT PK_Receita_ID 
		PRIMARY KEY(id_receita)
;

ALTER TABLE TB_Item_Receita
	ADD CONSTRAINT PK_ITEMRECEITA_ID 
		PRIMARY KEY(id_ingrReceita)
;

ALTER TABLE TB_Denuncia
	ADD CONSTRAINT PK_Denuncia_ID 
		PRIMARY KEY(id_denuncia)
;


---- Criando as FK 

--Denuncia
ALTER TABLE TB_Denuncia
	ADD CONSTRAINT fk_id_receita FOREIGN KEY(fk_id_receita)
		REFERENCES TB_Receita (id_receita)
;

--Receita
ALTER TABLE TB_Receita
	ADD CONSTRAINT fk_id_categoriaReceita FOREIGN KEY (fk_id_categoriaReceita)
		REFERENCES TB_Categoria_Receita (id_categoriaReceita)
;

ALTER TABLE TB_Receita
	ADD CONSTRAINT fk_id_usuario FOREIGN KEY (fk_id_usuario)
		REFERENCES TB_Usuario (id_usuario)
;

--ItemReceita
ALTER TABLE TB_Item_Receita 
	ADD CONSTRAINT fk_id_receita_item_receita FOREIGN KEY (fk_id_receita)
		REFERENCES TB_Receita (id_receita)
;

ALTER TABLE TB_Item_Receita 
	ADD CONSTRAINT fk_id_ingrediente FOREIGN KEY (fk_id_ingrediente)
		REFERENCES TB_Ingrediente (id_ingrediente)
;

ALTER TABLE TB_Item_Receita 
	ADD CONSTRAINT fk_id_catMedida FOREIGN KEY (fk_id_catMedida)
		REFERENCES TB_catIngr_uniMedida (id_catMedida)
;

--Ingrediente
ALTER TABLE TB_Ingrediente 
	ADD CONSTRAINT fk_id_categoriaIngrediente FOREIGN KEY (fk_id_categoriaIngrediente)
		REFERENCES TB_Categoria_Ingrediente (id_categoriaIngrediente)
;

--CategoriaIngrediente
ALTER TABLE TB_Categoria_Ingrediente 
	ADD CONSTRAINT fk_id_unidMedida FOREIGN KEY (fk_id_unidMedida)
		REFERENCES TB_Unidade_Medida (id_unidMedida)
;

--TB_catIngr_uniMedida 
ALTER TABLE TB_catIngr_uniMedida 
	ADD CONSTRAINT fk_id_unidMedida_catIngr_uniMedida FOREIGN KEY (fk_id_unidMedida)
		REFERENCES TB_Unidade_Medida (id_unidMedida)

;

ALTER TABLE TB_catIngr_uniMedida 
	ADD CONSTRAINT fk_id_categoriaIngrediente_catIngr_uniMedida FOREIGN KEY (fk_id_categoriaIngrediente)
		REFERENCES TB_Categoria_Ingrediente (id_categoriaIngrediente)
;


--alter table TB_Denuncia drop constraint fk_id_receita


------------- ATUALIZAÇÕES MELHORIAS -------------------------------------------------------------------------------------

CREATE TABLE TB_Info_Curtidas
	(
		id_curtida INT IDENTITY
		, fk_id_usuario INT
		, fk_id_receita INT
		, dataCurtida DATE
	)
;


CREATE TABLE TB_Comentarios
	(
		id_comentario INT IDENTITY
		, texto_comentario varchar(500)
		, fk_id_receita INT
	)
;


--Criando as PK
ALTER TABLE TB_Info_Curtidas
	ADD CONSTRAINT PK_id_curtida 
	PRIMARY KEY(id_curtida)
;

ALTER TABLE TB_Comentarios
	ADD CONSTRAINT PK_id_comentario 
	PRIMARY KEY(id_comentario)
;


--Criando as FK
ALTER TABLE TB_Info_Curtidas
	ADD CONSTRAINT fk_id_usuario_info_curtidas FOREIGN KEY (fk_id_usuario)
		REFERENCES TB_Usuario (id_usuario)
;

ALTER TABLE TB_Info_Curtidas
	ADD CONSTRAINT fk_id_receita_curtida FOREIGN KEY (fk_id_receita)
		REFERENCES TB_Receita (id_receita)
;

ALTER TABLE TB_Comentarios
	ADD CONSTRAINT fk_id_receita_comentario FOREIGN KEY (fk_id_receita)
		REFERENCES TB_Receita (id_receita)
;

ALTER TABLE TB_Receita
	ADD dataCadastro DATE
;

ALTER TABLE TB_Receita
	ADD foto VARBINARY(MAX)
;