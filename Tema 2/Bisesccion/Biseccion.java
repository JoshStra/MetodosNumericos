import java.util.Scanner;

public class Biseccion {

    // Función que queremos encontrar la raíz: f(x) = x^3 - x - 2
    public static double f(double x) {
        return Math.pow(x, 3) - x - 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Entradas del usuario
        System.out.print("Ingrese el valor de a: ");
        double a = scanner.nextDouble();

        System.out.print("Ingrese el valor de b: ");
        double b = scanner.nextDouble();

        System.out.print("Ingrese la tolerancia: ");
        double tol = scanner.nextDouble();

        // Verifica que haya un cambio de signo en el intervalo
        if (f(a) * f(b) >= 0) {
            System.out.println("El intervalo no es válido. f(a) y f(b) deben tener signos opuestos.");
            return;
        }

        double c = a;
        int iteraciones = 0;

        while ((b - a) / 2 > tol) {
            c = (a + b) / 2;
            iteraciones++;

            if (f(c) == 0.0) break; // Se encontró la raíz exacta
            else if (f(c) * f(a) < 0) b = c;
            else a = c;
        }

        System.out.println("Raíz aproximada: " + c);
        System.out.println("f(c) = " + f(c));
        System.out.println("Iteraciones: " + iteraciones);
    }
}
