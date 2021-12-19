<template><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" :width="width" :height="height"><title>{{title}}</title><g :fill="_secondaryfill"><path d="M60,34H4c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h56c0.552,0,1,0.448,1,1v2 C61,33.552,60.552,34,60,34z"></path> <path d="M60,16H31c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h29c0.552,0,1,0.448,1,1v2C61,15.552,60.552,16,60,16 z" :fill="fill"></path> <path d="M33,52H4c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h29c0.552,0,1,0.448,1,1v2C34,51.552,33.552,52,33,52z " :fill="fill"></path></g></svg></template>

<script>
export default {
	props: {
		width: {
			type: [Number, String],
			default: "100%"
		},
		height: {
			type: [Number, String],
			default: "100%"
		},
		strokewidth: {
			type: [Number, String],
			default: 1
		},
		title: {
			type: String,
			default: "menu"
		},
		fill: {
			type: String,
			default: "currentColor"
		},
		secondaryfill: {
			type: String
		}
	},
	computed: {
		_secondaryfill: function () {
			return this.secondaryfill || this.fill
		}
	}
}
</script>