package test.date;

public class Date {
	private int year;
	private int month;
	private int day;
	private int[] lastOfMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
	
	public void print() {
		System.out.println(getYear() +" "+ getMonth() +" "+ getDay());
	}
	// 과제 -> 얘 수정하기 
	private void setLeapYear(){
		if(year % 4 == 0) {
			lastOfMonth[1] = 29;
			if((year % 100) == 0) {
				lastOfMonth[1] = 28;
				if((year%400) == 0) {
					lastOfMonth[1] = 29;
				}
			}
		} else {
			lastOfMonth[1] = 28;
		}
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
		setLeapYear();
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		if (1>month) {
			month = 1;
		}
		if(month>12) {
			month = 12;
		}
		this.month = month;
		setDay(day);
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		if (1>day) {
			day = 1;
		}
		if(day>lastOfMonth[month-1]) {
			day = lastOfMonth[month-1];
		}
		this.day = day;
		
	}

}
