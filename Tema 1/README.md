# Introducción a los Métodos Numéricos

## ¿Qué son los métodos numéricos?

Los **métodos numéricos** son técnicas matemáticas que permiten encontrar soluciones aproximadas a problemas complejos que, de otro modo, serían difíciles o imposibles de resolver mediante métodos analíticos exactos. Estos métodos son ampliamente utilizados en ingeniería, física, ciencias computacionales y muchas otras disciplinas para resolver ecuaciones, integrar funciones, derivar valores, y más.

## Importancia de los errores en los métodos numéricos

Dado que los métodos numéricos proporcionan soluciones **aproximadas**, es fundamental evaluar qué tan cerca están dichas soluciones del valor real. Para esto, se emplean dos conceptos clave:

### Error Absoluto

El **error absoluto** es la diferencia entre el valor real exacto y el valor aproximado obtenido por el método numérico:
- Error absoluto = |Valor real − Valor aproximado|

Este error indica la magnitud de la desviación en términos de la misma unidad del problema.

**Ejemplo:**

Si queremos calcular √2:
- Valor real: √2 ≈ 1.41421356  
- Valor aproximado: 1.4142  
- Error absoluto ≈ |1.41421356 − 1.4142| = 0.00001356

### Error Relativo

El **error relativo** es el cociente entre el error absoluto y el valor real exacto:
- Error relativo = Error absoluto / Valor real

Se utiliza para evaluar la **precisión relativa** de la aproximación, especialmente útil al comparar soluciones con distintos órdenes de magnitud.

**Continuando el ejemplo:**
- Error relativo ≈ 0.00001356 / 1.41421356 ≈ 0.0000096 (o 0.00096%)

## ¿Por qué son importantes los errores?

Analizar el error en métodos numéricos permite:

- Evaluar la **precisión** de un método.
- **Comparar** distintos métodos aplicados al mismo problema.
- Estimar el **error máximo posible**.
- **Controlar** el proceso de cálculo ajustando parámetros del método.
