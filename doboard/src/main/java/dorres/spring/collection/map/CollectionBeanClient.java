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
			System.out.println(String.format("Ű : %s, �� : %s", key, addressList.get(key)));
		}

		factory.close();
	}
}

//<bean id="collectionBean" class="dorres.spring.collection.CollectionBeanMap">
//<property name="addressList">
//<map>
//<entry>
//<key><value>ȫ�浿</value></key>
//<value>������</value>
//</entry>
//<entry>
//<key><value>�տ���</value></key>
//<value>ȭ����</value>
//</entry>
//</map>
//</property>
//</bean>