Algoritmo NotUni
	Escribir "##########################################"
	Escribir "                NOTUNI                    "
	Escribir "##########################################"
	Escribir "¡Bienvenido a NOTUNI!"
	Escribir "El programa que te ayudará a calcular tus notas de manera fácil y rápida."
	
	seguir <- "s"
	
	Mientras seguir = "s" O seguir = "si" Hacer
		repetir_menu <- 1
		Mientras repetir_menu = 1 Hacer
			Escribir ""
			Escribir "¿Que desea hacer?"
			Escribir "1. Calcular notas(puntos a puntos)"
			Escribir "2. Calcular porcentajes de notas"
			Escribir "Ingrese el número de la opción: " 
			Leer opcion
			
			Si opcion = 1 Entonces
				calcular_puntos
				repetir_menu <- 0
			Sino 
				Si opcion = 2 Entonces
					calcular_porcentajes
					repetir_menu <- 0
				Sino
					Escribir "Opción no válida. Por favor, ingrese 1 o 2."
				FinSi
			FinSi
		FinMientras
		
		Escribir ""
		Escribir "¿Deseas calcular tus notas nuevamente o de alguna otra materia? (s/n): " 
		Leer seguir
	FinMientras
	
	Escribir ""
	Escribir "Programa finalizado."
FinAlgoritmo

SubProceso calcular_porcentajes
	LIMITE_PORCENTAJE <- 100.0
	repetir_bucle <- 0
	Mientras repetir_bucle = 0 Hacer
		Escribir ""
		Escribir "¿Cuántas notas deseas ingresar?: " 
		Leer numerodenotas
		Escribir "Ingrese el punto máximo de la nota: " 
		Leer punto_max
		
		Si numerodenotas <= 0 O punto_max <= 0 Entonces
			Escribir "Lo siento, ingresaste un valor inválido."
		Sino
			repetir_bucle <- 1
		FinSi
	FinMientras
	
	total_porcentaje <- 0
	total_porcentaje_obtenido <- 0
	
	Para i <- 1 Hasta numerodenotas Con Paso 1 Hacer
		repetir_bucle <- 0
		Mientras repetir_bucle = 0 Hacer
			Escribir ""
			Escribir "Evaluación número ", i
			
			Escribir "Ingrese el porcentaje de la nota (ejemplo: 20 para 20%): "
			Leer porcentajenota
			Escribir "Ingrese el punto obtenido: " 
			Leer punto_obtenido
			
			Si punto_max <= 0 O punto_obtenido < 0 O porcentajenota < 0 Entonces
				Escribir "--------------------------------------------------------------------------------"
				Escribir "Los valores no pueden ser negativos y el punto máximo debe ser mayor a 0."
				Escribir "--------------------------------------------------------------------------------"
			Sino
				Si punto_obtenido > punto_max Entonces
					Escribir "--------------------------------------------------------------------------------"
					Escribir "Error: El punto obtenido no puede ser mayor al punto máximo."
					Escribir "--------------------------------------------------------------------------------"
				Sino
					porcentaje_obtenido <- (punto_obtenido / punto_max) * porcentajenota
					total_porcentaje <- total_porcentaje + porcentajenota
					total_porcentaje_obtenido <- total_porcentaje_obtenido + porcentaje_obtenido
					
					Escribir "De esta nota obtuviste un ", porcentaje_obtenido, "% de tu nota final."
					repetir_bucle <- 1
				FinSi
			FinSi
		FinMientras
	FinPara
	
	Si total_porcentaje > 0 Y total_porcentaje <= LIMITE_PORCENTAJE Entonces
		resumen_puntos <- (total_porcentaje_obtenido / 100) * punto_max
		
		Escribir ""
		Escribir "##########################################"
		Escribir "             RESUMEN DE NOTUNI            "
		Escribir "##########################################"
		Escribir "Porcentaje total evaluado de las ", numerodenotas, " notas: ", total_porcentaje, "%"
		Escribir "PORCENTAJE TOTAL OBTENIDO: ", total_porcentaje_obtenido, "% de un 100% ideal."
		Escribir "TU NOTA ACUMULADA EN PUNTOS: ", resumen_puntos, " / ", punto_max
		
		Si total_porcentaje < LIMITE_PORCENTAJE Entonces
			restante <- LIMITE_PORCENTAJE - total_porcentaje
			Escribir "Todavía falta por evaluar un ", restante, "% de la materia."
		FinSi
		Escribir "------------------------------------------"
	Sino
		Escribir ""
		Escribir "El porcentaje total sumó ", total_porcentaje, "%. No puede ser mayor a 100%."
	FinSi
FinSubProceso

SubProceso calcular_puntos
	
	
	repetir_bucle <- 1
	Mientras repetir_bucle = 1 Hacer
		resumennotas <- 0
		
		Escribir "Digite el número de notas: " 
		Leer numerodenotas
		Escribir "Digite el número máximo de puntos: " 
		Leer numero_max
		
		Si numerodenotas >= 0 Y numero_max >= 0 Entonces
			Si numerodenotas = 0 Entonces
				resumenpuntos <- 0
			Sino
				Para i <- 1 Hasta numerodenotas Con Paso 1 Hacer
					Escribir "Digite la nota ", i, ": " 
					Leer notas
					resumennotas <- resumennotas + notas
				FinPara
				resumenpuntos <- (resumennotas / numerodenotas)
			FinSi
			
			Si resumenpuntos > numero_max Entonces
				Escribir "--------------------------------------------------------------------------------"
				Escribir "Error: El promedio en puntos no puede ser mayor al número máximo de puntos."
				Escribir "--------------------------------------------------------------------------------"
			Sino
				Escribir "##########################################"
				Escribir "             RESUMEN DE NOTUNI            "
				Escribir "##########################################"
				Escribir "Su promedio en puntos es: ", resumenpuntos
				Escribir "------------------------------------------"
				repetir_bucle <- 0
			FinSi
		Sino
			Escribir "El número de notas debe ser mayor a 0 y los puntos máximos no pueden ser negativos. Intente de nuevo."
		FinSi
	FinMientras
FinSubProceso

