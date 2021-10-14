package dorres.spring.collection.properties;

import java.util.Properties;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {
	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		CollectionBeanProperties bean = (CollectionBeanProperties) factory.getBean("collectionBean");
		Properties addressList = bean.getAddressList();
		
		for (String key : addressList.stringPropertyNames()) {
			System.out.println(String.format("키 : %s, 값 : %s", key, addressList.get(key)));
		}

		factory.close();
	}
}

//<bean id="collectionBean" class="dorres.spring.collection.CollectionBeanProperties">
//<property name="addressList">
//<props>
//<prop key="홍길동">율도국</prop>
//<prop key="손오공">화과산</prop>
//</props>
//</property>
//</bean>