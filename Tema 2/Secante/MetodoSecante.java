import java.util.Scanner;

public class MetodoSecante {

    // Función f(x), por ejemplo: f(x) = x^3 - x - 2
    public static double f(double x) {
        return Math.pow(x, 3) - x - 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Entradas del usuario
        System.out.print("Ingrese el valor inicial x0: ");
        double x0 = scanner.nextDouble();

        System.out.print("Ingrese el segundo valor inicial x1: ");
        double x1 = scanner.nextDouble();

        System.out.print("Ingrese la tolerancia: ");
        double tol = scanner.nextDouble();

        System.out.print("Ingrese el número máximo de iteraciones: ");
        int maxIter = scanner.nextInt();

        double x2;
        int iteraciones = 0;

        while (iteraciones < maxIter) {
            double fx0 = f(x0);
            double fx1 = f(x1);

            if (fx1 - fx0 == 0) {
                System.out.println("División por cero detectada. El método falla.");
                return;
            }

            x2 = x1 - fx1 * (x1 - x0) / (fx1 - fx0);
            iteraciones++;

            if (Math.abs(x2 - x1) < tol) {
                System.out.println("Raíz aproximada: " + x2);
                System.out.println("f(x) = " + f(x2));
                System.out.println("Iteraciones: " + iteraciones);
                return;
            }

            // Preparar para la siguiente iteración
            x0 = x1;
            x1 = x2;
        }

        System.out.println("No se alcanzó la tolerancia en el número máximo de iteraciones.");
        System.out.println("Última aproximación: " + x1);
    }
}
