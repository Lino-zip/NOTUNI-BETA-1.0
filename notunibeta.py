def main():
    
    # Presentacion para cuando se abra por primera vez el programa
    print("#" * 42)
    print("                 NOTUNI                    ")
    print("#" * 42)
    print("¡Bienvenido a NOTUNI!\nEl programa que te ayudará a calcular tus notas de manera fácil y rápida.")
    
    seguir = "s"
    
    #colocamos un while para que el usuario pueda calcular sus notas cuantas veces quiera
    while seguir == "s" or seguir == "si":
        
        #bucle para asegurar que el número de notas sea valido sin cerrar el programa
        while True:
            try:
                numerodenotas = int(input("\n¿Cuántas notas deseas ingresar?: "))
                if numerodenotas <= 0:
                    print("Lo siento, pero el número de notas debe ser mayor a 0.")
                    continue
                break  # Sale del bucle si el numero es valido
            except ValueError:
                print("Por favor, ingresa un número entero valido.")
        
        # Variables en 0
        total_porcentaje = 0
        total_porcentaje_obtenido = 0

        #colocamos un for para que el usuario pueda ingresar las notas que quiera
        for i in range(1, numerodenotas + 1):
            
            #el while True sirve para reintentar la entrada en caso de error en esta nota específica
            while True:
                print(f"\nEvaluación número {i}")
                
                try:
                    porcentajenota = float(input("Ingrese el porcentaje de la nota (ejemplo: 20 para 20%): "))
                    punto_max = float(input("Ingrese el punto máximo de la nota: "))
                    punto_obtenido = float(input("Ingrese el punto obtenido: "))
                    
                    #validaciones
                    if punto_max <= 0 or punto_obtenido < 0 or porcentajenota < 0:
                        print("-" * 80)
                        print("Los valores no pueden ser negativos y el punto máximo debe ser mayor a 0.")
                        print("-" * 80)
                        continue
                        
                    if punto_obtenido > punto_max:
                        print("-" * 80)
                        print("Error: El punto obtenido no puede ser mayor al punto máximo.")
                        print("-" * 80)
                        continue
                    
                    #estos son los calculos del programa
                    porcentaje_obtenido = (punto_obtenido / punto_max) * porcentajenota
                    total_porcentaje += porcentajenota
                    total_porcentaje_obtenido += porcentaje_obtenido 
                    
                    #se rompe el ciclo interno para seguir con la siguiente nota
                    print(f"De esta nota obtuviste un {porcentaje_obtenido:.2f}% de tu nota final.")
                    break 
                    
                except ValueError:
                    print("Por favor, ingresa un número válido.")
        
        #validacion del acumulado de los porcentajes
        if 0 < total_porcentaje <= 100:    
            
            #calculo del promedio escalado a base 20
            resumen = (total_porcentaje_obtenido / total_porcentaje)
            resumen_puntos = resumen * 20 
            
            print("#" * 42)
            print("             RESUMEN DE NOTUNI            ")
            print("#" * 42)
            print(f"Porcentaje total evaluado de las {numerodenotas} notas: {total_porcentaje:.1f}%")
            print(f"PORCENTAJE TOTAL OBTENIDO: {total_porcentaje_obtenido:.2f}%")
            print(f"TU PROMEDIO EN PUNTOS: {resumen_puntos:.2f} / 20") 
            
            #si el porcentaje no llega al 100%, le avisa al usuario cuanto falta por evaluar
            if total_porcentaje < 100:
                restante = 100 - total_porcentaje
                print(f"Todavía falta por evaluar un {restante:.2f}% de la materia.")
            print("-" * 42)
        
        else:
            print(f"\nEl porcentaje total sumó {total_porcentaje:.1f}%. No puede ser mayor a 100%.")
    
        #Pregunta al usuario si desea calcular nuevamente o de otra materia
        seguir = input("\n¿Deseas calcular tus notas nuevamente o de alguna otra materia? (s/n): ").lower()

    print("\nPrograma finalizado.")

main()