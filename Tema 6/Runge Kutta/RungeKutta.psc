Proceso RungeKutta4toOrden
    Definir x0, w0, h, x, w, k1, k2, k3, k4 Como Real
    Definir pasos, i Como Entero
	
    Escribir "Método de Runge-Kutta de 4to orden"
    Escribir "Función fija f(x, w) = x + w"
	
    Escribir "Ingresa x0: "
    Leer x0
	
    Escribir "Ingresa w0 (valor inicial de w): "
    Leer w0
	
    Escribir "Ingresa el paso h: "
    Leer h
	
    Escribir "Número de pasos: "
    Leer pasos
	
    x <- x0
    w <- w0
	
    Para i <- 1 Hasta pasos Hacer
        // f(x, w) = x + w
        k1 <- h * (x + w)
        k2 <- h * ((x + h / 2) + (w + k1 / 2))
        k3 <- h * ((x + h / 2) + (w + k2 / 2))
        k4 <- h * ((x + h) + (w + k3))
		
        w <- w + (k1 + 2 * k2 + 2 * k3 + k4) / 6
        x <- x + h
		
        Escribir "Paso ", i, ": x = ", x, ", w = ", w
    FinPara
	
    Escribir "Resultado final: w(", x, ") = ", w
FinProceso
