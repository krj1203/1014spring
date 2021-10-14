package dorres.spring.polymorphism_annotation.ex03;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV {
	@Resource(name="apple")
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