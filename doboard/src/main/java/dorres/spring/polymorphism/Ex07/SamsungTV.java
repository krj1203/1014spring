package dorres.spring.polymorphism.Ex07;

public class SamsungTV implements TV {
	private SonySpeaker speaker;

	public SamsungTV() {
		System.out.println("SamsungTV 객체 생성");
	}

	public void powerOn() {
		System.out.println("SamsungTV 전원을 켠다.");
	}

	public void powerOff() {
		System.out.println("SamsungTV 전원을 끈다.");
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
