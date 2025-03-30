import java.util.Scanner;

public class Simpson_3_8 {
    public static void main(String args[]) {
        Scanner leer = new Scanner(System.in);
        double x0, x1, x2, x3;
        double fx0,fx1,fx2,fx3;
        double h, suma, coef;
        double resultado;

        System.out.println("Método de Simpson 3/8");
        System.out.println("f(x) = x");
        System.out.print("Ingrese el valor del límite inferior (x0): ");
        x0 = leer.nextDouble();
        System.out.print("Ingrese el valor del límite superior (x3): ");
        x3 = leer.nextDouble();

        //Valor de h y puntos intermedios
        h = (x3 - x0) / 3;
        x1 = x0 + h;
        x2 = x0 + 2 * h;

        //Evaluar la función en cada punto
        fx0 = funcion(x0);
        fx1 = funcion(x1);
        fx2 = funcion(x2);
        fx3 = funcion(x3);

        //Valores de h y puntos
        System.out.printf("%nEl valor de h es: %.4f%n", h);
        System.out.printf("%nEl valor de x0 es: %.4f%n", x0);
        System.out.printf("El valor de x1 es: %.4f%n", x1);
        System.out.printf("El valor de x2 es: %.4f%n", x2);
        System.out.printf("El valor de x3 es: %.4f%n", x3);

        //Valores que se van a sumar
        System.out.println("\nValores que se suman en la fórmula:");
        System.out.printf("f(x0)       = %.4f%n", fx0);
        System.out.printf("3 * f(x1)   = %.4f%n", 3 * fx1);
        System.out.printf("3 * f(x2)   = %.4f%n", 3 * fx2);
        System.out.printf("f(x3)       = %.4f%n", fx3);

        suma = fx0 + 3 * fx1 + 3 * fx2 + fx3;
        System.out.printf("Suma total  = %.4f%n", suma);

        //Se obtiene el resultado
        coef = (3 * h / 8);
        System.out.printf("%nAplicando la fórmula: (3 * h / 8) * suma%n");
        System.out.printf("=> (3 * %.4f / 8) * %.4f%n", h, suma);
        System.out.printf("=> %.4f * %.4f%n", coef, suma);

        resultado = coef * suma;
        System.out.printf("%nEl resultado de la integral es: %.4f%n", resultado);
    }

    public static double funcion(double x) {
        return Math.pow(x, 1);
    }
}

