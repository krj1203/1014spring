package dorres.spring.polymorphism_annotation.ex01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV {
	@Autowired
	private Speaker speaker;

	public void powerOn() {
		System.out.println("LgTV 전원을 켠다.");
	}

	public void powerOff() {
		System.out.println("LgTV 전원을 끈다.");
	}

	public void volumeUp() {
		speaker.volumeUp();
	}

	public void volumeDown() {
		speaker.volumeDown();
	}
}