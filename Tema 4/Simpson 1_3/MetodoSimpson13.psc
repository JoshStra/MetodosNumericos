Proceso MetodoSimpson_1_3
    Definir a, b, c, limInf, limSup Como Real
    Definir n Como Entero
    Definir h, suma, x, integral, fx Como Real
    
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
    
    Escribir "Ingrese el n�mero de subintervalos (n par):"
    Leer n
    
    Si n <= 0 o n MOD 2 <> 0 o limInf >= limSup Entonces
        Escribir "Datos inv�lidos. Aseg�rese de que n > 0, que n sea par y que los l�mites sean correctos."
    FinSi
	
    h <- (limSup - limInf) / n
	
    // Calcular f(limInf) + f(limSup)
    suma <- a * limInf * limInf + b * limInf + c
    suma <- suma + (a * limSup * limSup + b * limSup + c)
	
    Para i <- 1 Hasta n - 1 Hacer
        x <- limInf + i * h
        fx <- a * x * x + b * x + c
        
        Si i MOD 2 = 0 Entonces
            suma <- suma + 2 * fx
        Sino
            suma <- suma + 4 * fx
        FinSi
    FinPara
	
    integral <- (h / 3) * suma
	
    Escribir "La aproximaci�n de la integral es: ", integral
FinProceso