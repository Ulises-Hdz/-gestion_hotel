Algoritmo GestionHotel4
	// Declaraci�n de variables
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
	// Crear variables para los nombres de los hu�spedes (m�ximo 5 por tipo de habitaci�n)
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
		Escribir 'Men� del hotel:'
		Escribir '1. Reservar habitaci�n'
		Escribir '2. Liberar habitaci�n'
		Escribir '3. Mostrar informaci�n del hotel'
		Escribir '4. Salir'
		Leer Opcion
		// Validaci�n de la opci�n
		Si Opcion<1 O Opcion>4 Entonces
			Escribir 'Opci�n inv�lida, por favor elija nuevamente.'
		SiNo
			Seg�n Opcion Hacer
				1:
					Escribir 'Seleccione el tipo de habitaci�n:'
					Escribir '1. Habitaci�n est�ndar ($', PrecioHabitacion1, ')'
					Escribir '2. Habitaci�n junior ($', PrecioHabitacion2, ')'
					Escribir '3. Habitaci�n suite ($', PrecioHabitacion3, ')'
					Leer TipoHabitacion
					Seg�n TipoHabitacion Hacer
						1:
							Si HabitacionesDisponibles1>0 Entonces
								Escribir 'Ingrese su nombre:'
								Leer NombreHuesped
								// Buscar la primera habitaci�n est�ndar libre
								Si NombreHuespedEstandar1='' Entonces
									NombreHuespedEstandar1 <- NombreHuesped
									HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
									HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
									IngresosTotales <- IngresosTotales+PrecioHabitacion1
									Escribir 'Habitaci�n est�ndar reservada con �xito para ', NombreHuesped, '.'
								SiNo
									Si NombreHuespedEstandar2='' Entonces
										NombreHuespedEstandar2 <- NombreHuesped
										HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
										HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
										IngresosTotales <- IngresosTotales+PrecioHabitacion1
										Escribir 'Habitaci�n est�ndar reservada con �xito para ', NombreHuesped, '.'
									SiNo
										Si NombreHuespedEstandar3='' Entonces
											NombreHuespedEstandar3 <- NombreHuesped
											HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
											HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
											IngresosTotales <- IngresosTotales+PrecioHabitacion1
											Escribir 'Habitaci�n est�ndar reservada con �xito para ', NombreHuesped, '.'
										SiNo
											Si NombreHuespedEstandar4='' Entonces
												NombreHuespedEstandar4 <- NombreHuesped
												HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
												HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
												IngresosTotales <- IngresosTotales+PrecioHabitacion1
												Escribir 'Habitaci�n est�ndar reservada con �xito para ', NombreHuesped, '.'
											SiNo
												Si NombreHuespedEstandar5='' Entonces
													NombreHuespedEstandar5 <- NombreHuesped
													HabitacionesDisponibles1 <- HabitacionesDisponibles1-1
													HabitacionesOcupadas1 <- HabitacionesOcupadas1+1
													IngresosTotales <- IngresosTotales+PrecioHabitacion1
													Escribir 'Habitaci�n est�ndar reservada con �xito para ', NombreHuesped, '.'
												SiNo
													Escribir 'Lo sentimos, no hay habitaciones est�ndar disponibles.'
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir 'Lo sentimos, no hay habitaciones est�ndar disponibles.'
							FinSi
						2:
							Si HabitacionesDisponibles2>0 Entonces
								Escribir 'Ingrese su nombre:'
								Leer NombreHuesped
								// Buscar la primera habitaci�n junior libre
								Si NombreHuespedJunior1='' Entonces
									NombreHuespedJunior1 <- NombreHuesped
									HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
									HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
									IngresosTotales <- IngresosTotales+PrecioHabitacion2
									Escribir 'Habitaci�n junior reservada con �xito para ', NombreHuesped, '.'
								SiNo
									Si NombreHuespedJunior2='' Entonces
										NombreHuespedJunior2 <- NombreHuesped
										HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
										HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
										IngresosTotales <- IngresosTotales+PrecioHabitacion2
										Escribir 'Habitaci�n junior reservada con �xito para ', NombreHuesped, '.'
									SiNo
										Si NombreHuespedJunior3='' Entonces
											NombreHuespedJunior3 <- NombreHuesped
											HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
											HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
											IngresosTotales <- IngresosTotales+PrecioHabitacion2
											Escribir 'Habitaci�n junior reservada con �xito para ', NombreHuesped, '.'
										SiNo
											Si NombreHuespedJunior4='' Entonces
												NombreHuespedJunior4 <- NombreHuesped
												HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
												HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
												IngresosTotales <- IngresosTotales+PrecioHabitacion2
												Escribir 'Habitaci�n junior reservada con �xito para ', NombreHuesped, '.'
											SiNo
												Si NombreHuespedJunior5='' Entonces
													NombreHuespedJunior5 <- NombreHuesped
													HabitacionesDisponibles2 <- HabitacionesDisponibles2-1
													HabitacionesOcupadas2 <- HabitacionesOcupadas2+1
													IngresosTotales <- IngresosTotales+PrecioHabitacion2
													Escribir 'Habitaci�n junior reservada con �xito para ', NombreHuesped, '.'
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
								// Buscar la primera habitaci�n suite libre
								Si NombreHuespedSuite1='' Entonces
									NombreHuespedSuite1 <- NombreHuesped
									HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
									HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
									IngresosTotales <- IngresosTotales+PrecioHabitacion3
									Escribir 'Habitaci�n suite reservada con �xito para ', NombreHuesped, '.'
								SiNo
									Si NombreHuespedSuite2='' Entonces
										NombreHuespedSuite2 <- NombreHuesped
										HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
										HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
										IngresosTotales <- IngresosTotales+PrecioHabitacion3
										Escribir 'Habitaci�n suite reservada con �xito para ', NombreHuesped, '.'
									SiNo
										Si NombreHuespedSuite3='' Entonces
											NombreHuespedSuite3 <- NombreHuesped
											HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
											HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
											IngresosTotales <- IngresosTotales+PrecioHabitacion3
											Escribir 'Habitaci�n suite reservada con �xito para ', NombreHuesped, '.'
										SiNo
											Si NombreHuespedSuite4='' Entonces
												NombreHuespedSuite4 <- NombreHuesped
												HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
												HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
												IngresosTotales <- IngresosTotales+PrecioHabitacion3
												Escribir 'Habitaci�n suite reservada con �xito para ', NombreHuesped, '.'
											SiNo
												Si NombreHuespedSuite5='' Entonces
													NombreHuespedSuite5 <- NombreHuesped
													HabitacionesDisponibles3 <- HabitacionesDisponibles3-1
													HabitacionesOcupadas3 <- HabitacionesOcupadas3+1
													IngresosTotales <- IngresosTotales+PrecioHabitacion3
													Escribir 'Habitaci�n suite reservada con �xito para ', NombreHuesped, '.'
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
					FinSeg�n
				2:
					Escribir 'Seleccione el tipo de habitaci�n para liberar'
					Escribir '1. Habitaci�n est�ndar'
					Escribir '2. Habitaci�n junior'
					Escribir '3. Habitaci�n suite'
					Leer TipoHabitacion
					Seg�n TipoHabitacion Hacer
						1:
							Si HabitacionesOcupadas1>0 Entonces
								Escribir 'Ingrese el nombre de la persona que liberar� la habitaci�n est�ndar:'
								Leer NombreHuesped
								// Buscar y liberar la habitaci�n correspondiente
								Si NombreHuespedEstandar1=NombreHuesped Entonces
									NombreHuespedEstandar1 <- ''
									HabitacionesOcupadas1 <- HabitacionesOcupadas1-1
									HabitacionesDisponibles1 <- HabitacionesDisponibles1+1
									Escribir 'Habitaci�n est�ndar liberada con �xito.'
								SiNo
									Si NombreHuespedEstandar2=NombreHuesped Entonces
										NombreHuespedEstandar2 <- ''
										HabitacionesOcupadas1 <- HabitacionesOcupadas1-1
										HabitacionesDisponibles1 <- HabitacionesDisponibles1+1
										Escribir 'Habitaci�n est�ndar liberada con �xito.'
									SiNo
										Si NombreHuespedEstandar3=NombreHuesped Entonces
											NombreHuespedEstandar3 <- ''
											HabitacionesOcupadas1 <- HabitacionesOcupadas1-1
											HabitacionesDisponibles1 <- HabitacionesDisponibles1+1
											Escribir 'Habitaci�n est�ndar liberada con �xito.'
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir 'Lo sentimos, no hay habitaciones est�ndar ocupadas.'
							FinSi
						2:
							// Similar para liberar habitaciones Junior y Suite...
					FinSeg�n
				3:
					Escribir 'Habitaciones est�ndar disponibles: ', HabitacionesDisponibles1
					Escribir 'Habitaciones est�ndar ocupadas: ', HabitacionesOcupadas1
					Escribir 'Habitaciones junior disponibles: ', HabitacionesDisponibles2
					Escribir 'Habitaciones junior ocupadas: ', HabitacionesOcupadas2
					Escribir 'Habitaciones suite disponibles: ', HabitacionesDisponibles3
					Escribir 'Habitaciones suite ocupadas: ', HabitacionesOcupadas3
					// Mostrar m�s informaci�n similar para las habitaciones junior y suite
					Escribir 'Ingresos totales: $', IngresosTotales
				4:
					Escribir 'Gracias por utilizar nuestro sistema de gesti�n de hotel.'
			FinSeg�n
		FinSi
	Hasta Que Opcion=4
FinAlgoritmo
