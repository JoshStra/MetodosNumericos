Proceso MetodoJacobi
	// Declaración de variables
	Dimension matriz[4,5]
	Dimension anterior[4]
	Dimension actual[4]
	Dimension diferencias[4]
	Dimension casos[4,5,1] // Solo se incluye un caso como en el código original
	
	// Inicializar caso de prueba
	// Caso 1
	matriz[1,1] <- 10; matriz[1,2] <- -1; matriz[1,3] <- 2; matriz[1,4] <- 0; matriz[1,5] <- 6
	matriz[2,1] <- -1; matriz[2,2] <- 11; matriz[2,3] <- -1; matriz[2,4] <- 3; matriz[2,5] <- 25
	matriz[3,1] <- 2; matriz[3,2] <- -1; matriz[3,3] <- 10; matriz[3,4] <- -1; matriz[3,5] <- -11
	matriz[4,1] <- 0; matriz[4,2] <- 3; matriz[4,3] <- -1; matriz[4,4] <- 8; matriz[4,5] <- 15
	
	// Mostrar matriz original
	Escribir "Matriz original:"
	Para i <- 1 Hasta 4
		Para j <- 1 Hasta 5
			Escribir Sin Saltar matriz[i,j], " "
		Fin Para
		Escribir ""
	Fin Para
	
	// Verificar si es diagonalmente dominante
	esDominante <- Verdadero
	Para i <- 1 Hasta 4
		suma <- 0
		Para j <- 1 Hasta 4
			Si i <> j Entonces
				suma <- suma + Abs(matriz[i,j])
			FinSi
		Fin Para
		Si Abs(matriz[i,i]) < suma Entonces
			esDominante <- Falso
		FinSi
	Fin Para
	
	Si No esDominante Entonces
		Escribir "Este sistema no es diagonalmente dominante y puede no converger con el método de Jacobi."
	FinSi
	
	// Ejecutar método de Jacobi
	Para i <- 1 Hasta 4
		anterior[i] <- 0
	Fin Para
	
	Escribir "Ejecutando método de Jacobi..."
	tolerancia <- 0.000001
	iteracionesMax <- 100
	iteraciones <- 0
	
	Repetir
		iteraciones <- iteraciones + 1
		
		Para i <- 1 Hasta 4
			suma <- matriz[i,5] // término independiente
			Para j <- 1 Hasta 4
				Si j <> i Entonces
					suma <- suma - matriz[i,j] * anterior[j]
				FinSi
			Fin Para
			actual[i] <- suma / matriz[i,i]
		Fin Para
		
		// Verificar convergencia
		converge <- Verdadero
		Para i <- 1 Hasta 4
			diferencias[i] <- Abs(actual[i] - anterior[i])
			Si diferencias[i] > tolerancia Entonces
				converge <- Falso
			FinSi
		Fin Para
		
		// Copiar actual a anterior
		Para i <- 1 Hasta 4
			anterior[i] <- actual[i]
		Fin Para
		
	Hasta Que converge O iteraciones >= iteracionesMax
	
	Si converge Entonces
		Escribir "Solución encontrada después de ", iteraciones, " iteraciones:"
		Para i <- 1 Hasta 4
			Escribir "x", i, " = ", actual[i]
		Fin Para
	SiNo
		Escribir "No se alcanzó la convergencia en ", iteracionesMax, " iteraciones."
	FinSi
FinProceso
