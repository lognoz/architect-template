module.exports = function( grunt ) {
	require( "load-grunt-tasks" )( grunt );
	require( "load-grunt-config" )( grunt );

	grunt.config( "build", {
		"src/__filename__.js": "dist/__filename__.js"
	} );

	grunt.loadTasks( "grunt" );
	grunt.registerTask( "testing", [ "eslint", "connect", "qunit" ] );
	grunt.registerTask( "dist", [ "build", "uglify", "compare_size" ] );
	grunt.registerTask( "default", [ "dist", "testing" ] );
};
