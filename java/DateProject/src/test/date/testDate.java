package test.date;

public class testDate {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int year = 1998;
		int month = 7;
		int day = 9;
		
		System.out.println(year +" "+ month +" "+ day);
		Date myBirth = new Date();
		myBirth.setYear(1998);
		myBirth.setMonth(7);
		myBirth.setDay(9);
		System.out.println(myBirth.getYear() +" "+ myBirth.getMonth() +" "+ myBirth.getDay());
		
		myBirth.setDay(140);
		System.out.println(myBirth.getDay());
		
		myBirth.setMonth(-100);
		myBirth.setDay(140);
		System.out.println(myBirth.getDay());		
		
		
		myBirth.setMonth(2);
		System.out.println(myBirth.getDay());
		
		myBirth.setYear(2000);	
		myBirth.setDay(140);
		System.out.println(myBirth.getDay());
		
		
		myBirth.setDay(140);
		myBirth.setYear(2000);	
		myBirth.print();
		
		

	}

}