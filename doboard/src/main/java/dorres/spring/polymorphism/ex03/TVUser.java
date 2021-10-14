package dorres.spring.polymorphism.ex03;

public class TVUser {
	public static void main(String[] args) {
		BeanFactory factory = new BeanFactory();
		TV tv = (TV) factory.getBean(args[0]);
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
	}
}
//TV를 변경하고 싶을 때는 매개변수만 수정하여 실행하면 된다. 
//결국 클라이언트 소스코드를 수정하지 않고도 실행되는 객체(TV)를 변경할 수 있게 되었다.