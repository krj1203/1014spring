package dorres.spring.collection.map;

import java.util.Map;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {
	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		CollectionBeanMap bean = (CollectionBeanMap) factory.getBean("collectionBean");
		Map<String, String> addressList = bean.getAddressList();
		
		for (String key : addressList.keySet()) {
			System.out.println(String.format("키 : %s, 값 : %s", key, addressList.get(key)));
		}

		factory.close();
	}
}

//<bean id="collectionBean" class="dorres.spring.collection.CollectionBeanMap">
//<property name="addressList">
//<map>
//<entry>
//<key><value>홍길동</value></key>
//<value>율도국</value>
//</entry>
//<entry>
//<key><value>손오공</value></key>
//<value>화과산</value>
//</entry>
//</map>
//</property>
//</bean>