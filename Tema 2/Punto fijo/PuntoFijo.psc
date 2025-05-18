Proceso PuntoFijo
    Definir x0, x1, tol Como Real
    Definir iteraciones, maxIter Como Entero
	
    Escribir "Ingrese el valor inicial x0: "
    Leer x0
	
    Escribir "Ingrese la tolerancia: "
    Leer tol
	
    Escribir "Ingrese el número máximo de iteraciones: "
    Leer maxIter
	
    iteraciones <- 0
	
    Repetir
        x1 <- raiz(x0 + 2)
        iteraciones <- iteraciones + 1
		
        Si Abs(x1 - x0) < tol Entonces
            Escribir "Raíz aproximada: ", x1
            Escribir "Iteraciones: ", iteraciones
	FinSi

	x0 <- x1
	Hasta Que iteraciones = maxIter

	Escribir "No se alcanzó la tolerancia en el número máximo de iteraciones."
	Escribir "Última aproximación: ", x0
FinProceso
