Proceso MetodoCuadratura_Gaussiana
    Definir a, b, c, limInf, limSup Como Real
    Definir x1, x2, f1, f2, integral Como Real
    
    Escribir "Ingrese el coeficiente a (para ax^2):"
    Leer a
    
    Escribir "Ingrese el coeficiente b (para bx):"
    Leer b
    
    Escribir "Ingrese el coeficiente c:"
    Leer c
    
    Escribir "Ingrese el límite inferior de integración:"
    Leer limInf
    
    Escribir "Ingrese el límite superior de integración:"
    Leer limSup
    
    Si limInf >= limSup Entonces
        Escribir "Límites inválidos. El límite inferior debe ser menor que el superior."
    FinSi
	
    // Transformación de puntos de [-1,1] al intervalo [limInf, limSup]
    x1 <- ((limSup - limInf) / 2) * (-1 / RAIZ(3)) + (limInf + limSup) / 2
    x2 <- ((limSup - limInf) / 2) * (1 / RAIZ(3)) + (limInf + limSup) / 2
	
    // Evaluación de la función polinómica ax^2 + bx + c en los puntos transformados
    f1 <- a * x1 * x1 + b * x1 + c
    f2 <- a * x2 * x2 + b * x2 + c
	
    // Cálculo de la integral aproximada usando cuadratura gaussiana de 2 puntos
    integral <- ((limSup - limInf) / 2) * (f1 + f2)
	
    Escribir "La aproximación de la integral es: ", integral
FinProceso