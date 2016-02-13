package;

import kha.System;

class Main {
	public static function main() {
		System.init("Project", 1024, 768, function () {
			new Project();
		});
	}
}
