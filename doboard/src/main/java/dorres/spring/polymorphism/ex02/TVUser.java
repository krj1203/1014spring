package dorres.spring.polymorphism.ex02;

public class TVUser {
	public static void main(String[] args) {
		SamsungTV tv = new SamsungTV();
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
	}
}
//결합도를 낮추기 위해서 다양한 방법을 사용할 수 있지만 
//객체지향 언어의 핵심 개념인 다형성을 이용해 보자.