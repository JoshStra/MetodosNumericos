Proceso MetodoGauss
	// Declarar variables
	Definir n, i, j, k, caso Como Entero
	Definir pivot, factor, temp Como Real
	Dimension m[3+1, 3+2], x[3+1]
	Definir swapped Como Logico
	
	// Total de casos
	Para caso <- 1 Hasta 4
		Escribir ""
		Escribir "Caso ", caso, ":"
		
		// Cargar matrices según el caso
		Segun caso Hacer
			1:
				m[1,1] <- 2; m[1,2] <- -1; m[1,3] <- 1; m[1,4] <- 3
				m[2,1] <- 1; m[2,2] <- 3;  m[2,3] <- 2; m[2,4] <- 12
				m[3,1] <- 1; m[3,2] <- -1; m[3,3] <- 2; m[3,4] <- 0
			2:
				m[1,1] <- 1; m[1,2] <- 2;  m[1,3] <- -1; m[1,4] <- 6
				m[2,1] <- 2; m[2,2] <- 1;  m[2,3] <- 1;  m[2,4] <- 9
				m[3,1] <- 3; m[3,2] <- 2;  m[3,3] <- -2; m[3,4] <- 10
			3:
				m[1,1] <- 4; m[1,2] <- -2; m[1,3] <- 1;  m[1,4] <- 5
				m[2,1] <- 1; m[2,2] <- 1;  m[2,3] <- 3;  m[2,4] <- 10
				m[3,1] <- 2; m[3,2] <- 3;  m[3,3] <- -1; m[3,4] <- 1
			4:
				m[1,1] <- 3; m[1,2] <- -1; m[1,3] <- 2;  m[1,4] <- 7
				m[2,1] <- 2; m[2,2] <- 4;  m[2,3] <- -3; m[2,4] <- 1
				m[3,1] <- 1; m[3,2] <- -2; m[3,3] <- 1;  m[3,4] <- -2
		FinSegun
		
		n <- 3
		
		// Mostrar matriz inicial
		Escribir "Matriz inicial:"
		Para i <- 1 Hasta n
			Para j <- 1 Hasta n+1
				Escribir Sin Saltar m[i,j], " "
			Fin Para
			Escribir ""
		Fin Para
		
		// Eliminación hacia adelante
		Para i <- 1 Hasta n
			Si m[i,i] = 0 Entonces
				swapped <- Falso
				Para j <- i+1 Hasta n
					Si m[j,i] <> 0 Entonces
						// Intercambio de filas
						Para k <- 1 Hasta n+1
							temp <- m[i,k]
							m[i,k] <- m[j,k]
							m[j,k] <- temp
						Fin Para
						swapped <- Verdadero
						j <- n  // Salir del ciclo
					FinSi
				Fin Para
				Si swapped = Falso Entonces
					Escribir "Sistema sin solucion o con infinitas soluciones."
					Escribir "Error"
				FinSi
			FinSi
			
			pivot <- m[i,i]
			Para j <- i Hasta n+1
				m[i,j] <- m[i,j] / pivot
			Fin Para
			
			Para j <- i+1 Hasta n
				factor <- m[j,i]
				Para k <- i Hasta n+1
					m[j,k] <- m[j,k] - factor * m[i,k]
				Fin Para
			Fin Para
			
			Escribir "Matriz después de paso ", i, ":"
			Para j <- 1 Hasta n
				Para k <- 1 Hasta n+1
					Escribir Sin Saltar m[j,k], " "
				Fin Para
				Escribir ""
			Fin Para
		Fin Para
		
		// Sustitución hacia atrás
		Para i <- n Hasta 1 Con Paso -1
			x[i] <- m[i,n+1]
			Para j <- i+1 Hasta n
				x[i] <- x[i] - m[i,j] * x[j]
			Fin Para
		Fin Para
		
		// Mostrar solución
		Escribir "Solución:"
		Para i <- 1 Hasta n
			Escribir "x", i, " = ", x[i]
		Fin Para
	Fin Para
FinProceso
