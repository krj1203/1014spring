package dorres.spring.polymorphism.Ex11;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {
	public static void main(String[] args) {
		// 1. Spring �����̳ʸ� �����Ѵ�. 
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
		//2. Spring �����̳ʷκ��� �ʿ��� ��ü�� ��û(Lookup) �Ѵ�. 
		TV tv = (TV) factory.getBean("tv");
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
		//3. Spring �����̳ʸ� �����Ѵ�. 
		factory.close();
	}
}
// appilcationContext�� �߰�

//<bean id="tv" class="dorrs.spring.polymorphism.SamsungTV">
//<property name="speaker" ref="apple" />
//<property name="price" value="3000000" />
//</bean>