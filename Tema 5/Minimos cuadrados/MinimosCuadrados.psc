Proceso MinimosCuadrados
    Definir n, i Como Entero
    Definir sum_x, sum_w, sum_x2, sum_xw Como Real
    Definir a, b, xi, wi Como Real
	
    Escribir "Metodo de minimos cuadrados - Ajuste lineal"
    Escribir "Cuantos pares de datos vas a ingresar?"
    Leer n
	
    Dimension x[n], w[n]
	
    // Ingreso de datos
    Para i <- 1 Hasta n Con Paso 1
        Escribir "Ingrese x[", i, "]: "
        Leer x[i]
        Escribir "Ingrese w[", i, "]: "
        Leer w[i]
    FinPara
	
    // Cálculo de sumatorias
    sum_x <- 0
    sum_w <- 0
    sum_x2 <- 0
    sum_xw <- 0
	
    Para i <- 1 Hasta n Con Paso 1
        xi <- x[i]
        wi <- w[i]
        sum_x <- sum_x + xi
        sum_w <- sum_w + wi
        sum_x2 <- sum_x2 + xi * xi
        sum_xw <- sum_xw + xi * wi
    FinPara
	
    // Cálculo de los coeficientes
    b <- (n * sum_xw - sum_x * sum_w) / (n * sum_x2 - sum_x * sum_x)
    a <- (sum_w - b * sum_x) / n
	
    Escribir ""
    Escribir "Resultado:"
    Escribir "La recta de regresion es: w = ", a, " + ", b, " * x"
FinProceso
