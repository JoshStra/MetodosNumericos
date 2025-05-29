import java.util.Scanner;

public class DerivadaTresPuntos {
    // Definimos la función f(x) que deseamos derivar
    public static double f(double x) {
        return Math.pow(x, 2) + 3 * x + 2; 
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Solicita los valores al usuario
        System.out.print("Ingresa el valor de x0: ");
        double x0 = scanner.nextDouble();

        System.out.print("Ingresa el valor de h (pequeño incremento): ");
        double h = scanner.nextDouble();

        // Aplica la fórmula del método de los tres puntos
        double derivada = (f(x0 + h) - f(x0 - h)) / (2 * h);

        // Muestra el resultado
        System.out.printf("La derivada aproximada en x = %.4f es f'(x) ≈ %.6f%n", x0, derivada);

        scanner.close();
    }
}