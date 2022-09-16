import java.io.*;
import java.util.Scanner;
class Main {
	public static void main(String[] args) throws Exception {
		Scanner sc=new Scanner(System.in); 
		String input=sc.next();
		int cnt=Integer.parseInt(input);
		
		for(int i=1;i<cnt+1;i++){
			
			for(int k=0;k<cnt-i;k++){
				System.out.print(" ");
			}
			for(int j=1;j<i*2;j++){
				System.out.print("*");
			}
			System.out.printf("\n");

		}
		
		
	}
}