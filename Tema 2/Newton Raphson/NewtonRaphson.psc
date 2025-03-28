Proceso Metodo_Newton_Raphson
    Definir x0, x1, fx, dfx, errorA, errorR, tolerancia Como Real
    Definir i, maxIteraciones Como Entero
    
    // Entrada de datos
    Escribir "Ingrese la estimaci�n inicial (x0):"
    Leer x0
    Escribir "Ingrese la tolerancia:"
    Leer tolerancia
    Escribir "Ingrese el n�mero m�ximo de iteraciones:"
    Leer maxIteraciones
    
    // Bucle de iteraciones
    Para i <- 1 Hasta maxIteraciones Hacer
        // Evaluar funci�n: f(x) = x^3 - 27
        fx <- x0^3 - 27
        
        // Evaluar derivada: f'(x) = 3x^2
        dfx <- 3 * x0^2
        
        // Validar que la derivada no sea cero
        Si dfx = 0 Entonces
            Escribir "Derivada igual a cero. El m�todo no puede continuar."
		FinSi
		
		// Aplicar f�rmula de Newton-Raphson
		x1 <- x0 - fx / dfx
		
		// Calcular errores
		errorA <- abs(x1 - x0)
		errorR <- errorA / abs(x1)
		
		// Mostrar resultados de la iteraci�n
		Escribir "Iteraci�n ", i, ": x0 = ", x0, "f(x0) = ", fx, "f�(x0) = ", dfx, " x1 = ", x1
		Escribir "   Error absoluto = ", errorA, "   Error relativo = ", errorR
		
		// Verificar condici�n de parada
		Si errorA < tolerancia Entonces
			Escribir ""
			Escribir "Ra�z aproximada: ", x1, " en ", i, " iteraciones"
		FinSi
		
		// Actualizar x0 para siguiente iteraci�n
		x0 <- x1
    FinPara
	
    // Si no se encuentra la ra�z dentro del l�mite de iteraciones
    Escribir ""
    Escribir "No se alcanz� la tolerancia deseada despu�s de ", maxIteraciones, " iteraciones."
    Escribir "�ltimo valor estimado: ", x0
FinProceso