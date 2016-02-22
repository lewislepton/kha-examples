/*
THIS IS THE SAME PROJECT STRUCTURE I USE WHEN MAKING NEW PROJECT/IDEAS ETC. I CUSTOM BUILT IT INTO THE `init.js' WITHIN KODE STUDIO UNTIL THERE IS SOMETHING BUILT IN SO MULTIPLE OPTION CAN BE CHOSEN

THIS MAIN.HX HOLDS EVERYTHING SUCH AS THE MAIN UPDATE/LOADALL/RENDER. IT MAKES IT SO MUCH EASIER TO WORK WITH FILES AND MULTIPLES OF FILES WHEN PROJECTS GETT WAY BIGGER.

YOU CAN ONLY USE 1 RENDER, UPDATE AND LOADALL/EVERYTHING FOR EVERYTHING TO PROPERLY WORK AND NOT CRASH/ERROR. SO HAVING A LAYOUT LIKE THIS HELPS A DAMN LOT ;)
*/

package;

import kha.System;
import kha.Scheduler;
import kha.Assets;

class Main {
	public static function main() {
		System.init("EASY ASYNC", 1024, 768, function () {
			Assets.loadEverything(function(){
				var Project = new Project();
				Scheduler.addTimeTask(Project.update, 0, 1 / 60);
				Assets.loadEverything(Project.loadAll);
				System.notifyOnRender(Project.render);
			});
		});
	}
}
