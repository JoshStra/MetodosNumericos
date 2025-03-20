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
            { // Caso 2
                {4, -1, 0, 0, 3},
                {-1, 4, -1, 0, 4},
                {0, -1, 4, -1, 5},
                {0, 0, -1, 3, 6}
            }
        };

        for (int i = 0; i < testCases.length; i++) {
            System.out.println("\nCaso " + (i + 1) + ":");
            printMatrix(testCases[i]);
        }
    }

    public static void printMatrix(double[][] matrix) {
        for (double[] row : matrix) {
            System.out.println(Arrays.toString(row));
        }
        System.out.println();
    }
}

