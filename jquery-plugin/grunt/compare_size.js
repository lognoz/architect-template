module.exports = function() {
	return {
		files: [ "dist/__filename__.min.js", "dist/__filename__.js" ],
		options: {
			compress: {
				gz: function( contents ) {
					return require( "gzip-js" ).zip( contents, {} ).length;
				}
			}
		}
	};
};
