Proceso MetodoGaussJordan
	// Declarar variables
	Definir n, i, j, k Como Entero
	Definir pivote, factor, temp Como Real
	Definir cambio Como Logico
	Dimension m[10, 11] // Suponiendo máximo tamaño de 10x10
	
	// Leer tamaño de la matriz
	Escribir "Ingrese el tamaño de la matriz: "
	Leer n
	
	// Leer matriz aumentada
	Escribir "Ingrese la matriz aumentada:"
	Para i <- 1 Hasta n
		Para j <- 1 Hasta n + 1
			Leer m[i, j]
		Fin Para
	Fin Para
	
	// Mostrar matriz inicial
	Escribir "Matriz inicial:"
	Para i <- 1 Hasta n
		Para j <- 1 Hasta n + 1
			Escribir Sin Saltar m[i, j], " "
		Fin Para
		Escribir ""
	Fin Para
	
	// Método de Gauss-Jordan
	Para i <- 1 Hasta n
		Si m[i, i] = 0 Entonces
			cambio <- Falso
			Para k <- i + 1 Hasta n
				Si m[k, i] <> 0 Entonces
					// Intercambiar filas i y k
					Para j <- 1 Hasta n + 1
						temp <- m[i, j]
						m[i, j] <- m[k, j]
						m[k, j] <- temp
					Fin Para
					cambio <- Verdadero
					k <- n  // salir del ciclo
				Fin Si
			Fin Para
			Si cambio = Falso Entonces
				Escribir "El sistema no tiene solución única o es inconsistente."
				Escribir "Error"
			Fin Si
		Fin Si
		
		pivote <- m[i, i]
		Para j <- 1 Hasta n + 1
			m[i, j] <- m[i, j] / pivote
		Fin Para
		
		Para k <- 1 Hasta n
			Si k <> i Entonces
				factor <- m[k, i]
				Para j <- 1 Hasta n + 1
					m[k, j] <- m[k, j] - factor * m[i, j]
				Fin Para
			Fin Si
		Fin Para
	Fin Para
	
	// Mostrar matriz final
	Escribir "Matriz final (forma escalonada reducida):"
	Para i <- 1 Hasta n
		Para j <- 1 Hasta n + 1
			Escribir Sin Saltar m[i, j], " "
		Fin Para
		Escribir ""
	Fin Para
	
	// Mostrar soluciones
	Escribir "Soluciones:"
	Para i <- 1 Hasta n
		Escribir "x", i, " = ", m[i, n + 1]
	Fin Para
FinProceso
