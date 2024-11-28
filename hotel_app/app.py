from flask import Flask, render_template, request, jsonify
import  json

# Configuración de Flask
app = Flask(__name__)

def load_reservations():
     with open('data/habitaciones.json' , 'r') as file: 
         return json.load(file)
 
def save_reservations (reservations):
    with open('data/habitaciones.json' , 'w') as file: 
        json.dump(reservations, file, indent=4)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/habitaciones.html')
def habitaciones():
    return render_template('habitaciones.html')

@app.route('/comida.html')
def comida():
    return render_template('comida.html')

@app.route('/servicios.html')
def servicios():
    return render_template('servicios.html')

@app.route('/junior_suite.html')
def junior_suite():
    return render_template('junior_suite.html')

@app.route('/suite_delux.html')
def suite_delux():
    return render_template('suite_delux.html')

@app.route('/master_suite.html')
def master_suite():
    return render_template('master_suite.html')

@app.route ('/register' , methods =['GET' , 'POST'])
def register():
     if request.method == 'POST':
          data = request.get_json() 
          room_number = data['room_number']
          guest_name = data['guest_name'] 
          room_type = data['room_type']   
          reservacion = load_reservations()  
          reservacion.append({'room_number': room_number, 'guest_name': guest_name , 'room_type' : room_type}) 
          save_reservations(reservacion) 
          return jsonify({'message': 'Reserva registrada con éxito'})
     return render_template('registro.html')


@app.route ('/registro.html')
def registro():
    return render_template('registro.html')


if __name__ == '__main__':
   app.run(host='0.0.0.0', port=5000, debug=True)

