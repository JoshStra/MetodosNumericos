import java.util.Arrays;


public class Gauss {

  
          
         public static void main(String[] args) {
        double[][][] testCases = {
            { // Caso 1: Sistema con solución única
                {2, -1, 1, 3},
                {1, 3, 2, 12},
                {1, -1, 2, 0}
            },
            { // Caso 2: Otro sistema con solución única
                {1, 2, -1, 6},
                {2, 1, 1, 9},
                {3, 2, -2, 10}
            },
            { // Caso 3: Sistema con solución única
                {4, -2, 1, 5},
                {1, 1, 3, 10},
                {2, 3, -1, 1}
            },
            { // Caso 4: Sistema con solución única
                {3, -1, 2, 7},
                {2, 4, -3, 1},
                {1, -2, 1, -2}
            },
            { // Caso 5: Sistema sin solución (fila inconsistente)
                {1, -2, 3, 4},
                {2, -4, 6, 10}, // Es una ecuación redundante
                {3, -6, 9, 15} // Inconsistente con la anterior
            }
        };

        for (int i = 0; i < testCases.length; i++) {
            System.out.println("\nCaso " + (i + 1) + ":");
            solveGaussian(testCases[i]);
        }
    }

    public static void solveGaussian(double[][] matrix) {
        int n = matrix.length;
        System.out.println("Matriz inicial:");
        printMatrix(matrix);

        for (int i = 0; i < n; i++) {
            if (matrix[i][i] == 0) {
                boolean swapped = false;
                for (int j = i + 1; j < n; j++) {
                    if (matrix[j][i] != 0) {
                        double[] temp = matrix[i];
                        matrix[i] = matrix[j];
                        matrix[j] = temp;
                        swapped = true;
                        break;
                    }
                }
                if (!swapped) {
                    System.out.println("Sistema sin solucion o con infinitas soluciones.");
                    return;
                }
            }

            double pivot = matrix[i][i];
            for (int j = i; j <= n; j++) {
                matrix[i][j] = Math.round((matrix[i][j] / pivot) * 10.0) / 10.0;
            }

            for (int j = i + 1; j < n; j++) {
                double factor = matrix[j][i];
                for (int k = i; k <= n; k++) {
                    matrix[j][k] = Math.round((matrix[j][k] - factor * matrix[i][k]) * 10.0) / 10.0;
                }
            }
            System.out.println("Matriz despues de paso " + (i + 1) + ":");
            printMatrix(matrix);
        }

        double[] solution = new double[n];
        for (int i = n - 1; i >= 0; i--) {
            solution[i] = matrix[i][n];
            for (int j = i + 1; j < n; j++) {
                solution[i] -= matrix[i][j] * solution[j];
            }
            solution[i] = Math.round(solution[i] * 10.0) / 10.0;
        }

        System.out.println("Solucion: " + Arrays.toString(solution));
    }

    public static void printMatrix(double[][] matrix) {
        for (double[] row : matrix) {
            System.out.println(Arrays.toString(Arrays.stream(row).map(x -> Math.round(x * 10.0) / 10.0).toArray()));
        }
        System.out.println();
    }
}