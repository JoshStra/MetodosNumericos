import java.util.Arrays;

public class Jacobi {
    public static void main(String[] args) {
        double[][][] testCases = {
            { // Caso 1
                {10, -1, 2, 0, 6},
                {-1, 11, -1, 3, 25},
                {2, -1, 10, -1, -11},
                {0, 3, -1, 8, 15}
            },

        };

        for (int i = 0; i < testCases.length; i++) {
            System.out.println("\nCaso " + (i + 1) + ":");
            printMatrix(testCases[i]);
        }
    }

    public static void printMatrix(double[][] matrix) {
        System.out.println("Matriz original:");
        for (double[] row : matrix) {
            for (double value : row) {
                System.out.printf("%8.4f", value);
            }
            System.out.println();
        }
        System.out.println();
    }
    public static void solveJacobi(double[][] matrix, double tolerance, int maxIterations) {
        int n = matrix.length;
        double[] previous = new double[n];
        double[] current = new double[n];
        Arrays.fill(previous, 0);
        
        System.out.println("Ejecutando método de Jacobi...");
        
        int iterations = 0;
        for (int iter = 0; iter < maxIterations; iter++) {
            for (int i = 0; i < n; i++) {
                double sum = matrix[i][n];
                for (int j = 0; j < n; j++) {
                    if (j != i) {
                        sum -= matrix[i][j] * previous[j];
                    }
                }
                current[i] = sum / matrix[i][i];
            }
            iterations++;
    }
}

