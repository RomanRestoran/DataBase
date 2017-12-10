use Cource_proj

create table Users(
ID_user int constraint PK_US primary key,
Loginn nvarchar(20),
password_user nvarchar(20),
User_mam nvarchar(20),
User_adres nvarchar(30),
Phone int
)

create table Product
(
ID_product int constraint PK_PROD primary key,
Mark nvarchar(15),
Model nvarchar(20),
Price float(10),
Count_product int,
Characteristics_product int constraint FK_CHARACT foreign key (Characteristics_product) references Characteristics (ID_charact)
)

create table Characteristics
(
ID_charact int constraint PK_CHARACT primary key,
Release date, --дата выхода
Type_prod nvarchar(15), --тип ноутбука
Processor nvarchar(30),  --процессор
Model_processor nvarchar(20), --модель процессора
Frequency_proc int, --частота
Body_note nvarchar(10), --корпус
Thickness float, --толщина
Diagonal float, --диагональ экрана
RAM int, -- оперативная память
HDD int, --жесткий диск
Video_card nvarchar(30) -- видеокарат
)

create table Orders
(
ID_orders int constraint PK_ORDERS primary key,
ID_user_orders int constraint FK_USORD foreign key (ID_user_orders) references Users (ID_user) ,
ID_model int constraint FK_MODEL foreign key (ID_model) references Product (ID_product),
DATE_orders date
)

create table Reapirs
(
ID_repairs int constraint PK_REPAIRS primary key,
ID_user_repairs int constraint FK_USREP foreign key (ID_user_repairs) references Users (ID_user),
Date_repairs date,
ID_repairs_model int,
Problems nvarchar(100)
)

create table Shares
(
ID_shares int constraint PK_SHARES primary key,
NAME_shares nvarchar(20),
DATE_begin date,
DATE_end date,
SIZE_shares float
)