package dorres.spring.web.user;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {
	public static void main(String[] args) {
		// 1. ������ �����̳� ����
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		// 2. ������ �����̳ʷ� ���� UserServiceImpl ��ü�� Lookup �Ѵ�. 
		UserService userService = (UserService) container.getBean("userService");
		// 3. �α��� ��� �׽�Ʈ
		UserVO vo = new UserVO();
		vo.setId("dorres");
		vo.setPassword("spring");
		UserVO user = userService.getUser(vo);
		if (user != null) {
			System.out.println(user.getName() + "�� ȯ���մϴ�.");
		} else {
			System.out.println("�α��� ����");
		}
		// 4. ������ �����̳� ����
		container.close();
	}
}
