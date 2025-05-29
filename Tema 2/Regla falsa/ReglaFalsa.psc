Proceso Metodo_Regla_Falsa
    Definir a, b, c, fa, fb, fc, tolerancia Como Real
    Definir maxIteraciones, i Como Entero
    
    // Entrada de datos
    Escribir "Ingrese el límite inferior a:"
    Leer a
    Escribir "Ingrese el límite superior b:"
    Leer b
    Escribir "Ingrese la tolerancia:"
    Leer tolerancia
    Escribir "Ingrese el número máximo de iteraciones:"
    Leer maxIteraciones
    
    // Evaluar f(a) y f(b): f(x) = x^3 - 4x + 1
    fa <- a^3 - 4 * a + 1
    fb <- b^3 - 4 * b + 1
    
    // Verificar cambio de signo
    Si fa * fb >= 0 Entonces
        Escribir "La función no cambia de signo en el intervalo. No se puede aplicar Regla Falsa."
    FinSi
	
    // Inicialización
    c <- a
	
    // Iteraciones de la Regla Falsa
    Para i <- 1 Hasta maxIteraciones Hacer
        // Calcular punto de intersección lineal
        c <- (a * fb - b * fa) / (fb - fa)
        fc <- c^3 - 4 * c + 1
        
        // Mostrar información de la iteración
        Escribir "Iteración ", i, ": a = ", a, ", b = ", b, ", c = ", c, ", f(c) = ", fc
        
        // Verificar tolerancia
        Si abs(fc) < tolerancia Entonces
            Escribir ""
            Escribir "Raíz aproximada: ", c, " en ", i, " iteraciones"
		FinSi
		
		// Actualizar intervalo
		Si fa * fc < 0 Entonces
			b <- c
			fb <- fc
		Sino
			a <- c
			fa <- fc
		FinSi
    FinPara
	
    // Si no se alcanzó la tolerancia en las iteraciones permitidas
    Escribir ""
    Escribir "No se alcanzó la tolerancia deseada después de ", maxIteraciones, " iteraciones. Último valor: ", c
FinProceso