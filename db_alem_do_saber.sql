CREATE TABLE [tb_postagem] (
	id bigint NOT NULL,
	Titulo varchar(255) NOT NULL,
	Texto varchar(2000) NOT NULL,
	Foto varchar(600),
	Video varchar(600),
	Curtir int,
	Amei int,
	Indico int,
	TemaId bigint NOT NULL,
	UsuarioId bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGEM] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_tema] (
	id bigint NOT NULL,
	Assunto varchar(255) NOT NULL,
	Descricao varchar(2000) NOT NULL,
  CONSTRAINT [PK_TB_TEMA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuario] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Foto varchar(5000) NOT NULL,
	Senha varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_USUARIO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [tb_postagem] WITH CHECK ADD CONSTRAINT [tb_postagem_fk0] FOREIGN KEY ([TemaId]) REFERENCES [tb_tema]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagem] CHECK CONSTRAINT [tb_postagem_fk0]
GO
ALTER TABLE [tb_postagem] WITH CHECK ADD CONSTRAINT [tb_postagem_fk1] FOREIGN KEY ([UsuarioId]) REFERENCES [tb_usuario]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagem] CHECK CONSTRAINT [tb_postagem_fk1]
GO



