Proceso MetodoTrapecioCompuesto
    Definir a, b, c, limInf, limSup Como Real
    Definir n Como Entero
    Definir h, suma, x, fx, integral Como Real
    
    Escribir "Ingrese el coeficiente a (para ax^2):"
    Leer a
    
    Escribir "Ingrese el coeficiente b (para bx):"
    Leer b
    
    Escribir "Ingrese el coeficiente c:"
    Leer c
    
    Escribir "Ingrese el l�mite inferior de integraci�n:"
    Leer limInf
    
    Escribir "Ingrese el l�mite superior de integraci�n:"
    Leer limSup
    
    Escribir "Ingrese el n�mero de subintervalos (n > 0):"
    Leer n
    
    Si n <= 0 o limInf >= limSup Entonces
        Escribir "Datos inv�lidos. Aseg�rese de que n > 0 y que el l�mite inferior sea menor al superior."
    FinSi
	
    h <- (limSup - limInf) / n
	
    // f(limInf)
    x <- limInf
    suma <- a * x * x + b * x + c
	
    // f(limSup)
    x <- limSup
    suma <- suma + (a * x * x + b * x + c)
	
    Para i <- 1 Hasta n - 1 Hacer
        x <- limInf + i * h
        fx <- a * x * x + b * x + c
        suma <- suma + 2 * fx
    FinPara
	
    integral <- (h / 2) * suma
	
    Escribir "La aproximaci�n de la integral es: ", integral
FinProceso