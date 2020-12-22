drop database Hoteles;
create database Hoteles;
Use Hoteles;

create table Hotel(
IdHotel int auto_increment primary key,
CantidadDisponible int,
Pais varchar(50),
Estrellas int
);

create table Cliente(
IdCliente int auto_increment primary key,
Nombre varchar(50),
Apellido varchar(50)
);

create table Habitacion(
IdHabitacion int auto_increment primary key,
Tipo varchar(50),
Estado boolean,
IdHotel int,
foreign key(IdHotel) references Hotel(IdHotel)
);

create table Reservacion(
IdReservacion int auto_increment primary key,
IdHabitacion int,
IdCliente int,
IdHotel int,
Fecha date,
foreign key(IdHabitacion) references Habitacion(IdHabitacion),
foreign key(IdCliente) references Cliente(IdCliente),
foreign key(IdHotel) references Hotel(IdHotel)
);

create table Registro(
IdRegistro int auto_increment primary key,
IdReservacion int,
CheckIn time,
CheckOut time,
Mora int,
foreign key(IdReservacion) references Reservacion(IdReservacion)
);