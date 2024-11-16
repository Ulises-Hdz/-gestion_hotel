import json 
from flask import Flask , render_template , request , jsonify

app = Flask(__name__)
@app.route('/')
def index():
    return render_template('index.html')
@app.route('/procesar' , methods=['POST'])
def procesar(): 
class Habitacion: 
    def  __init__ (self , tipo , numero):
        self.numero = numero 
        self.tipo = tipo 
        self.ocupada = False
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
class Hotel:
    def __init__ (self ,nombre ):
        self.nombre = nombre 
        self.habitaciones = []
        self.clientes= []
        self.reservas = []

    def agregar_habitacion (self):
        numero = int(input("Ingrese el numero de la habitacion:"))
        tipo = input("Elige que tipo de habitacion quiere (Junior Suite/Suite/Master Suite):")
        habitacion = Habitacion(numero , tipo)
        self.habitaciones.append(habitacion)
        print(f"Habitación {numero} de tipo {tipo} agregada correctamente.")
        self.habitaciones.append(habitacion)
    def registrar_cliente (self):
        nombre = input("Ingrese el nombre del cliente:")
        dni = input("Ingrese el DNI del cliente:")
        cliente = Cliente(nombre , dni )
        self.clientes.append(cliente)
        print(f"El cliente {cliente} se registro correctamente.")
    def realizar_reserva (self ):
        dni_cliente = input("Ingrese el DNI del cliente: ")
        numero_habitacion = input("Ingrese el numero de la habitacion: ")
        dias = int(input("Ingrese la cantidad de dias:"))
        reserva = Reserva(dias , numero_habitacion , dni_cliente)
        self.reservas.append(reserva )
    def Servicios_cuarto (self):
if __name__ == '__main__':
    app.run(debug=True)