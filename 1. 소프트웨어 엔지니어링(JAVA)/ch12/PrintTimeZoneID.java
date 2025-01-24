package ch12;

import java.util.Calendar;
import java.util.TimeZone;

public class PrintTimeZoneID {

	public static void main(String[] args) {

		TimeZone timeZone = TimeZone.getTimeZone("America/Los_Angeles");
		Calendar now = Calendar.getInstance( timeZone );
		System.out.println(now);

		//====================

		String[] availableIDs = TimeZone.getAvailableIDs();

		for(String id : availableIDs) {
			System.out.println(id);
		}

	}

}

