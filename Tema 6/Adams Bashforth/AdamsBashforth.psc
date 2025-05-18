Proceso AdamsBashforth
    Definir t, w, h, yNext, tNext Como Real
    Definir k1, k2, k3, k4 Como Real
    Definir i, n Como Entero
    Dimension tVals[100], yVals[100]
	
    Escribir "Ingrese valor inicial t0:"
    Leer t
    Escribir "Ingrese valor inicial y0:"
    Leer w
    Escribir "Ingrese el tamaño de paso h:"
    Leer h
    Escribir "Ingrese el número total de pasos (mínimo 4):"
    Leer n
	
    tVals[0] <- t
    yVals[0] <- w
	
    // Generar los primeros 3 valores con Runge-Kutta de 4º orden
    Para i <- 1 Hasta 3
        k1 <- w
        k2 <- w + (h * k1) / 2
        k3 <- w + (h * k2) / 2
        k4 <- w + h * k3
        w <- w + (h / 6) * (k1 + 2*k2 + 2*k3 + k4)
        t <- t + h
        tVals[i] <- t
        yVals[i] <- w
    FinPara
	
    // Aplicar fórmula de Adams-Bashforth de 4 pasos
    Para i <- 3 Hasta n - 1
        tNext <- tVals[i] + h
        yNext <- yVals[i] + (h / 24) * (55*yVals[i] - 59*yVals[i-1] + 37*yVals[i-2] - 9*yVals[i-3])
        tVals[i+1] <- tNext
        yVals[i+1] <- yNext
    FinPara
	
    // Mostrar resultados
    Escribir "Resultados:"
    Para i <- 0 Hasta n
        Escribir "t = ", tVals[i], "   y = ", yVals[i]
    FinPara
FinProceso
