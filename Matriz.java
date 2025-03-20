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

