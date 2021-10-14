package dorres.spring.polymorphism_annotation.ex03;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {
	public static void main(String[] args) {
		// 1. Spring 컨테이너를 구동한다. 
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
		//2. Spring 컨테이너로부터 필요한 객체를 요청(Lookup) 한다. 
		TV tv = (TV) factory.getBean("tv");
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
		//3. Spring 컨테이너를 종료한다. 
		factory.close();
	}
}
// appilcationContext에 추가

//객체 자동설정이 잘 동작되었다. 하지만 Speaker 타입의 객체가 두 개 이상일 때 문제가 발생한다. 
//SonySpeaker와 AppleSpeaker 객체가 모두 메모리에 있다면 컨테이너는 어떤 객
//체를 할당해야 할지 스스로 판단할 수 없다. -> 해결방안 : @Qualifier