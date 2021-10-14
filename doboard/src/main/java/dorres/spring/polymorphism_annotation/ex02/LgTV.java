package dorres.spring.polymorphism_annotation.ex02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV {
	@Autowired
	@Qualifier("apple")
	private Speaker speaker;

	public void powerOn() {
		System.out.println("LgTV ������ �Ҵ�.");
	}

	public void powerOff() {
		System.out.println("LgTV ������ ����.");
	}

	public void volumeUp() {
		speaker.volumeUp();
	}

	public void volumeDown() {
		speaker.volumeDown();
	}
}