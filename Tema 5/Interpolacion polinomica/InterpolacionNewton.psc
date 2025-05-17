Proceso InterpolacionNewton
    Definir n, i, j, k Como Entero
    Definir xEval, producto, resultado Como Real
	
    // Datos de ejemplo
    n <- 3
    Dimension x[n], w[n]
    x[1] <- 9
    x[2] <- 12
    x[3] <- 15
	
    w[1] <- 15
    w[2] <- 21
    w[3] <- 18
	
    // Matriz de diferencias divididas
    Dimension dd[n, n]
	
    // Inicializar primera columna con w
    Para i <- 1 Hasta n Con Paso 1
        dd[i,1] <- w[i]
    FinPara
	
    // Calcular diferencias divididas
    Para j <- 2 Hasta n Con Paso 1
        Para i <- 1 Hasta n - j + 1 Con Paso 1
            dd[i,j] <- (dd[i+1,j-1] - dd[i,j-1]) / (x[i+j-1] - x[i])
        FinPara
    FinPara
	
    // Evaluar polinomio en xEval
    xEval <- 13.5
    resultado <- dd[1,1]
    producto <- 1
	
    Para i <- 2 Hasta n Con Paso 1
        producto <- producto * (xEval - x[i-1])
        resultado <- resultado + dd[1,i] * producto
    FinPara
	
    Escribir "Valor interpolado en x = ", xEval, " es: ", resultado
FinProceso
