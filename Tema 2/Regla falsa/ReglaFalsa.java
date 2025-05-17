import java.util.Scanner;

public class ReglaFalsa {

    // Función f(x), por ejemplo: f(x) = x^3 - x - 2
    public static double f(double x) {
        return Math.pow(x, 3) - x - 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Entradas
        System.out.print("Ingrese el valor de a: ");
        double a = scanner.nextDouble();

        System.out.print("Ingrese el valor de b: ");
        double b = scanner.nextDouble();

        System.out.print("Ingrese la tolerancia: ");
        double tol = scanner.nextDouble();

        System.out.print("Ingrese el número máximo de iteraciones: ");
        int maxIter = scanner.nextInt();

        // Validar signo opuesto en los extremos
        if (f(a) * f(b) >= 0) {
            System.out.println("El intervalo no es válido. f(a) y f(b) deben tener signos opuestos.");
            return;
        }

        double c = a;
        int iteraciones = 0;

        while (iteraciones < maxIter) {
            // Fórmula de regla falsa
            c = b - f(b) * (b - a) / (f(b) - f(a));
            iteraciones++;

            if (Math.abs(f(c)) < tol) {
                System.out.println("Raíz aproximada: " + c);
                System.out.println("f(c) = " + f(c));
                System.out.println("Iteraciones: " + iteraciones);
                return;
            }

            if (f(c) * f(a) < 0) {
                b = c;
            } else {
                a = c;
            }
        }

        System.out.println("No se alcanzó la tolerancia en el número máximo de iteraciones.");
        System.out.println("Última aproximación: " + c);
    }
}
