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
//SamsungTV�� LgTV�� �޼��� �ñ״�ó�� �ٸ��Ƿ� TVUser Ŭ���� �ڵ� ��κ��� 
//�����ؾ� ���α׷��� ������ �� �ִ�. �̷��� ��Ȳ�̶�� ���������� �ſ� ���� ���̴�.
