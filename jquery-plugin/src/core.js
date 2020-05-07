define( [
	"jquery",
	"./var/variable",
	"./core/__class__"
], function( $, variable, __class__ ) {
	"use strict";

	$.__class__ = {
		version: "@VERSION",
		data: {}
	};
} );
