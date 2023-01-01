package samp04;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
public class Ex01 {
//	결정한다 --> 제어한다
//	제어의 역전 IoC(Inversion of Control) : loosely coupled 결합도를 느슨하게 만든다
	public static void main(String[] args) {
		AbstractApplicationContext ac = 
			new FileSystemXmlApplicationContext("beans02.xml");
//		Vehicle vh = ac.getBean("vh", Vehicle.class);
//		Vehicle vh = (Vehicle)ac.getBean("vh");
		Vehicle vh = ac.getBean(Vehicle.class);
		vh.ride("제니");
		ac.close();
	}
}