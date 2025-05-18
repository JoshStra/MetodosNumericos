Proceso Biseccion
    Definir a, b, c, tol, fa, fb, fc Como Real
    Definir iteraciones Como Entero
	
    Escribir "Ingrese el valor de a: "
    Leer a
    Escribir "Ingrese el valor de b: "
    Leer b
    Escribir "Ingrese la tolerancia: "
    Leer tol
	
    // Calcular f(a) y f(b)
    fa <- a^3 - a - 2
    fb <- b^3 - b - 2
	
    Si fa * fb >= 0 Entonces
        Escribir "El intervalo no es válido. f(a) y f(b) deben tener signos opuestos."
	FinSi

	iteraciones <- 0

	Mientras (b - a) / 2 > tol Hacer
		c <- (a + b) / 2
		fc <- c^3 - c - 2
		iteraciones <- iteraciones + 1
		
		Si fc = 0 Entonces
			Escribir "Se encontró la raíz exacta"
		Sino
			Si fc * fa < 0 Entonces
				b <- c
				fb <- fc
			Sino
				a <- c
				fa <- fc
			FinSi
		FinSi
	FinMientras

	Escribir "Raíz aproximada: ", c
	Escribir "f(c) = ", fc
	Escribir "Iteraciones: ", iteraciones
FinProceso
