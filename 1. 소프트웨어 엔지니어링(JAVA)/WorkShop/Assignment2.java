package WorkShop;

import java.util.Scanner;

public class Assignment2 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int[] scores = new int[0]; // 점수 배열 초기화
        int std = 0; // 학생수
        int total = 0; // 총 점수
        int highest = 0; // 최고 점수
        float avg = 0; // 평균 점수(실수형)

        for (int i = 0; i < 5; i++) {
            System.out.println("---------------------------------------------------");
            System.out.println("1. 학생수 | 2. 점수입력 | 3. 점수리스트 | 4. 분석 | 5. 종료");
            System.out.println("---------------------------------------------------");

            System.out.print("선택> ");
            String num = sc.nextLine();
            if (num.equals("1")) {
                System.out.print("학생수> ");
                std = Integer.parseInt(sc.nextLine());
                scores = new int[std];
            } else if (num.equals("2")) {
                int j = 0;
                while (j < std) {
                    System.out.printf("scores[%d]> ", j);
                    int score = Integer.parseInt(sc.nextLine());
                    scores[j] = score;
                    total += score;
                    if (highest < score) highest = score;
                    j++;
                }
                avg = (float) total / std;
            } else if (num.equals("3")) {
                int j = 0;
                while (j < std) {
                    System.out.printf("scores[%d]: %d\n", j, scores[j]);
                    j++;
                }
            } else if (num.equals("4")) {
                System.out.printf("최고 점수: %d\n", highest);
                System.out.printf("평균 점수: %.1f\n", avg);
            } else if (num.equals("5")) {
                System.out.println("프로그램 종료");
            }
        }
    }
}
