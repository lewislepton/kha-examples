package;

import kha.System;
import kha.Scheduler;
import kha.Assets;

class Main {
	public static function main() {
		System.init("NAPE IMPULSE", 1024, 768, function () {
			Assets.loadEverything(function(){
				var Project = new Project();
				Scheduler.addTimeTask(Project.update, 0, 1 / 60);
				System.notifyOnRender(Project.render);
			});
		});
	}
}
