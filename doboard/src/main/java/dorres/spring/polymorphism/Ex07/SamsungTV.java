package dorres.spring.polymorphism.Ex07;

public class SamsungTV implements TV {
	private SonySpeaker speaker;

	public SamsungTV() {
		System.out.println("SamsungTV ��ü ����");
	}

	public void powerOn() {
		System.out.println("SamsungTV ������ �Ҵ�.");
	}

	public void powerOff() {
		System.out.println("SamsungTV ������ ����.");
	}

	public void volumeUp() {
		speaker = new SonySpeaker();
		speaker.volumeUp();
	}

	public void volumeDown() {
		speaker = new SonySpeaker();
		speaker.volumeDown();
	}
}
