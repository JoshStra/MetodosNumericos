Algoritmo MetodoEulerDinamico
    Definir pasos, i Como Entero 
    Definir h, tFinal, t, dx, dy Como Real 
    Definir x0, y0 Como Real 
	
    Dimension tiempo[1000] 
    Dimension solucionX[1000] 
    Dimension solucionY[1000] 
	
    Escribir "Ingrese x(0):" 
    Leer x0 
	
    Escribir "Ingrese y(0):" 
    Leer y0 
	
    Escribir "Ingrese el paso de tiempo h:" 
    Leer h 
	
    Escribir "Ingrese el tiempo final de simulación:" 
    Leer tFinal 
	
    pasos <- trunc(tFinal / h) + 1 
	
    tiempo[0] <- 0 
    solucionX[0] <- x0 
    solucionY[0] <- y0 
	
    Para i <- 1 Hasta pasos - 1 
        tiempo[i] <- tiempo[i - 1] + h 
        t <- tiempo[i - 1] 
		
        // Derivadas del sistema 
        dx <- solucionX[i - 1] + t 
        dy <- -solucionY[i - 1] + t 
		
        // Método de Euler 
        solucionX[i] <- solucionX[i - 1] + h * dx 
        solucionY[i] <- solucionY[i - 1] + h * dy 
    FinPara 
	
    // Imprimir tabla de resultados 
    Escribir "t", "       x(t)      y(t)" 
    Para i <- 0 Hasta pasos - 1 
        Escribir tiempo[i], "   ", solucionX[i], "   ", solucionY[i] 
    FinPara 
	
FinAlgoritmo 