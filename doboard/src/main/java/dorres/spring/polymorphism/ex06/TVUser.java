package dorres.spring.polymorphism.ex06;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {
	public static void main(String[] args) {
		// 1. Spring �����̳ʸ� �����Ѵ�. 
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
		//2. Spring �����̳ʷκ��� �ʿ��� ��ü�� ��û(Lookup) �Ѵ�. 
		TV tv1 = (TV) factory.getBean("tv");
		TV tv2 = (TV) factory.getBean("tv");
		TV tv3 = (TV) factory.getBean("tv");

		//3. Spring �����̳ʸ� �����Ѵ�. 
		factory.close();
	}
}
// appilcationContext�� �߰�
//<bean id="tv" class="dorres.spring.polymorphism.SamsungTV" scope="singleton"/>