package dorres.spring.polymorphism.Ex09;

public class SamsungTV implements TV {
	private SonySpeaker speaker;
	private int price;

	public SamsungTV() {
		System.out.println("SamsungTV 객체 생성");
	}

	public SamsungTV(SonySpeaker speaker, int price) {
		System.out.println("SamsungTV 객체 생성 : 생성자 인젝션 - 다중매핑");
		this.speaker = speaker;
		this.price = price;
	}

	public SonySpeaker getSpeaker() {
		return speaker;
	}

	public void setSpeaker(SonySpeaker speaker) {
		this.speaker = speaker;
	}

	public void powerOn() {
		System.out.println("SamsungTV 전원을 켠다. (가격 : " + price + ")");
	}

	public void powerOff() {
		System.out.println("SamsungTV 전원을 끈다.");
	}

	public void volumeUp() {
		speaker.volumeUp();
	}

	public void volumeDown() {
		speaker.volumeDown();
	}
}
