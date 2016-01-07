import java.io.File;



public class Test extends Thread implements Runnable {
	
	
	public void run() {
		System.out.println("run");
	}
	
	public static void main(String[] args) {

		Thread t = new Thread(new Test());
		t.start();
	}
	

	
}