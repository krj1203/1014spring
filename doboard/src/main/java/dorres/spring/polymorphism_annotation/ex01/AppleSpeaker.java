package dorres.spring.polymorphism_annotation.ex01;

public class AppleSpeaker implements Speaker {
	public AppleSpeaker() {
		System.out.println("AppleSpeaker ��ü ����");
	}

	@Override
	public void volumeUp() {
		System.out.println("AppleSpeaker -- �Ҹ� �ø���.");
	}

	@Override
	public void volumeDown() {
		System.out.println("AppleSpeaker -- �Ҹ� ������.");
	}

}
