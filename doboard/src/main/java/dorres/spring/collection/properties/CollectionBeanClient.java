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
			System.out.println(String.format("Ű : %s, �� : %s", key, addressList.get(key)));
		}

		factory.close();
	}
}

//<bean id="collectionBean" class="dorres.spring.collection.CollectionBeanProperties">
//<property name="addressList">
//<props>
//<prop key="ȫ�浿">������</prop>
//<prop key="�տ���">ȭ����</prop>
//</props>
//</property>
//</bean>