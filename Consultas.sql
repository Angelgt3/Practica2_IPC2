use hoteles;

#Consulta 1
select count(*),pais from hotel where pais="Guatemala";
select count(*),pais from hotel where pais="Francia";
select count(*),pais from hotel where pais="Italia";

#Consulta 2
select reservacion.idreservacion,reservacion.fecha,hotel.nombre,hotel.pais,hotel.estrellas,cliente.nombre,cliente.apellido 
from reservacion,hotel,cliente
where (reservacion.fecha like '%-05-10' or reservacion.fecha like '%-09-15' or reservacion.fecha like '%-12-25') 
and (hotel.estrellas=4 or hotel.estrellas=5) and (reservacion.idcliente=cliente.idcliente)
and(reservacion.idhotel=hotel.idhotel);

#Consulta 3

select * from cliente,reservacion,habitacion  
where habitacion.tipo="simple" 
and (habitacion.idhabitacion=reservacion.idhabitacion)
and (reservacion.idcliente=cliente.idcliente);

select * from cliente,reservacion,habitacion  
where habitacion.tipo="individual" 
and (habitacion.idhabitacion=reservacion.idhabitacion)
and (reservacion.idcliente=cliente.idcliente);

#Consulta 5

select hotel.nombre,reservacion.idreservacion,registro.checkout
from reservacion,hotel,registro
where (registro.checkout between "12:00:00" and "23:59:59") 
and(reservacion.idhotel=hotel.idhotel) and (reservacion.idreservacion=registro.idreservacion);
