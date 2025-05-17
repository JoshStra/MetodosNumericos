import java.util.Scanner;

public class PuntoFijo {

    // Función g(x), por ejemplo: g(x) = sqrt(x + 2)
    public static double g(double x) {
        return Math.sqrt(x + 2);  // Debe cumplir que x = g(x)
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Entrada del usuario
        System.out.print("Ingrese el valor inicial x0: ");
        double x0 = scanner.nextDouble();

        System.out.print("Ingrese la tolerancia: ");
        double tol = scanner.nextDouble();

        System.out.print("Ingrese el número máximo de iteraciones: ");
        int maxIter = scanner.nextInt();

        double x1;
        int iteraciones = 0;

        while (iteraciones < maxIter) {
            x1 = g(x0);
            iteraciones++;

            if (Math.abs(x1 - x0) < tol) {
                System.out.println("Raíz aproximada: " + x1);
                System.out.println("Iteraciones: " + iteraciones);
                return;
            }

            x0 = x1;
        }

        System.out.println("No se alcanzó la tolerancia en el número máximo de iteraciones.");
        System.out.println("Última aproximación: " + x0);
    }
}
