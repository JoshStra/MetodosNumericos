Proceso MetodoGaussSeidel
	// Declaración de variables
	Definir sc, i, j, iter, maxIter Como Entero
	Definir suma, nuevoValor, maxDiff, tol, determinante Como Real
	Definir singular, convergio Como Logico
	
	// Lectura del tamaño del sistema
	Escribir "Ingrese el tamaño de la matriz: "
	Leer sc
	
	// Declaración de matriz aumentada y vector solución (índices desde 1)
	Dimension m[sc+1, sc+2]
	Dimension x[sc+1]
	
	// Llenado de la matriz aumentada
	Para i <- 1 Hasta sc
		Para j <- 1 Hasta sc+1
			Escribir "Ingrese el valor en la posición [", i, "][", j, "]: "
			Leer m[i,j]
		Fin Para
	Fin Para
	
	// Mostrar matriz original
	Escribir ""
	Escribir "Matriz original:"
	Para i <- 1 Hasta sc
		Para j <- 1 Hasta sc+1
			Escribir Sin Saltar m[i,j], " "
		Fin Para
		Escribir ""
	Fin Para
	
	// Mostrar matriz aumentada
	Escribir ""
	Escribir "Matriz aumentada:"
	Para i <- 1 Hasta sc
		Para j <- 1 Hasta sc
			Escribir Sin Saltar m[i,j], " "
		Fin Para
		Escribir Sin Saltar "| ", m[i,sc+1]
		Escribir ""
	Fin Para
	
	// Verificar si el sistema es singular (solo si es 3x3)
	singular <- Falso
	Si sc = 3 Entonces
		determinante <- m[1,1]*(m[2,2]*m[3,3] - m[2,3]*m[3,2]) - m[1,2]*(m[2,1]*m[3,3] - m[2,3]*m[3,1]) + m[1,3]*(m[2,1]*m[3,2] - m[2,2]*m[3,1])
		Si determinante = 0 Entonces
			singular <- Verdadero
		FinSi
	FinSi
	
	Si singular Entonces
		Escribir "El sistema es singular, no tiene una solución única."
	FinSi
	
	// Inicializar vector de soluciones x en 0
	Para i <- 1 Hasta sc
		x[i] <- 0
	Fin Para
	
	// Configuración de parámetros de iteración
	tol <- 0.000001
	maxIter <- 1000
	iter <- 0
	
	// Método de Gauss-Seidel
	Repetir
		iter <- iter + 1
		maxDiff <- 0
		
		Para i <- 1 Hasta sc
			suma <- m[i,sc+1]
			Para j <- 1 Hasta sc
				Si i <> j Entonces
					suma <- suma - m[i,j] * x[j]
				FinSi
			Fin Para
			
			nuevoValor <- suma / m[i,i]
			Si Abs(nuevoValor - x[i]) > maxDiff Entonces
				maxDiff <- Abs(nuevoValor - x[i])
			FinSi
			x[i] <- nuevoValor
		Fin Para
	Hasta Que maxDiff < tol O iter >= maxIter
	
	// Mostrar resultados
	Si iter = maxIter Entonces
		Escribir ""
		Escribir "El método no ha convergido después de ", maxIter, " iteraciones."
	SiNo
		Escribir ""
		Escribir "Soluciones (después de ", iter, " iteraciones):"
		Para i <- 1 Hasta sc
			Escribir "x", i, " = ", x[i]
		Fin Para
	FinSi

FinProceso
