/*!
 * __title__ v@VERSION
 * https://github.com/lognoz/__filename__
 *
 * Copyright __year__, @YEARS
 * __title__ and other contributors
 * Released under the MIT license
 */
( function( factory ) {
	if ( typeof define === "function" && define.amd ) {
		define( [ "jquery" ], factory );
	} else if ( typeof exports === "object" ) {
		module.exports = factory( require( "jquery" ) );
	} else {
		factory( jQuery );
	}
} )( function( $ ) {
	"use strict";

	// @CODE
} );
