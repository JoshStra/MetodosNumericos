Proceso Simpson38
    Definir x0, x1, x2, x3 Como Real
    Definir fx0, fx1, fx2, fx3 Como Real
    Definir h, suma, coef, resultado Como Real
    Definir w Como Real  // Variable auxiliar si se necesita
	
    Escribir "Método de Simpson 3/8"
    Escribir "f(x) = x"
    
    Escribir "Ingrese el valor del límite inferior (x0):"
    Leer x0
    
    Escribir "Ingrese el valor del límite superior (x3):"
    Leer x3
    
    // Calcular h y puntos intermedios
    h = (x3 - x0) / 3
    x1 = x0 + h
    x2 = x0 + 2 * h
    
    // Evaluar función f(x) = x directamente sin función externa
    fx0 = x0
    fx1 = x1
    fx2 = x2
    fx3 = x3
    
    Escribir "El valor de h es: ", h
    Escribir "El valor de x0 es: ", x0
    Escribir "El valor de x1 es: ", x1
    Escribir "El valor de x2 es: ", x2
    Escribir "El valor de x3 es: ", x3
    
    Escribir "Valores que se suman en la fórmula:"
    Escribir "f(x0)       = ", fx0
    Escribir "3 * f(x1)   = ", 3 * fx1
    Escribir "3 * f(x2)   = ", 3 * fx2
    Escribir "f(x3)       = ", fx3
    
    suma = fx0 + 3 * fx1 + 3 * fx2 + fx3
    Escribir "Suma total  = ", suma
    
    coef = (3 * h) / 8
    Escribir "Aplicando la fórmula: (3 * h / 8) * suma"
    Escribir "=> (3 * ", h, " / 8) * ", suma
    Escribir "=> ", coef, " * ", suma
    
    resultado = coef * suma
    Escribir "El resultado de la integral es: ", resultado
	
FinProceso
