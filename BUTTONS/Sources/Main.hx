package;

import kha.Scheduler;
import kha.System;
import kha.Assets;

class Main {
	public static function main() {
		System.init({title:"BUTTONS", width:1024, height:768}, function () {
			Assets.loadEverything(function(){
				var Project = new Project();
				System.notifyOnRender(Project.render);
				Scheduler.addTimeTask(Project.update, 0, 1 / 60);
			});
		});
	}
}
