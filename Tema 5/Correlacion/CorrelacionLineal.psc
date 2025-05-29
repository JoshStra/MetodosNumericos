Proceso CorrelacionLineal
    Definir n, i Como Entero
    Definir xi, wi Como Real
    Definir sumaX, sumaW, sumaXW, sumaX2, sumaW2 Como Real
    Definir coefPendiente, coefIntercepto, r Como Real
	
    sumaX <- 0
    sumaW <- 0
    sumaXW <- 0
    sumaX2 <- 0
    sumaW2 <- 0
	
    Escribir "Ingrese el número de datos: "
    Leer n
	
    Dimension datosX[n]
    Dimension datosW[n]
	
    Para i <- 1 Hasta n Con Paso 1
        Escribir "Dato ", i
        Escribir "Ingrese X[", i, "]: "
        Leer xi
        Escribir "Ingrese W[", i, "]: "
        Leer wi
		
        datosX[i] <- xi
        datosW[i] <- wi
		
        sumaX <- sumaX + xi
        sumaW <- sumaW + wi
        sumaXW <- sumaXW + xi * wi
        sumaX2 <- sumaX2 + xi * xi
        sumaW2 <- sumaW2 + wi * wi
    FinPara
	
    coefPendiente <- (n * sumaXW - sumaX * sumaW) / (n * sumaX2 - sumaX * sumaX)
    coefIntercepto <- (sumaW - coefPendiente * sumaX) / n
	
    r <- (n * sumaXW - sumaX * sumaW) / raiz((n * sumaX2 - sumaX * sumaX) * (n * sumaW2 - sumaW * sumaW))
	
    Escribir "-----------------------------------------"
    Escribir "Ecuacion de regresion: W = ", coefIntercepto, " + ", coefPendiente, " * X"
    Escribir "Coeficiente de correlacion r = ", r
	
    Escribir "Interpretacion:"
    Si r > 0 Entonces
        Escribir "Relacion positiva."
    Sino
        Si r < 0 Entonces
            Escribir "Relacion negativa."
        Sino
            Escribir "La correlacion es nula."
        FinSi
    FinSi
FinProceso
