import json
from flask import Flask, render_template, request, jsonify

class Hotel:
    def __init__(self, data_file):
        """Inicializa el hotel con un archivo JSON para simular una base de datos."""
        self.data_file = data_file
        self._load_data()

    def _load_data(self):
        """Carga los datos de habitaciones desde un archivo JSON."""
        try:
            with open(self.data_file, 'r') as f:
                self.habitaciones = json.load(f)
        except FileNotFoundError:
            self.habitaciones = []

    def _save_data(self):
        """Guarda los datos actualizados de las habitaciones en el archivo JSON."""
        with open(self.data_file, 'w') as f:
            json.dump(self.habitaciones, f, indent=4)

    def obtener_habitaciones(self):
        """Devuelve la lista de habitaciones."""
        return self.habitaciones

    def reservar_habitacion(self, habitacion_id, cliente):
        """Reserva una habitación si está disponible."""
        for habitacion in self.habitaciones:
            if habitacion['id'] == habitacion_id:
                if not habitacion['reservada']:
                    habitacion['reservada'] = True
                    habitacion['cliente'] = cliente
                    self._save_data()
                    return {"mensaje": f"Habitación {habitacion_id} reservada por {cliente}."}
                return {"error": "La habitación ya está reservada."}
        return {"error": "La habitación no existe."}


# Configuración de Flask
app = Flask(__name__)
hotel = Hotel('data/habitaciones.json')


@app.route('/')
def index():
    """Página principal: muestra las habitaciones."""
    return render_template('index.html', habitaciones=hotel.obtener_habitaciones())


@app.route('/reservar', methods=['POST'])
def reservar():
    """Maneja las reservas de habitaciones."""
    datos = request.get_json()
    habitacion_id = datos.get('id')
    cliente = datos.get('cliente')
    resultado = hotel.reservar_habitacion(habitacion_id, cliente)
    if "error" in resultado:
        return jsonify(resultado), 400
    return jsonify(resultado)


@app.route('/reservas')
def reservas():
    """Devuelve la lista de habitaciones reservadas."""
    reservas = [h for h in hotel.obtener_habitaciones() if h['reservada']]
    return jsonify(reservas)


if __name__ == '__main__':
   app.run(host='0.0.0.0', port=5000, debug=True)

