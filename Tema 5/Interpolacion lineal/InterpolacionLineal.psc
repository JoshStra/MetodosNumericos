Proceso InterpolacionLineal
    Definir x0, w0, x1, w1, x, m, w Como Real
	
    // Valores conocidos
    x0 <- 2
    w0 <- 4
    x1 <- 6
    w1 <- 10
	
    // Punto a interpolar
    x <- 3
	
    // Cálculo de pendiente
    m <- (w1 - w0) / (x1 - x0)
	
    // Interpolación lineal
    w <- w0 + m * (x - x0)
	
    Escribir "Valor interpolado: ", w
FinProceso
