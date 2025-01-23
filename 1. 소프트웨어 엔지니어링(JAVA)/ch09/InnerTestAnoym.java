package ch09;

import java.awt.Color;
import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class InnerTestAnoym {

	Frame frm;

	public InnerTestAnoym() {
		frm = new Frame("Anonymous Inner Class Test");
	}

	public void makeGUI() {
		frm.setSize(500, 500);
		frm.setBackground(Color.PINK);
		frm.setVisible(true);
		frm.addWindowListener(
				new WindowAdapter() { // anoymous inner class
					@Override
					public void windowClosing(WindowEvent e) {
						System.out.println("window close...");
						System.exit(0);
					} // windowClosing
				} // new
		); // addWindowListener
	} // makeGUI

	public static void main(String[] args) {
		InnerTestAnoym anoym = new InnerTestAnoym();
		anoym.makeGUI();
	}

}
