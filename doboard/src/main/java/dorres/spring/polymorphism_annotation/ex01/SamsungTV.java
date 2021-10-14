package dorres.spring.polymorphism_annotation.ex01;

public class SamsungTV implements TV {
	private Speaker speaker;
	private int price;

	public SamsungTV() {
		System.out.println("SamsungTV 객체 생성");
	}

	public void setSpeaker(Speaker speaker) {
		System.out.println("setSpeaker() 메서드 호출");
		this.speaker = speaker;
	}

	public void setPrice(int price) {
		System.out.println("setPrice() 메서드 호출");
		this.price = price;
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
