package samp02;
public class Ex01 {
//	결합도를 떨어지게 만든다(느슨하게 만든다), loosely coupled
	public static void main(String[] args) {
//		MessageBean mb = new MessageBeanEn();
		MessageBean mb = new MessageBeanKr();
		mb.sayHello("바이든");
	}
}