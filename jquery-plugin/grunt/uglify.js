module.exports = function( grunt ) {
	var package = grunt.file.readJSON( "package.json" );

	return {
		all: {
			files: {
				"dist/__filename__.min.js": "dist/__filename__.js"
			},
			options: {
				banner: "/*! __title__ - v" + package.version + " | " +
					"(c) __title__ and other contributors */",
				compress: {
					unsafe: true
				},
				preserveComments: false,
				screwIE8: false,
				sourceMap: true,
				sourceMapName: "dist/__filename__.min.map"
			}
		}
	};
};
