Algoritmo GestionHotel4
	// Declaración de variables
	HabitacionesDisponibles1 <- 5
	HabitacionesDisponibles2 <- 5
	HabitacionesDisponibles3 <- 5
	HabitacionesOcupadas1 <- 0
	HabitacionesOcupadas2 <- 0
	HabitacionesOcupadas3 <- 0
	PrecioHabitacion1 <- 100
	PrecioHabitacion2 <- 200
	PrecioHabitacion3 <- 300
	IngresosTotales <- 0
	Seleccion <- 0
	TipoHabitacion <- 0
	// Crear variables para los nombres de los huéspedes (máximo 5 por tipo de habitación)
	NombreHuespedEstandar1 <- ''
	NombreHuespedEstandar2 <- ''
	NombreHuespedEstandar3 <- ''
	NombreHuespedEstandar4 <- ''
	NombreHuespedEstandar5 <- ''
	NombreHuespedJunior1 <- ''
	NombreHuespedJunior2 <- ''
	NombreHuespedJunior3 <- ''
	NombreHuespedJunior4 <- ''
	NombreHuespedJunior5 <- ''
	NombreHuespedSuite1 <- ''
	NombreHuespedSuite2 <- ''
	NombreHuespedSuite3 <- ''
	NombreHuespedSuite4 <- ''
	NombreHuespedSuite5 <- ''
	// Programa principal
	Repetir
		Escribir 'Menú del hotel:'
		Escribir '1. Reservar habitación'
		Escribir '2. Liberar habitación'
		Escribir '3. Mostrar información del hotel'
		Escribir '4. Salir'
		Leer Opcion
		// Validación de la opción
		Si Opcion<1 O Opcion>4 Entonces
			Escribir 'Opción inválida, por favor elija nuevamente.'
		SiNo
			Según Opcion Hacer
				1:
					Escribir 'Seleccione el tipo de habitación:'
					Escribir '1. Habitación estándar ($', PrecioHabitacion1, ')'
					Escribir '2. Habitación junior ($', PrecioHabitacion2, ')'
					Escribir '3. Habitación suite ($', PrecioHabitacion3, ')'
					Leer TipoHabitacion
					Según TipoHabitacion Hacer
						1:
							Si HabitacionesDisponibles1>0 Entonces
								Escribir 'Ingrese su nombre:'
								Leer NombreHuesped
								// Buscar la primera habitación estándar libre
								Si NombreHuespedEstandar1='' Entonces
									NombreHuespedEstandar1 <- NombreHuesped
									HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
									HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
									IngresosTotales <- IngresosTotales+PrecioHabitacion1
									Escribir 'Habitación estándar reservada con éxito para ', NombreHuesped, '.'
								SiNo
									Si NombreHuespedEstandar2='' Entonces
										NombreHuespedEstandar2 <- NombreHuesped
										HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
										HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
										IngresosTotales <- IngresosTotales+PrecioHabitacion1
										Escribir 'Habitación estándar reservada con éxito para ', NombreHuesped, '.'
									SiNo
										Si NombreHuespedEstandar3='' Entonces
											NombreHuespedEstandar3 <- NombreHuesped
											HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
											HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
											IngresosTotales <- IngresosTotales+PrecioHabitacion1
											Escribir 'Habitación estándar reservada con éxito para ', NombreHuesped, '.'
										SiNo
											Si NombreHuespedEstandar4='' Entonces
												NombreHuespedEstandar4 <- NombreHuesped
												HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
												HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
												IngresosTotales <- IngresosTotales+PrecioHabitacion1
												Escribir 'Habitación estándar reservada con éxito para ', NombreHuesped, '.'
											SiNo
												Si NombreHuespedEstandar5='' Entonces
													NombreHuespedEstandar5 <- NombreHuesped
													HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
													HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
													IngresosTotales <- IngresosTotales+PrecioHabitacion1
													Escribir 'Habitación estándar reservada con éxito para ', NombreHuesped, '.'
												SiNo
													Escribir 'Lo sentimos, no hay habitaciones estándar disponibles.'
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir 'Lo sentimos, no hay habitaciones estándar disponibles.'
							FinSi
						2:
							Si HabitacionesDisponibles2>0 Entonces
								Escribir 'Ingrese su nombre:'
								Leer NombreHuesped
								// Buscar la primera habitación junior libre
								Si NombreHuespedJunior1='' Entonces
									NombreHuespedJunior1 <- NombreHuesped
									HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
									HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
									IngresosTotales <- IngresosTotales+PrecioHabitacion2
									Escribir 'Habitación junior reservada con éxito para ', NombreHuesped, '.'
								SiNo
									Si NombreHuespedJunior2='' Entonces
										NombreHuespedJunior2 <- NombreHuesped
										HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
										HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
										IngresosTotales <- IngresosTotales+PrecioHabitacion2
										Escribir 'Habitación junior reservada con éxito para ', NombreHuesped, '.'
									SiNo
										Si NombreHuespedJunior3='' Entonces
											NombreHuespedJunior3 <- NombreHuesped
											HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
											HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
											IngresosTotales <- IngresosTotales+PrecioHabitacion2
											Escribir 'Habitación junior reservada con éxito para ', NombreHuesped, '.'
										SiNo
											Si NombreHuespedJunior4='' Entonces
												NombreHuespedJunior4 <- NombreHuesped
												HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
												HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
												IngresosTotales <- IngresosTotales+PrecioHabitacion2
												Escribir 'Habitación junior reservada con éxito para ', NombreHuesped, '.'
											SiNo
												Si NombreHuespedJunior5='' Entonces
													NombreHuespedJunior5 <- NombreHuesped
													HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
													HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
													IngresosTotales <- IngresosTotales+PrecioHabitacion2
													Escribir 'Habitación junior reservada con éxito para ', NombreHuesped, '.'
												SiNo
													Escribir 'Lo sentimos, no hay habitaciones junior disponibles.'
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir 'Lo sentimos, no hay habitaciones junior disponibles.'
							FinSi
						3:
							Si HabitacionesDisponibles3>0 Entonces
								Escribir 'Ingrese su nombre:'
								Leer NombreHuesped
								// Buscar la primera habitación suite libre
								Si NombreHuespedSuite1='' Entonces
									NombreHuespedSuite1 <- NombreHuesped
									HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
									HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
									IngresosTotales <- IngresosTotales+PrecioHabitacion3
									Escribir 'Habitación suite reservada con éxito para ', NombreHuesped, '.'
								SiNo
									Si NombreHuespedSuite2='' Entonces
										NombreHuespedSuite2 <- NombreHuesped
										HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
										HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
										IngresosTotales <- IngresosTotales+PrecioHabitacion3
										Escribir 'Habitación suite reservada con éxito para ', NombreHuesped, '.'
									SiNo
										Si NombreHuespedSuite3='' Entonces
											NombreHuespedSuite3 <- NombreHuesped
											HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
											HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
											IngresosTotales <- IngresosTotales+PrecioHabitacion3
											Escribir 'Habitación suite reservada con éxito para ', NombreHuesped, '.'
										SiNo
											Si NombreHuespedSuite4='' Entonces
												NombreHuespedSuite4 <- NombreHuesped
												HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
												HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
												IngresosTotales <- IngresosTotales+PrecioHabitacion3
												Escribir 'Habitación suite reservada con éxito para ', NombreHuesped, '.'
											SiNo
												Si NombreHuespedSuite5='' Entonces
													NombreHuespedSuite5 <- NombreHuesped
													HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
													HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
													IngresosTotales <- IngresosTotales+PrecioHabitacion3
													Escribir 'Habitación suite reservada con éxito para ', NombreHuesped, '.'
												SiNo
													Escribir 'Lo sentimos, no hay habitaciones suite disponibles.'
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir 'Lo sentimos, no hay habitaciones suite disponibles.'
							FinSi
					FinSegún
				2:
					Escribir 'Seleccione el tipo de habitación para liberar'
					Escribir '1. Habitación estándar'
					Escribir '2. Habitación junior'
					Escribir '3. Habitación suite'
					Leer TipoHabitacion
					Según TipoHabitacion Hacer
						1:
							Si HabitacionesOcupadas1>0 Entonces
								Escribir 'Ingrese el nombre de la persona que liberará la habitación estándar:'
								Leer NombreHuesped
								// Buscar y liberar la habitación correspondiente
								Si NombreHuespedEstandar1=NombreHuesped Entonces
									NombreHuespedEstandar1 <- ''
									HabitacionesOcupadas1 <- HabitacionesOcupadas1-1
									HabitacionesDisponibles1 <- HabitacionesDisponibles1+1
									Escribir 'Habitación estándar liberada con éxito.'
								SiNo
									Si NombreHuespedEstandar2=NombreHuesped Entonces
										NombreHuespedEstandar2 <- ''
										HabitacionesOcupadas1 <- HabitacionesOcupadas1-1
										HabitacionesDisponibles1 <- HabitacionesDisponibles1+1
										Escribir 'Habitación estándar liberada con éxito.'
									SiNo
										Si NombreHuespedEstandar3=NombreHuesped Entonces
											NombreHuespedEstandar3 <- ''
											HabitacionesOcupadas1 <- HabitacionesOcupadas1-1
											HabitacionesDisponibles1 <- HabitacionesDisponibles1+1
											Escribir 'Habitación estándar liberada con éxito.'
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir 'Lo sentimos, no hay habitaciones estándar ocupadas.'
							FinSi
						2:
							// Similar para liberar habitaciones Junior y Suite...
					FinSegún
				3:
					Escribir 'Habitaciones estándar disponibles: ', HabitacionesDisponibles1
					Escribir 'Habitaciones estándar ocupadas: ', HabitacionesOcupadas1
					Escribir 'Habitaciones junior disponibles: ', HabitacionesDisponibles2
					Escribir 'Habitaciones junior ocupadas: ', HabitacionesOcupadas2
					Escribir 'Habitaciones suite disponibles: ', HabitacionesDisponibles3
					Escribir 'Habitaciones suite ocupadas: ', HabitacionesOcupadas3
					// Mostrar más información similar para las habitaciones junior y suite
					Escribir 'Ingresos totales: $', IngresosTotales
				4:
					Escribir 'Gracias por utilizar nuestro sistema de gestión de hotel.'
			FinSegún
		FinSi
	Hasta Que Opcion=4
FinAlgoritmo
