package dorres.spring.polymorphism.Ex08;

public class SamsungTV implements TV {
	private SonySpeaker speaker;

	public SamsungTV() {
		System.out.println("SamsungTV 객체 생성");
	}

	public SamsungTV(SonySpeaker speaker) {
		System.out.println("SamsungTV 객체 생성 : 생성자 인젝션");
		this.speaker = speaker;
	}

	public SonySpeaker getSpeaker() {
		return speaker;
	}

	public void setSpeaker(SonySpeaker speaker) {
		this.speaker = speaker;
	}
	
	public void powerOn() {
		System.out.println("SamsungTV 전원을 켠다.");
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
