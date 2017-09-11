package jutopia.booking;

import java.sql.Timestamp;

public class BookingVO {
	private int n_book_num;
	private String str_book_id_email, str_book_name, str_book_car_num, str_book_car_kinds, str_book_tel, date_book_day, date_book_start_time, date_book_end_time;

	public BookingVO()
	{
		
	}

	public int getN_book_num() {
		return n_book_num;
	}

	
	public String getDate_book_start_time() {
		return date_book_start_time;
	}

	public void setDate_book_start_time(String date_book_start_time) {
		this.date_book_start_time = date_book_start_time;
	}

	public String getDate_book_end_time() {
		return date_book_end_time;
	}

	public void setDate_book_end_time(String date_book_end_time) {
		this.date_book_end_time = date_book_end_time;
	}

	public void setN_book_num(int n_book_num) {
		this.n_book_num = n_book_num;
	}

	public String getStr_book_id_email() {
		return str_book_id_email;
	}

	public void setStr_book_id_email(String str_book_id_email) {
		this.str_book_id_email = str_book_id_email;
	}

	public String getStr_book_name() {
		return str_book_name;
	}

	public void setStr_book_name(String str_book_name) {
		this.str_book_name = str_book_name;
	}

	public String getDate_book_day() {
		return date_book_day;
	}

	public void setDate_book_day(String date_book_day) {
		this.date_book_day = date_book_day;
	}

	public String getStr_book_car_num() {
		return str_book_car_num;
	}

	public void setStr_book_car_num(String str_book_car_num) {
		this.str_book_car_num = str_book_car_num;
	}

	public String getStr_book_car_kinds() {
		return str_book_car_kinds;
	}

	public void setStr_book_car_kinds(String str_book_car_kinds) {
		this.str_book_car_kinds = str_book_car_kinds;
	}

	public String getStr_book_tel() {
		return str_book_tel;
	}

	public void setStr_book_tel(String str_book_tel) {
		this.str_book_tel = str_book_tel;
	}

	
	
}
