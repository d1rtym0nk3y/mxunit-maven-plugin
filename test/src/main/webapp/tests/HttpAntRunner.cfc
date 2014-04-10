component extends="mxunit.runner.HttpAntRunner" {

	remote function run(outputfile) {
		var result = "";
		
		savecontent variable="result" {
			super.run(type:'dir', value:'unit', componentPath:'tests.unit');
		}
		result = trim(result);
		if(!isNull(arguments.outputfile)) {
			var dir = getDirectoryFromPath(arguments.outputfile);
			directorycreate(dir, true);
			fileWrite(arguments.outputfile, result);
		}		
		echo(result);
	}

}