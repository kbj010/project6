package samp03;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
// Ex01 MessageBeanKr, MessageBeanEn결합도를 떨어뜨렸다
public class Ex01 {
	public static void main(String[] args) {
//		객체를 생성하고 관리하는 인터 페이스
		AbstractApplicationContext ac = 
			new FileSystemXmlApplicationContext("beans01.xml");
		MessageBean mb = ac.getBean("mb", MessageBean.class);
		mb.sayHello("영희");
		ac.close();
	}
}
// c + s + o 사용하지 않는 것을 import에서 제외해 준다 