package;

import kha.System;

class Main {
	public static function main() {
		System.init("REMOVE CREATE ENTITY", 1024, 768, function () {
			new Project();
		});
	}
}
