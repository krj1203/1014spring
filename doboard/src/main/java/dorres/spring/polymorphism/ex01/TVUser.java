package dorres.spring.polymorphism.ex01;

public class TVUser {
	public static void main(String[] args) {
		SamsungTV tv = new SamsungTV();
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
	}
}
//SamsungTV와 LgTV는 메서드 시그니처가 다르므로 TVUser 클래스 코드 대부분을 
//수정해야 프로그램을 수정할 수 있다. 이러한 상황이라면 유지보수가 매우 힘들 것이다.
