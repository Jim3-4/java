package day09;

import java.util.Random;
import java.lang.ArrayIndexOutOfBoundsException;
/**
 * @author 지민
 * @date 2022. 2. 25. - 오후 12:29:13
 * @subject 
 * @content 중복번호 체크한 번호 
 * 
 */
public class Ex04_02 {

	/**
	 * @param args
	 */
	public static void main (String[] args) {
		// TODO Auto-generated method stub
//(int)(Math.random()*45+1)
		Random rnd=new Random();
		System.out.println(rnd.nextInt(45)+1);
		//지역변수는 초기화 안하면 오류인데, 참조형은ㅇ 기본값으로 초기화딤 
		int[] lotto=new int[6];
		//로또번호 출력 
		dispLotto(lotto);
		//로또 번호를 랜덤하게 발생시켜서 lotto 배ㅕㅇㄹ에 채워놓는 함수 
		fillLotto(lotto);
	}

	/**
	 * @param lotto
	 */
	
	//긱능 매개변수 리턴값(리턴자료향)
	private static void fillLotto(int[] lotto) {
		// TODO Auto-generated method stub
		Random rnd=new Random();
		int len=lotto.length;
		for(int i=0; i<len; i++) {
			lotto[i]=rnd.nextInt(45)+1;
			 do {
				 lotto[i]=rnd.nextInt(45)+1;
			 }while(lotto[i]==lotto[i-1]);
			System.out.println("i: "+lotto[i]);
		}
	}

	/**
	 * @param lotto
	 */
	private static void dispLotto(int[] lotto) {
		
		for(int i=0; i<lotto.length; i++) {
			System.out.printf("[%d]",lotto);
		}
		System.out.println();
	}

}
