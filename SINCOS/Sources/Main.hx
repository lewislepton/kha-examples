package;

import kha.System;

class Main {
	public static function main() {
		System.init("SIN COS", 1024, 768, function () {
			new Project();
		});
	}
}
