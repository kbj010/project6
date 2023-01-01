package samp01;
// Ex01은 MessageBeanKr을 사용한다
//   "          "     을 의존한다
// 좋은 시스템 : 결합도 낮고 응집도는 높은 시스템
public class Ex01 {
	public static void main(String[] args) {
//		결합도 높은 시스템
//		MessageBeanKr mbk = new MessageBeanKr();
		MessageBeanEn mbe = new MessageBeanEn();
//		mbk.sayHello("바이든");
		mbe.sayHello("바이든");
	}
}