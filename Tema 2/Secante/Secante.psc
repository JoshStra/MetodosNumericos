Proceso MetodoSecante
    Definir x0, x1, x2, f0, f1, errorA, errorR, tolerancia Como Real
    Definir i, maxIteraciones Como Entero
    
    // Par�metros iniciales
    x0 <- 0.0
    x1 <- 1.0
    tolerancia <- 0.0001
    maxIteraciones <- 100
    
    // Iteraciones del m�todo de la secante
    Para i <- 1 Hasta maxIteraciones Hacer
        
        // Evaluar f(x0) y f(x1)
        f0 <- exp(-x0) - x0
        f1 <- exp(-x1) - x1
        
        // Evitar divisi�n por cero
        Si f1 - f0 <> 0 Entonces
            x2 <- x1 - f1 * (x1 - x0) / (f1 - f0)
        FinSi
		
        // Calcular errores
        errorA <- abs(x2 - x1)
        errorR <- errorA / abs(x2)
		
        // Mostrar detalles de la iteraci�n
        Escribir "Iteraci�n ", i, ": x0 = ", x0, ", x1 = ", x1, ", x2 = ", x2
        Escribir "   Error Absoluto = ", errorA, "   Error Relativo = ", errorR
		
        // Verificar tolerancia
        Si errorA < tolerancia Entonces
            Escribir ""
            Escribir "Ra�z aproximada: ", x2, " en ", i, " iteraciones"
        FinSi
		
        // Actualizar valores para la siguiente iteraci�n
        x0 <- x1
        x1 <- x2
    FinPara
	
    // Si no se alcanza la tolerancia
    Escribir ""
    Escribir "No se alcanz� la tolerancia deseada despu�s de ", maxIteraciones, " iteraciones."
    Escribir "�ltimo valor estimado: ", x1
FinProceso