Proceso MonitoreoSaludComunitaria
    Definir temp Como Real
    Definir i, j, fiebre Como Entero
    Definir total, promedio, mayorTemp Como Real
    Definir personaFiebre, diaFiebre, opcion Como Entero
    Definir cargado Como Logico
    cargado <- FALSO
	
    Repetir
        Escribir ""
        Escribir "==== MENÚ ===="
        Escribir "1. Registrar temperaturas"
        Escribir "2. Contar temperaturas > 37.5"
        Escribir "3. Mostrar temperatura más alta"
        Escribir "4. Calcular promedio general"
        Escribir "5. Salir"
        Escribir "Seleccione una opción:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Para i <- 1 Hasta 20
                    Para j <- 1 Hasta 7
                        Escribir "Ingrese temperatura de la persona ", i, " día ", j, ":"
                        Leer temp
                    FinPara
                FinPara
                cargado <- VERDADERO
				
            2:
                Si cargado Entonces
                    fiebre <- 0
                    Para i <- 1 Hasta 20
                        Para j <- 1 Hasta 7
                            Si temp > 37.5 Entonces
                                fiebre <- fiebre + 1
                            FinSi
                        FinPara
                    FinPara
                    Escribir "Número de posibles casos de fiebre (>37.5 °C): ", fiebre
                Sino
                    Escribir "Primero debe registrar las temperaturas."
                FinSi
				
            3:
                Si cargado Entonces
                    mayorTemp <- temp
                        Para j <- 1 Hasta 7
                            Si temp> mayorTemp Entonces
                                mayorTemp <- temp
                                personaFiebre <- i
                                diaFiebre <- j
                            FinSi
                        FinPara
                    Escribir "La temperatura más alta fue: ", mayorTemp, " °C"
                    Escribir "Registrada en la persona ", personaFiebre, " el día ", diaFiebre
                Sino
                    Escribir "Primero debe registrar las temperaturas."
                FinSi
				
            4:
                Si cargado Entonces
                    total <- 0
                    Para i <- 1 Hasta 20
                        Para j <- 1 Hasta 7
                            total <- total + temp
                        FinPara
                    FinPara
                    promedio <- total / (20 * 7)
                    Escribir "La temperatura promedio general fue: ", promedio, " °C"
                Sino
                    Escribir "Primero debe registrar las temperaturas."
                FinSi
				
        FinSegun
		
    Hasta Que opcion = 5
	
    Escribir "Programa finalizado."
FinProceso

