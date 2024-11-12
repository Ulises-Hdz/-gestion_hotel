class Habitacion: 
    def  __init__ (self , tipo , numero):
        self.numero = numero 
        self.tipo = tipo 
class Cliente:
    def __init__ (self , nombre , dni ):
        self.nombre = nombre 
        self.dni = dni 
class Reserva:
    def __init__ (self , dias , habitacion , cliente ):
        self.dias = dias 
        self.habitacion = habitacion 
        self.cliente = cliente   
                 