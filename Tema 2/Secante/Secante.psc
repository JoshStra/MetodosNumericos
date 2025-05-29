Proceso MetodoSecante
    Definir x0, x1, x2, f0, f1, errorA, errorR, tolerancia Como Real
    Definir i, maxIteraciones Como Entero
    
    // Parámetros iniciales
    x0 <- 0.0
    x1 <- 1.0
    tolerancia <- 0.0001
    maxIteraciones <- 100
    
    // Iteraciones del método de la secante
    Para i <- 1 Hasta maxIteraciones Hacer
        
        // Evaluar f(x0) y f(x1)
        f0 <- exp(-x0) - x0
        f1 <- exp(-x1) - x1
        
        // Evitar división por cero
        Si f1 - f0 <> 0 Entonces
            x2 <- x1 - f1 * (x1 - x0) / (f1 - f0)
        FinSi
		
        // Calcular errores
        errorA <- abs(x2 - x1)
        errorR <- errorA / abs(x2)
		
        // Mostrar detalles de la iteración
        Escribir "Iteración ", i, ": x0 = ", x0, ", x1 = ", x1, ", x2 = ", x2
        Escribir "   Error Absoluto = ", errorA, "   Error Relativo = ", errorR
		
        // Verificar tolerancia
        Si errorA < tolerancia Entonces
            Escribir ""
            Escribir "Raíz aproximada: ", x2, " en ", i, " iteraciones"
        FinSi
		
        // Actualizar valores para la siguiente iteración
        x0 <- x1
        x1 <- x2
    FinPara
	
    // Si no se alcanza la tolerancia
    Escribir ""
    Escribir "No se alcanzó la tolerancia deseada después de ", maxIteraciones, " iteraciones."
    Escribir "Último valor estimado: ", x1
FinProceso