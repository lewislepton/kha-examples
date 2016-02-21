package;

import kha.System;

class Main {
	public static function main() {
		System.init("DRAW WITH GRAPHICS", 1024, 768, function () {
			new Project();
		});
	}
}
