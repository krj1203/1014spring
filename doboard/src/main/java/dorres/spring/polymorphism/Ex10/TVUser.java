package dorres.spring.polymorphism.Ex10;

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

//<bean id="tv" class="dorres.spring.polymorphism.SamsungTV">
//<constructor-arg index="0" ref="apple"></constructor-arg>
//<constructor-arg index="1" value="3000000"></constructor-arg>
//</bean>
//<bean id="sony" class="dorres.spring.polymorphism.SonySpeaker"/>
//<bean id="apple" class="dorres.spring.polymorphism.AppleSpeaker"/>