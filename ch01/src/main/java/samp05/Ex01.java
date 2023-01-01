package samp05;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
// DI(Dependency Injection) 의존성 주입 : 제어의 역전 IoC
// AOP 관점 지향지향 프로그램밍 : 공통팀에서 주로 사용
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = 
			new FileSystemXmlApplicationContext("beans02.xml");
//		MessageBean mb = ac.getBean(MessageBean.class);
		MessageBean mb = (MessageBean)ac.getBean("a");
		mb.sayHello();
		ac.close();
	}
}