package com.six.game;

import java.util.Scanner;

public class WormDome {

	public static void main(String[] args) {
		
		
		WormPane pane = new WormPane();
		
		Worm worm = pane.getWorm();
		
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			pane.draw();
			System.out.println(worm);
			String dir = sc.nextLine();
			switch(dir) {
			case "w":worm.step(worm.UP);break;
			
			case "s":worm.step(worm.DOWN);break;
			
			case "a":worm.step(worm.LEFT);break;
			
			case "d":worm.step(worm.RIGHT);break;
			
			case "q":System.out.println("½áÊø");;break;
			
			default:worm.step(); break;
			
			}
		}
		
		
	}
	
}
