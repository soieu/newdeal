package test.buy;



/**
 * <pre>
 * 	0. 집에서 1000원을 들고나온다
 * 	0-1. money = 1000
	1. 아이스크림 가게에 걸어가서 들어간다.
	1-1 new EnterShop
	2. 먹고싶은 아이스크림을 선택하고 집는다
	2-1 icecream = "누가바"
	3. 집은 아이스크림을 들고 계산대에 간다
	4. 계산대에 천원을 지급한다.
	4-1. buyIcecream(money, icecream)
	5. 아이스크림을 들고 집에 간다.
	left = 1000;
	buyIcecream(left)
	new CU
	cu.getIcecream(left)
	return "누가바"
	syso(right);
 * @author soyoung
 * <pre>
 *
 */
public class TestBuyIcecream {

	public static void main(String[] args) {

		int left = 1000;
		String right = buyIcecream(left);
		System.out.println(right);
		

	}

	private static String buyIcecream(int left) {
		
		CU cu = new CU();; 
		
		String right = cu.getIcecream(left);
		
		return right;
		
		

		
	}

}
