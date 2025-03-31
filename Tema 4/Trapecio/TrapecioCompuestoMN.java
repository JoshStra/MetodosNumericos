import java.util.Scanner;

public class TrapecioCompuestoMN {

    static String funcionIngresada = "";

    public static double funcion(double x) {
        switch (funcionIngresada) {
            case "x^2":
                return x * x;
            case "x^3":
                return x * x * x;
            case "sin(x)":
                return Math.sin(x);
            case "cos(x)":
                return Math.cos(x);
            case "exp(x)":
                return Math.exp(x);
            case "ln(x)":
                return Math.log(x);
            case "1/x":
                return 1 / x;
            default:
                System.out.println("Funcion no reconocida. Retornando 0.");
                return 0;
        }
    }

    public static double interpretarExpresion(String entrada) {
        entrada = entrada.replace("π", "pi").replace(" ", "").toLowerCase();

        double resultado = 1.0;

        if (entrada.contains("pi")) {
            String[] partes = entrada.split("pi");

            double coeficiente = 1.0;

            if (!partes[0].equals("")) {
                if (partes[0].contains("/")) {
                    String[] frac = partes[0].split("/");
                    coeficiente = Double.parseDouble(frac[0]) / Double.parseDouble(frac[1]);
                } else {
                    coeficiente = Double.parseDouble(partes[0]);
                }
            }

            resultado = coeficiente * Math.PI;


            if (partes.length > 1 && partes[1].startsWith("/")) {
                String[] divisor = partes[1].substring(1).split("/");
                resultado = resultado / Double.parseDouble(divisor[0]);
            }

        } else if (entrada.contains("/")) {
            String[] frac = entrada.split("/");
            resultado = Double.parseDouble(frac[0]) / Double.parseDouble(frac[1]);
        } else {
            resultado = Double.parseDouble(entrada);
        }

        return resultado;
    }

    public static double metodoTrapecio(double a, double b, int n) {
        double h = (b - a) / n;
        double suma = funcion(a) + funcion(b);

        for (int i = 1; i < n; i++) {
            double xi = a + i * h;
            suma += 2 * funcion(xi);
        }

        return (h / 2) * suma;
    }

    public static void mostrarOpciones() {
        System.out.println("Funciones disponibles:");
        System.out.println("- x^2");
        System.out.println("- x^3");
        System.out.println("- sin(x)");
        System.out.println("- cos(x)");
        System.out.println("- exp(x)");
        System.out.println("- ln(x)");
        System.out.println("- 1/x");
        System.out.println("Ejemplos de limites validos: ");
        System.out.println("- 1/2, pi, pi/2, 3*pi/4, 2");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Metodo del Trapecio Compuesto 🧮");
        mostrarOpciones();

        System.out.print("\nIngresa la funcion: ");
        funcionIngresada = scanner.nextLine();

        System.out.print("Ingresa el limite inferior (a): ");
        String aEntrada = scanner.nextLine();
        double a = interpretarExpresion(aEntrada);

        System.out.print("Ingresa el limite superior (b): ");
        String bEntrada = scanner.nextLine();
        double b = interpretarExpresion(bEntrada);

        System.out.print("Ingresa el numero de subintervalos (n): ");
        int n = scanner.nextInt();

        if (funcionIngresada.equals("1/x") && a <= 0) {
            System.out.println("⚠️ Error: no se puede calcular 1/x en 0 o menor.");
        } else if (funcionIngresada.equals("ln(x)") && a <= 0) {
            System.out.println("⚠️ Error: ln(x) no esta definida para x ≤ 0.");
        } else {
            double resultado = metodoTrapecio(a, b, n);
            System.out.printf("\nResultado aproximado de la integral: %.6f\n", resultado);
        }
    }
}

