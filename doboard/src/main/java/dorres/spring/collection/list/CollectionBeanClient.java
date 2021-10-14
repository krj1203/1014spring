package dorres.spring.collection.list;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {
	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		CollectionBeanList bean = (CollectionBeanList) factory.getBean("collectionBean");
		List<String> addressList = bean.getAddressList();
		for (String address : addressList) {
			System.out.println(address.toString());
		}
		factory.close();
	}
}

//<bean id="collectionBean" class="dorres.spring.collection.list.CollectionBeanList">
//<property name="addressList">
//<list>
//<value>����� ���ʱ� ���ʵ�</value>
//<value>����� ���빮�� ��ȵ�</value>
//</list>
//</property>
//</bean>