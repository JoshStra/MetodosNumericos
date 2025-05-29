import java.util.Scanner;

public class NewtonRaphson {

    // Función f(x), por ejemplo: f(x) = x^3 - x - 2
    public static double f(double x) {
        return Math.pow(x, 3) - x - 2;
    }

    // Derivada f'(x), por ejemplo: f'(x) = 3x^2 - 1
    public static double df(double x) {
        return 3 * Math.pow(x, 2) - 1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Entradas del usuario
        System.out.print("Ingrese el valor inicial x0: ");
        double x0 = scanner.nextDouble();

        System.out.print("Ingrese la tolerancia: ");
        double tol = scanner.nextDouble();

        System.out.print("Ingrese el número máximo de iteraciones: ");
        int maxIter = scanner.nextInt();

        double x1;
        int iteraciones = 0;

        while (iteraciones < maxIter) {
            double dfx = df(x0);

            if (dfx == 0) {
                System.out.println("La derivada es cero. El método falla.");
                return;
            }

            x1 = x0 - f(x0) / dfx;
            iteraciones++;

            if (Math.abs(x1 - x0) < tol) {
                System.out.println("Raíz aproximada: " + x1);
                System.out.println("f(x) = " + f(x1));
                System.out.println("Iteraciones: " + iteraciones);
                return;
            }

            x0 = x1;
        }

        System.out.println("No se alcanzó la tolerancia en el número máximo de iteraciones.");
        System.out.println("Última aproximación: " + x0);
    }
}
