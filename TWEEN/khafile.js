let project = new Project('TWEEN');
project.addAssets('Assets/**');
project.addSources('Sources');
project.addLibrary('tweenx');
resolve(project);