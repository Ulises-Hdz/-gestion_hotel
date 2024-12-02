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
    print("BIENVENIDO AL HOTEL SUNFLOWER, ¿QUE DESEA REALIZAR?")
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
 