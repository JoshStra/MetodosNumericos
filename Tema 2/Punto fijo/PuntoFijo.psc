Proceso PuntoFijo
    Definir x0, x1, tol Como Real
    Definir iteraciones, maxIter Como Entero
	
    Escribir "Ingrese el valor inicial x0: "
    Leer x0
	
    Escribir "Ingrese la tolerancia: "
    Leer tol
	
    Escribir "Ingrese el n�mero m�ximo de iteraciones: "
    Leer maxIter
	
    iteraciones <- 0
	
    Repetir
        x1 <- raiz(x0 + 2)
        iteraciones <- iteraciones + 1
		
        Si Abs(x1 - x0) < tol Entonces
            Escribir "Ra�z aproximada: ", x1
            Escribir "Iteraciones: ", iteraciones
	FinSi

	x0 <- x1
	Hasta Que iteraciones = maxIter

	Escribir "No se alcanz� la tolerancia en el n�mero m�ximo de iteraciones."
	Escribir "�ltima aproximaci�n: ", x0
FinProceso
