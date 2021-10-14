package dorres.spring.polymorphism.ex06;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {
	public static void main(String[] args) {
		// 1. Spring 컨테이너를 구동한다. 
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
		//2. Spring 컨테이너로부터 필요한 객체를 요청(Lookup) 한다. 
		TV tv1 = (TV) factory.getBean("tv");
		TV tv2 = (TV) factory.getBean("tv");
		TV tv3 = (TV) factory.getBean("tv");

		//3. Spring 컨테이너를 종료한다. 
		factory.close();
	}
}
// appilcationContext에 추가
//<bean id="tv" class="dorres.spring.polymorphism.SamsungTV" scope="singleton"/>