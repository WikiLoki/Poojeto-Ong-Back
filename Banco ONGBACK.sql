

Create Table Usuario(
	UserINFO		int				Not Null	Primary Key,
	Avaliacao		varchar(500)	Not Null,
	Outras_Ativ		varchar(500)	Not Null,
)go

Create Table Estado(
	EstadoID		int				Not Null	Primary Key,
	Nome			varchar(30)		Not Null,
	UF				char(2)			Not Null,
)

Create Table Cidade(
	CidadeID		int				Not Null	Primary Key,
	Nome			varchar(30)		Not Null,
	EstadoID		int				Foreign Key References Estado(EstadoID)
)

Create Table Localizacao(
	LocalizacaoID	int				Not Null	Primary Key,
	Rua				varchar(100)	Not Null,
	CidadeID		int				Foreign Key References Cidade(CidadeID)
)

Create Table Data_Hora(
	dhID			int				Not Null	Primary Key,
	Data			datetime		Not Null,
	Horario			time(7)			Not Null,
	AddINFO			varchar(200)	Not Null,
)

Create Table Infomacoes_Ativ(
	InfoID			int				Not Null	Primary Key,
	Descricao		varchar(500)	Not Null,
	LocalizacaoID	int				Foreign Key References Localizacao(LocalizacaoID),
	dhID			int				Foreign Key References Data_Hora(dhID)
)

CREATE TABLE Atividade(
	VoluntarioID	int		Not Null	Primary Key,
	OngID			int		Not NuLL	Foreign Key References ONG(OngID),
	InfoID			int		Not	Null	Foreign Key References Infomacoes_Ativ(InfoID)
)

Create Table Informacoes_ONG(
	OngIF			int				Not Null	Primary Key,
	Area_atuacao	varchar(50)		Not Null,
	Tipos_ativ		varchar(100)	Not Null
)

Create Table ONG(
	OngID			int				Not Null Primary Key,
	Nome			varchar(1100)	Not Null,
	N_de_ID			varchar(50)		Not Null,
	OngIF			int				Foreign Key References Informacoes_ONG(OngIF)
)

Create Table Voluntario(
	VoluntarioID	int				Not Null	Primary Key,
	CPF				varchar(11)		Not Null,
	Email			varchar(50)		Not Null,
	Nome			varchar(50)		Not Null,
	Idade			char(3)			Not Null,
	UserINFO		int				Foreign Key References Usuario(UserINFO)
)