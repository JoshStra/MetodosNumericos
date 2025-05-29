Proceso Diferenciacion5Puntos
	
	// Declaración de variables
	Definir x0, h, fx_menos2h, fx_menos_h, fx_mas_h, fx_mas2h, derivada Como Real
	
	// Entrada del punto y paso
	Escribir "DIFERENCIACIÓN NUMÉRICA (MÉTODO DE 5 PUNTOS)"
	
	Escribir "Ingrese el valor de x0: "
	Leer x0
	
	Escribir "Ingrese el valor del paso h: "
	Leer h
	
	// Evaluamos f en los 4 puntos necesarios
	// f(x) = x^2 + 3x + 2
	fx_mas2h <- (x0 + 2*h)^2 + 3*(x0 + 2*h) + 2
	fx_mas_h <- (x0 + h)^2 + 3*(x0 + h) + 2
	fx_menos_h <- (x0 - h)^2 + 3*(x0 - h) + 2
	fx_menos2h <- (x0 - 2*h)^2 + 3*(x0 - 2*h) + 2
	
	// Aplicamos la fórmula de 5 puntos centrada
	derivada <- (-fx_mas2h + 8*fx_mas_h - 8*fx_menos_h + fx_menos2h) / (12*h)
	
	// Mostramos resultado
	Escribir ""
	Escribir "RESULTADO:"
	Escribir "La derivada aproximada en x = ", x0, " es f´(x) : ", derivada
	Escribir "Fórmula utilizada: [-f(x+2h) + 8f(x+h) - 8f(x-h) + f(x-2h)] / (12h)"
	
FinProceso
