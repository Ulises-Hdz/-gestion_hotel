![Tecnologico](/doc/TEC.imagen.jpg)
# GESTIONAMIENTO DE UN HOTEL.

* Intregrantes 
    * Ulises Hernández Gutiérrez
    * Ethan Alfredo Gutierrez Perez
    * Erick Hazel Garcia Marquez

## 1.Descripcion del problema.
* ### Se debe gestionar un hotel teniendo en cuenta que se deben realizar reservas para los clientes via teclado osea los clientes ingresen sus datos y estos se guardan para realizar la reserva de su habitacion otro aspecto que se debe ver es seleccionar el tipo de habitacion que el cliente desea tener y los dias que se quedara para esto se necesitan funciones para guardar los datos del cliente para luego confirmar la reserva que se quiere realizar. 

## 2. Definición de la solucion.
* ### Se debe gestionar un hotel a traves del codigo de python en cual se desplegaran opciones en la terminal en que deberas escoger via teclado una opcion de de las que desea ejecutar, si registrar clientes, agregar habitaciones, realizar reservas, ver cuantas habitaciones estan disponibles y salir del menu. fuera de la terminal, se van a crear las clases de habitacion, reserva, cliente y hotel con sus respectivos atributos y tambien se van a crear los metodos de agregar habitacion, registrar clientes, realizar reserva y mostrar las habitaciones disponibles esos serian los metodos del hotel por ultimo se va a hacer un menu que ejecute cada metodo via teclado osea seleccionar un numero y se ejecutara uno de los metodos.
## 3. Diseño de la solucion.
### Codigo Pseint: 
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230449.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230505.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230524.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230545.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230559.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230611.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230624.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230635.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230649.png)
![Pseint](/doc/Captura%20de%20pantalla%202024-11-30%20230701.png)
### Diagrama de flujo:
![Diagrama](/doc/GestionHotel4%20prueba.png)
## 4. Desarrollo de la solucion.
### Codigo de Python:
```python

class Habitacion:
    def __init__(self, numero, tipo):
        self.numero = numero
        self.tipo = tipo
        self.ocupada = False

class Cliente:
    def __init__(self, nombre, dni):
        self.nombre = nombre
        self.dni = dni

class Reserva:
    def __init__(self, cliente, habitacion, dias):
        self.cliente = cliente
        self.habitacion = habitacion
        self.dias = dias

class Hotel:
    def __init__(self, nombre):
        self.nombre = nombre
        self.habitaciones = []
        self.clientes = []
        self.reservas = []

    def agregar_habitacion(self):
        print("AGREGAR HABITACIONES")
        numero = int(input("Ingresa el número de la habitación: "))
        tipo = input("Ingresa el tipo de habitación (Junior Suite/Suite Delux/Master Suite): ")
        habitacion = Habitacion(numero, tipo)
        self.habitaciones.append(habitacion)
        print(f"Habitación {numero} de tipo {tipo} agregada correctamente.")

    def registrar_cliente(self):
        print("REGISTRO DE CLIENTES")
        nombre = input("Ingresa el nombre del cliente: ")
        dni = input("Ingresa el DNI del cliente: ")
        cliente = Cliente(nombre, dni)
        self.clientes.append(cliente)
        print(f"Cliente {nombre} registrado correctamente.")

    def realizar_reserva(self):
        print("MENU DE RESERVA")
        dni_cliente = input("Ingresa el DNI del cliente: ")
        numero_habitacion = int(input("Ingresa el número de la habitación: "))
        dias = int(input("Ingresa la cantidad de días de la reserva: "))

        cliente = next((c for c in self.clientes if c.dni == dni_cliente), None)
        habitacion = next((h for h in self.habitaciones if h.numero == numero_habitacion), None)

        if cliente and habitacion and not habitacion.ocupada:
            reserva = Reserva(cliente, habitacion, dias)
            self.reservas.append(reserva)
            habitacion.ocupada = True
            print(f"Reserva realizada para {cliente.nombre} en la habitación {habitacion.numero} por {dias} días.")
        else:
            print("No se pudo realizar la reserva. Verifique la disponibilidad y los datos ingresados.")

    def mostrar_habitaciones_disponibles(self):
        disponibles = [h.numero for h in self.habitaciones if not h.ocupada]
        if disponibles:
            print(f"Habitaciones disponibles: {', '.join(map(str, disponibles))}")
        else:
            print("No hay habitaciones disponibles.")

def main():
    hotel = Hotel("HOTEL SUNFLOWER")

    while True:
        print("\n1. Agregar habitación")
        print("2. Registrar cliente")
        print("3. Realizar reserva")
        print("4. Mostrar habitaciones disponibles")
        print("5. Salir")
        
        opcion = input("Selecciona una opción: ")

        if opcion == "1":
            hotel.agregar_habitacion()
        elif opcion == "2":
            hotel.registrar_cliente()
        elif opcion == "3":
            hotel.realizar_reserva()
        elif opcion == "4":
            hotel.mostrar_habitaciones_disponibles()
        elif opcion == "5":
            print("Gracias por usar el sistema de gestión de hotel. ¡Hasta la próxima!")
            break
        else:
            print("Opción no válida. Intenta nuevamente.")

if __name__ == "__main__":
    main()
```

## 5. Depuracion y pruebas.
* ### Prueba de Python:
![Prueba_Python](/doc/Captura%20de%20pantalla%202024-12-02%20102948.png)

## 6. Documentacion.
* ### Cada metodo realiza una accion diferente como: 
 1. Agregar Habitacion: Crea una habitacion con su numero respectivo y el tipo de habitacion que es.
 2. Registrar cliente: Aqui se le pide via teclado al cliente su nombre y su dni para registrarlo.
 3. Realizar reserva: Aqui se pide el dni del cliente registrado y la habitacion registrada anteriormnete para confirmar la reserva.
 4. Mostrar Habiatciones disponibles: Aqui se muestra la lista de habitaciones agregadas anteriormente.

Estos serian los metodos o acciones que se pueden ejecutar en el menu del hotel.


