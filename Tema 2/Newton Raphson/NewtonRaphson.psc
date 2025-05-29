Proceso Metodo_Newton_Raphson
    Definir x0, x1, fx, dfx, errorA, errorR, tolerancia Como Real
    Definir i, maxIteraciones Como Entero
    
    // Entrada de datos
    Escribir "Ingrese la estimación inicial (x0):"
    Leer x0
    Escribir "Ingrese la tolerancia:"
    Leer tolerancia
    Escribir "Ingrese el número máximo de iteraciones:"
    Leer maxIteraciones
    
    // Bucle de iteraciones
    Para i <- 1 Hasta maxIteraciones Hacer
        // Evaluar función: f(x) = x^3 - 27
        fx <- x0^3 - 27
        
        // Evaluar derivada: f'(x) = 3x^2
        dfx <- 3 * x0^2
        
        // Validar que la derivada no sea cero
        Si dfx = 0 Entonces
            Escribir "Derivada igual a cero. El método no puede continuar."
		FinSi
		
		// Aplicar fórmula de Newton-Raphson
		x1 <- x0 - fx / dfx
		
		// Calcular errores
		errorA <- abs(x1 - x0)
		errorR <- errorA / abs(x1)
		
		// Mostrar resultados de la iteración
		Escribir "Iteración ", i, ": x0 = ", x0, "f(x0) = ", fx, "f´(x0) = ", dfx, " x1 = ", x1
		Escribir "   Error absoluto = ", errorA, "   Error relativo = ", errorR
		
		// Verificar condición de parada
		Si errorA < tolerancia Entonces
			Escribir ""
			Escribir "Raíz aproximada: ", x1, " en ", i, " iteraciones"
		FinSi
		
		// Actualizar x0 para siguiente iteración
		x0 <- x1
    FinPara
	
    // Si no se encuentra la raíz dentro del límite de iteraciones
    Escribir ""
    Escribir "No se alcanzó la tolerancia deseada después de ", maxIteraciones, " iteraciones."
    Escribir "Último valor estimado: ", x0
FinProceso