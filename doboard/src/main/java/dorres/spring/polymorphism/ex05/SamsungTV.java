package dorres.spring.polymorphism.ex05;

public class SamsungTV implements TV {
	public SamsungTV() {
		System.out.println("SamsungTV ��ü ����");
	}

	public void start() {
		System.out.println("��ü �ʱ�ȭ �۾� ó��");
	}

	public void stop() {
		System.out.println("��ü ���� ���� ó���� ���� ó��");
	}

	public void powerOn() {
		System.out.println("SamsungTV ������ �Ҵ�.");
	}

	public void powerOff() {
		System.out.println("SamsungTV ������ ����.");
	}

	public void volumeUp() {
		System.out.println("SamsungTV ������ �ø���.");
	}

	public void volumeDown() {
		System.out.println("SamsungTV ������ ������.");
	}
}
