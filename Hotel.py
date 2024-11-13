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
class ServicioCuarto:
    def __init__ (self , habitacion , cliente ):
        self.habitacion = habitacion 
        self.cliente = cliente 
def Agregar_habitacion (self):
    numero = int(input("Ingrese el numero de la habitacion:"))
    tipo = input("Elige que tipo de habitacion quiere (Sencilla/Doble)")