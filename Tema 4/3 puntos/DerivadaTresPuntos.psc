Proceso DerivadaTresPuntos
	// Declaración de variables
	Definir x0, h, fx_menos, fx_mas, derivada Como Real
	
	// Leer valores desde el teclado
	Escribir "Ingresa el valor de x0: "
	Leer x0
	
	Escribir "Ingresa el valor de h (pequeño incremento): "
	Leer h
	
	// Evaluar f(x0 + h) y f(x0 - h)
	// f(x) = x^2 + 3x + 2
	fx_mas <- (x0 + h)^2 + 3 * (x0 + h) + 2
	fx_menos <- (x0 - h)^2 + 3 * (x0 - h) + 2
	
	// Aplicar fórmula del método de tres puntos
	derivada <- (fx_mas - fx_menos) / (2 * h)
	
	// Mostrar resultado
	Escribir "La derivada aproximada en x = ", x0, " es f´(x) : ", derivada
FinProceso
