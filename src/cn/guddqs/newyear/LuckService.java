package cn.guddqs.newyear;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LuckService {

	Double[] moneys = new Double[] {  1.68, 2.33,0.88, 3.65, 18.18, 23.33, 20.17, 36.5, 88.88 };
	
	@Autowired
	private MailService mservice;

	public Integer getLuckNum() {

		List<Integer> nums = initNums();
		Random rand = new Random();
		int randnum = rand.nextInt(10000);
		System.out.println("random->" + randnum);
		System.out.println(nums.get(randnum));
		return nums.get(randnum);
	}

	public void SendMail(String qq,Integer num) throws Exception{
		if(num==null){
			System.out.println("Num is NULL");
			return;
		}
		String money=moneys[num].toString();
		mservice.sendMessage(qq, money);
		
	}
	
	@Test
	public void testMail(){
		
		try {
			SendMail("768446359", 8);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void test() {
		int lt3sum = 0;
		int other = 0;
		int num8 = 0;
		int num7 = 0;
		for (int i = 0; i < 100000; i++) {
			int num = getLuckNum();
			if (num > 3) {
				lt3sum++;
			} else if (num == 8) {
				num8++;
			}else if (num == 7) {
				num7++;
			}
			else {
				other++;
			}
		}
		System.out.println("大于3的数目:" + lt3sum);
		System.out.println("小于3的数目:" + other);
		System.out.println("中大奖的数目:" + num8);
		System.out.println("中小奖的数目:" + num7);

	}

	private List<Integer> initNums() {
		List<Integer> nums = new ArrayList<>();

		for (int i = 0; i < 10000; i++) {

			if (i < 8000) {
				nums.add(2);
			} else if (i < 9000) {
				nums.add(1);
			} else if (i < 9500) {
				nums.add(0);
			} else if (i < 9900) {
				nums.add(3);
			} else if (i < 9920) {
				nums.add(4);
			} else if (i < 9960) {
				nums.add(5);
			} else if (i < 9980) {
				nums.add(6);
			} else if (i < 9999) {
				nums.add(7);
			} else if (i == 10000 - 1) {
				nums.add(8);
			}
		}
		return nums;
	}

}
