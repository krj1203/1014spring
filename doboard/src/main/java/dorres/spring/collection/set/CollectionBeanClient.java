package dorres.spring.collection.set;

import java.util.Set;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {
	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		CollectionBeanSet bean = (CollectionBeanSet) factory.getBean("collectionBean");
		Set<String> addressList = bean.getAddressList();
		for (String key : addressList) {
			System.out.println(key);
		}

		factory.close();
	}
}

//<bean id="collectionBean" class="dorres.spring.collection.CollectionBeanSet">
//<property name="addressList">
//<set value-type="java.lang.String">
//<value>����� ���ʱ� ���ʵ�</value>
//<value>����� ���빮�� ��ȵ�</value>
//<value>����� ���빮�� ��ȵ�</value>
//<value>����� ���빮�� ��ȵ�</value>
//</set>
//</property>
//</bean>