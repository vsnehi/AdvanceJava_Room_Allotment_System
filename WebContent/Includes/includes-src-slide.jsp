<script>
;window.Modernizr=function(a,b,c){function x(a){j.cssText=a}function y(a,b){return x(prefixes.join(a+";")+(b||""))}function z(a,b){return typeof a===b}function A(a,b){return!!~(""+a).indexOf(b)}function B(a,b){for(var d in a){var e=a[d];if(!A(e,"-")&&j[e]!==c)return b=="pfx"?e:!0}return!1}function C(a,b,d){for(var e in a){var f=b[a[e]];if(f!==c)return d===!1?a[e]:z(f,"function")?f.bind(d||b):f}return!1}function D(a,b,c){var d=a.charAt(0).toUpperCase()+a.slice(1),e=(a+" "+n.join(d+" ")+d).split(" ");return z(b,"string")||z(b,"undefined")?B(e,b):(e=(a+" "+o.join(d+" ")+d).split(" "),C(e,b,c))}var d="2.6.2",e={},f=!0,g=b.documentElement,h="modernizr",i=b.createElement(h),j=i.style,k,l={}.toString,m="Webkit Moz O ms",n=m.split(" "),o=m.toLowerCase().split(" "),p={},q={},r={},s=[],t=s.slice,u,v={}.hasOwnProperty,w;!z(v,"undefined")&&!z(v.call,"undefined")?w=function(a,b){return v.call(a,b)}:w=function(a,b){return b in a&&z(a.constructor.prototype[b],"undefined")},Function.prototype.bind||(Function.prototype.bind=function(b){var c=this;if(typeof c!="function")throw new TypeError;var d=t.call(arguments,1),e=function(){if(this instanceof e){var a=function(){};a.prototype=c.prototype;var f=new a,g=c.apply(f,d.concat(t.call(arguments)));return Object(g)===g?g:f}return c.apply(b,d.concat(t.call(arguments)))};return e}),p.cssanimations=function(){return D("animationName")},p.csstransforms=function(){return!!D("transform")};for(var E in p)w(p,E)&&(u=E.toLowerCase(),e[u]=p[E](),s.push((e[u]?"":"no-")+u));return e.addTest=function(a,b){if(typeof a=="object")for(var d in a)w(a,d)&&e.addTest(d,a[d]);else{a=a.toLowerCase();if(e[a]!==c)return e;b=typeof b=="function"?b():b,typeof f!="undefined"&&f&&(g.className+=" "+(b?"":"no-")+a),e[a]=b}return e},x(""),i=k=null,function(a,b){function k(a,b){var c=a.createElement("p"),d=a.getElementsByTagName("head")[0]||a.documentElement;return c.innerHTML="x<style>"+b+"</style>",d.insertBefore(c.lastChild,d.firstChild)}function l(){var a=r.elements;return typeof a=="string"?a.split(" "):a}function m(a){var b=i[a[g]];return b||(b={},h++,a[g]=h,i[h]=b),b}function n(a,c,f){c||(c=b);if(j)return c.createElement(a);f||(f=m(c));var g;return f.cache[a]?g=f.cache[a].cloneNode():e.test(a)?g=(f.cache[a]=f.createElem(a)).cloneNode():g=f.createElem(a),g.canHaveChildren&&!d.test(a)?f.frag.appendChild(g):g}function o(a,c){a||(a=b);if(j)return a.createDocumentFragment();c=c||m(a);var d=c.frag.cloneNode(),e=0,f=l(),g=f.length;for(;e<g;e++)d.createElement(f[e]);return d}function p(a,b){b.cache||(b.cache={},b.createElem=a.createElement,b.createFrag=a.createDocumentFragment,b.frag=b.createFrag()),a.createElement=function(c){return r.shivMethods?n(c,a,b):b.createElem(c)},a.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+l().join().replace(/\w+/g,function(a){return b.createElem(a),b.frag.createElement(a),'c("'+a+'")'})+");return n}")(r,b.frag)}function q(a){a||(a=b);var c=m(a);return r.shivCSS&&!f&&!c.hasCSS&&(c.hasCSS=!!k(a,"article,aside,figcaption,figure,footer,header,hgroup,nav,section{display:block}mark{background:#FF0;color:#000}")),j||p(a,c),a}var c=a.html5||{},d=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,e=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,f,g="_html5shiv",h=0,i={},j;(function(){try{var a=b.createElement("a");a.innerHTML="<xyz></xyz>",f="hidden"in a,j=a.childNodes.length==1||function(){b.createElement("a");var a=b.createDocumentFragment();return typeof a.cloneNode=="undefined"||typeof a.createDocumentFragment=="undefined"||typeof a.createElement=="undefined"}()}catch(c){f=!0,j=!0}})();var r={elements:c.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video",shivCSS:c.shivCSS!==!1,supportsUnknownElements:j,shivMethods:c.shivMethods!==!1,type:"default",shivDocument:q,createElement:n,createDocumentFragment:o};a.html5=r,q(b)}(this,b),e._version=d,e._domPrefixes=o,e._cssomPrefixes=n,e.testProp=function(a){return B([a])},e.testAllProps=D,e.prefixed=function(a,b,c){return b?D(a,b,c):D(a,"pfx")},g.className=g.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(f?" js "+s.join(" "):""),e}(this,this.document),function(a,b,c){function d(a){return"[object Function]"==o.call(a)}function e(a){return"string"==typeof a}function f(){}function g(a){return!a||"loaded"==a||"complete"==a||"uninitialized"==a}function h(){var a=p.shift();q=1,a?a.t?m(function(){("c"==a.t?B.injectCss:B.injectJs)(a.s,0,a.a,a.x,a.e,1)},0):(a(),h()):q=0}function i(a,c,d,e,f,i,j){function k(b){if(!o&&g(l.readyState)&&(u.r=o=1,!q&&h(),l.onload=l.onreadystatechange=null,b)){"img"!=a&&m(function(){t.removeChild(l)},50);for(var d in y[c])y[c].hasOwnProperty(d)&&y[c][d].onload()}}var j=j||B.errorTimeout,l=b.createElement(a),o=0,r=0,u={t:d,s:c,e:f,a:i,x:j};1===y[c]&&(r=1,y[c]=[]),"object"==a?l.data=c:(l.src=c,l.type=a),l.width=l.height="0",l.onerror=l.onload=l.onreadystatechange=function(){k.call(this,r)},p.splice(e,0,u),"img"!=a&&(r||2===y[c]?(t.insertBefore(l,s?null:n),m(k,j)):y[c].push(l))}function j(a,b,c,d,f){return q=0,b=b||"j",e(a)?i("c"==b?v:u,a,b,this.i++,c,d,f):(p.splice(this.i++,0,a),1==p.length&&h()),this}function k(){var a=B;return a.loader={load:j,i:0},a}var l=b.documentElement,m=a.setTimeout,n=b.getElementsByTagName("script")[0],o={}.toString,p=[],q=0,r="MozAppearance"in l.style,s=r&&!!b.createRange().compareNode,t=s?l:n.parentNode,l=a.opera&&"[object Opera]"==o.call(a.opera),l=!!b.attachEvent&&!l,u=r?"object":l?"script":"img",v=l?"script":u,w=Array.isArray||function(a){return"[object Array]"==o.call(a)},x=[],y={},z={timeout:function(a,b){return b.length&&(a.timeout=b[0]),a}},A,B;B=function(a){function b(a){var a=a.split("!"),b=x.length,c=a.pop(),d=a.length,c={url:c,origUrl:c,prefixes:a},e,f,g;for(f=0;f<d;f++)g=a[f].split("="),(e=z[g.shift()])&&(c=e(c,g));for(f=0;f<b;f++)c=x[f](c);return c}function g(a,e,f,g,h){var i=b(a),j=i.autoCallback;i.url.split(".").pop().split("?").shift(),i.bypass||(e&&(e=d(e)?e:e[a]||e[g]||e[a.split("/").pop().split("?")[0]]),i.instead?i.instead(a,e,f,g,h):(y[i.url]?i.noexec=!0:y[i.url]=1,f.load(i.url,i.forceCSS||!i.forceJS&&"css"==i.url.split(".").pop().split("?").shift()?"c":c,i.noexec,i.attrs,i.timeout),(d(e)||d(j))&&f.load(function(){k(),e&&e(i.origUrl,h,g),j&&j(i.origUrl,h,g),y[i.url]=2})))}function h(a,b){function c(a,c){if(a){if(e(a))c||(j=function(){var a=[].slice.call(arguments);k.apply(this,a),l()}),g(a,j,b,0,h);else if(Object(a)===a)for(n in m=function(){var b=0,c;for(c in a)a.hasOwnProperty(c)&&b++;return b}(),a)a.hasOwnProperty(n)&&(!c&&!--m&&(d(j)?j=function(){var a=[].slice.call(arguments);k.apply(this,a),l()}:j[n]=function(a){return function(){var b=[].slice.call(arguments);a&&a.apply(this,b),l()}}(k[n])),g(a[n],j,b,n,h))}else!c&&l()}var h=!!a.test,i=a.load||a.both,j=a.callback||f,k=j,l=a.complete||f,m,n;c(h?a.yep:a.nope,!!i),i&&c(i)}var i,j,l=this.yepnope.loader;if(e(a))g(a,0,l,0);else if(w(a))for(i=0;i<a.length;i++)j=a[i],e(j)?g(j,0,l,0):w(j)?B(j):Object(j)===j&&h(j,l);else Object(a)===a&&h(a,l)},B.addPrefix=function(a,b){z[a]=b},B.addFilter=function(a){x.push(a)},B.errorTimeout=1e4,null==b.readyState&&b.addEventListener&&(b.readyState="loading",b.addEventListener("DOMContentLoaded",A=function(){b.removeEventListener("DOMContentLoaded",A,0),b.readyState="complete"},0)),a.yepnope=k(),a.yepnope.executeStack=h,a.yepnope.injectJs=function(a,c,d,e,i,j){var k=b.createElement("script"),l,o,e=e||B.errorTimeout;k.src=a;for(o in d)k.setAttribute(o,d[o]);c=j?h:c||f,k.onreadystatechange=k.onload=function(){!l&&g(k.readyState)&&(l=1,c(),k.onload=k.onreadystatechange=null)},m(function(){l||(l=1,c(1))},e),i?k.onload():n.parentNode.insertBefore(k,n)},a.yepnope.injectCss=function(a,c,d,e,g,i){var e=b.createElement("link"),j,c=i?h:c||f;e.href=a,e.rel="stylesheet",e.type="text/css";for(j in d)e.setAttribute(j,d[j]);g||(n.parentNode.insertBefore(e,n),m(c,0))}}(this,document),Modernizr.load=function(){yepnope.apply(window,[].slice.call(arguments,0))};

</script>
<style>
@import url('demo.css');

.mi-slider {
	position: relative;
	margin-top: 30px;
	height: 490px;
}

.mi-slider ul {
	list-style-type: none;
	position: absolute;
	width: 100%;
	left: 0;
	bottom: 140px;
	overflow: hidden;
	text-align: center;
	pointer-events: none;
}

.no-js .mi-slider ul {
	position: relative;
	left: auto;
	bottom: auto;
	margin: 0;
	overflow: visible;
}

.mi-slider ul.mi-current {
	pointer-events: auto;
}

.mi-slider ul li {
	display: inline-block;
	padding: 20px;
	width: 20%;
	max-width: 300px;
	-webkit-transform: translateX(600%);
	transform: translateX(600%);
	-webkit-transition: opacity 0.2s linear;
	transition: opacity 0.2s linear;
}

.no-js .mi-slider ul li {
	-webkit-transform: translateX(0);
	transform: translateX(0);
}

.mi-slider ul li a,
.mi-slider ul li img {
	display: block;
	margin: 0 auto;
}

.mi-slider ul li a {
	outline: none;
	cursor: pointer;
}

.mi-slider ul li img {
	max-width: 100%;
	border: none;
}

.mi-slider ul li h4 {
	display: inline-block;
	font-family: Baskerville, "Baskerville Old Face", "Hoefler Text", Garamond, "Times New Roman", serif;
	font-style: italic;
	font-weight: 400;
	font-size: 18px;
	padding: 20px 10px 0;
}

.mi-slider ul li:hover {
	opacity: 0.7;
} 

.mi-slider nav {
	position: relative;
	top: 400px;
	text-align: center;
	max-width: 800px;
	margin: 0 auto;
	border-top: 5px solid #333;
}

.no-js nav {
	display: none;
}

.mi-slider nav a {
	display: inline-block;
	text-transform: uppercase;
	letter-spacing: 5px;
	padding: 40px 30px 30px 34px;
	position: relative;
	color: #888;
	outline: none;
	-webkit-transition: color 0.2s linear;
	transition: color 0.2s linear;
}

.mi-slider nav a:hover,
.mi-slider nav a.mi-selected {
	color: #000;
}

.mi-slider nav a.mi-selected:after,
.mi-slider nav a.mi-selected:before {
	content: '';
	position: absolute;
	top: -5px;
	border: solid transparent;
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
}

.mi-slider nav a.mi-selected:after {
	border-color: transparent;
	border-top-color: #fff;
	border-width: 20px;
	left: 50%;
	margin-left: -20px;
}

.mi-slider nav a.mi-selected:before {
	border-color: transparent;
	border-top-color: #333;
	border-width: 27px;
	left: 50%;
	margin-left: -27px;
}

/* Move classes and animations */

.mi-slider ul:first-child li,
.no-js .mi-slider ul li {
	-webkit-animation: scaleUp 350ms ease-in-out both;
	animation: scaleUp 350ms ease-in-out both;
}

@-webkit-keyframes scaleUp {
	0% { -webkit-transform: translateX(0) scale(0); }
	100% { -webkit-transform: translateX(0) scale(1); }
}

@keyframes scaleUp {
	0% { -webkit-transform: translateX(0) scale(0); transform: translateX(0) scale(0); }
	100% { -webkit-transform: translateX(0) scale(1); transform: translateX(0) scale(1); }
}

.mi-slider ul:first-child li:first-child {
	-webkit-animation-delay: 90ms;
	animation-delay: 90ms;
}

.mi-slider ul:first-child li:nth-child(2) {
	-webkit-animation-delay: 180ms;
	animation-delay: 180ms;
}

.mi-slider ul:first-child li:nth-child(3) {
	-webkit-animation-delay: 270ms;
	animation-delay: 270ms;
}

.mi-slider ul:first-child li:nth-child(4) {
	-webkit-animation-delay: 360ms;
	animation-delay: 360ms;
}

/* moveFromRight */

.mi-slider ul.mi-moveFromRight li {
	-webkit-animation: moveFromRight 350ms ease-in-out both;
	animation: moveFromRight 350ms ease-in-out both;
}

/* moveFromLeft */

.mi-slider ul.mi-moveFromLeft li {
	-webkit-animation: moveFromLeft 350ms ease-in-out both;
	animation: moveFromLeft 350ms ease-in-out both;
}

/* moveToRight */

.mi-slider ul.mi-moveToRight li {
	-webkit-animation: moveToRight 350ms ease-in-out both;
	animation: moveToRight 350ms ease-in-out both;
}

/* moveToLeft */

.mi-slider ul.mi-moveToLeft li {
	-webkit-animation: moveToLeft 350ms ease-in-out both;
	animation: moveToLeft 350ms ease-in-out both;
}

/* Animation Delays */

.mi-slider ul.mi-moveToLeft li:first-child,
.mi-slider ul.mi-moveFromRight li:first-child,
.mi-slider ul.mi-moveToRight li:nth-child(4),
.mi-slider ul.mi-moveFromLeft li:nth-child(4) {
	-webkit-animation-delay: 0ms;
	animation-delay: 0ms;
}

.mi-slider ul.mi-moveToLeft li:nth-child(2),
.mi-slider ul.mi-moveFromRight li:nth-child(2),
.mi-slider ul.mi-moveToRight li:nth-child(3),
.mi-slider ul.mi-moveFromLeft li:nth-child(3) {
	-webkit-animation-delay: 90ms;
	animation-delay: 90ms;
}

.mi-slider ul.mi-moveToLeft li:nth-child(3),
.mi-slider ul.mi-moveFromRight li:nth-child(3),
.mi-slider ul.mi-moveToRight li:nth-child(2),
.mi-slider ul.mi-moveFromLeft li:nth-child(2) {
	-webkit-animation-delay: 180ms;
	animation-delay: 180ms;
}

.mi-slider ul.mi-moveToLeft li:nth-child(4),
.mi-slider ul.mi-moveFromRight li:nth-child(4),
.mi-slider ul.mi-moveToRight li:first-child,
.mi-slider ul.mi-moveFromLeft li:first-child  {
	-webkit-animation-delay: 270ms;
	animation-delay: 270ms;
}

/* Animations */

@-webkit-keyframes moveFromRight {
	0% { -webkit-transform: translateX(600%); }
	100% { -webkit-transform: translateX(0%); }
}

@-webkit-keyframes moveFromLeft {
	0% { -webkit-transform: translateX(-600%); }
	100% { -webkit-transform: translateX(0%); }
}

@-webkit-keyframes moveToRight {
	0% { -webkit-transform: translateX(0%); }
	100% { -webkit-transform: translateX(600%); }
}

@-webkit-keyframes moveToLeft {
	0% { -webkit-transform: translateX(0%); }
	100% { -webkit-transform: translateX(-600%); }
}

@keyframes moveFromRight {
	0% { -webkit-transform: translateX(600%); transform: translateX(600%); }
	100% { -webkit-transform: translateX(0); transform: translateX(0); }
}

@keyframes moveFromLeft {
	0% { -webkit-transform: translateX(-600%); transform: translateX(-600%); }
	100% { -webkit-transform: translateX(0); transform: translateX(0); }
}

@keyframes moveToRight {
	0% { -webkit-transform: translateX(0%); transform: translateX(0%); }
	100% { -webkit-transform: translateX(600%); transform: translateX(600%); }
}

@keyframes moveToLeft {
	0% { -webkit-transform: translateX(0%); transform: translateX(0%); }
	100% { -webkit-transform: translateX(-600%); transform: translateX(-600%); }
}

.mi-slider {
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/* Media Queries */
@media screen and (max-width: 910px){
	.mi-slider nav {
		max-width: 90%;
	}
	.mi-slider nav a {
		font-size: 12px;
		padding: 40px 10px 30px 14px;
	}
}

@media screen and (max-width: 740px){
	.mi-slider {
		height: 300px;
	}
	.mi-slider nav {
		top: 220px;
	}
}

@media screen and (max-width: 490px){ 
	.mi-slider {
		text-align: center;
		height: auto;
	}

	.mi-slider ul {
		position: relative;
		display: inline;
		bottom: auto;
		pointer-events: auto;
	}

	.mi-slider ul li {
		-webkit-animation: none !important;
		animation: none !important;
		-webkit-transform: translateX(0) !important;
		transform: translateX(0) !important;
		padding: 10px 3px;
		min-width: 140px;
	}

	.mi-slider nav {
		display: none;
	}
}


</style>


<div class="container">	
<div class="main">
				<div id="mi-slider" class="mi-slider">
					 <ul>
					 <form>
						<li><input type="text" id="username" class="form-control" placeholder="Username or Email"></input> <label for="username">Email</label></li>
						<li><input type="password" id="password" class="form-control" placeholder="password"></input> <label for="password">Password</label></li>
						<li><input type="int" id="mobile" class="form-control" Placeholder="mobile"></input> <label for="mobile">Mobile</label></li>
						<li><textarea rows="6" cols="15" class="form-control" style="color:white;font-weight:bold;background-color:rgb(228,137,111);font-size:25px;" placeholder="Home Address" id="address"></textarea><label for="address">Address</label></li>
					</form>
					</ul>
					
					<ul>
						<li><a href="#"><img src="images/5.jpg" alt="img05"><h4>Belts</h4></a></li>
						<li><a href="#"><img src="images/6.jpg" alt="img06"><h4>Hats &amp; Caps</h4></a></li>
						<li><a href="#"><img src="images/7.jpg" alt="img07"><h4>Sunglasses</h4></a></li>
						<li><a href="#"><img src="images/8.jpg" alt="img08"><h4>Scarves</h4></a></li>
					</ul>
					<ul>
						<li><a href="#"><img src="images/9.jpg" alt="img09"><h4>Casual</h4></a></li>
						<li><a href="#"><img src="images/10.jpg" alt="img10"><h4>Luxury</h4></a></li>
						<li><a href="#"><img src="images/11.jpg" alt="img11"><h4>Sport</h4></a></li>
					</ul>
					<ul>
						<li><a href="#"><img src="images/12.jpg" alt="img12"><h4>Carry-Ons</h4></a></li>
						<li><a href="#"><img src="images/13.jpg" alt="img13"><h4>Duffel Bags</h4></a></li>
						<li><a href="#"><img src="images/14.jpg" alt="img14"><h4>Laptop Bags</h4></a></li>
						<li><a href="#"><img src="images/15.jpg" alt="img15"><h4>Briefcases</h4></a></li>
					</ul>
					<nav>
						<a href="#">Register</a>
						<a href="#">Admins</a>
						<a href="#">Clients</a>
						<a href="#">Room Honors</a>
					</nav>
				</div>
			</div>
		</div><!-- /container -->
		<script src="jquery.min.js"></script>
		
		<script>
			$(function() {

				$( '#mi-slider' ).catslider();

			});
		</script>
		
<script>
;( function( $, window, undefined ) {

	'use strict';

	$.CatSlider = function( options, element ) {
		this.$el = $( element );
		this._init( options );
	};

	$.CatSlider.prototype = {

		_init : function( options ) {

			// the categories (ul)
			this.$categories = this.$el.children( 'ul' );
			// the navigation
			this.$navcategories = this.$el.find( 'nav > a' );
			var animEndEventNames = {
				'WebkitAnimation' : 'webkitAnimationEnd',
				'OAnimation' : 'oAnimationEnd',
				'msAnimation' : 'MSAnimationEnd',
				'animation' : 'animationend'
			};
			// animation end event name
			this.animEndEventName = animEndEventNames[ Modernizr.prefixed( 'animation' ) ];
			// animations and transforms support
			this.support = Modernizr.csstransforms && Modernizr.cssanimations;
			// if currently animating
			this.isAnimating = false;
			// current category
			this.current = 0;
			var $currcat = this.$categories.eq( 0 );
			if( !this.support ) {
				this.$categories.hide();
				$currcat.show();
			}
			else {
				$currcat.addClass( 'mi-current' );
			}
			// current nav category
			this.$navcategories.eq( 0 ).addClass( 'mi-selected' );
			// initialize the events
			this._initEvents();

		},
		_initEvents : function() {

			var self = this;
			this.$navcategories.on( 'click.catslider', function() {
				self.showCategory( $( this ).index() );
				return false;
			} );

			// reset on window resize..
			$( window ).on( 'resize', function() {
				self.$categories.removeClass().eq( 0 ).addClass( 'mi-current' );
				self.$navcategories.eq( self.current ).removeClass( 'mi-selected' ).end().eq( 0 ).addClass( 'mi-selected' );
				self.current = 0;
			} );

		},
		showCategory : function( catidx ) {

			if( catidx === this.current || this.isAnimating ) {
				return false;
			}
			this.isAnimating = true;
			// update selected navigation
			this.$navcategories.eq( this.current ).removeClass( 'mi-selected' ).end().eq( catidx ).addClass( 'mi-selected' );

			var dir = catidx > this.current ? 'right' : 'left',
				toClass = dir === 'right' ? 'mi-moveToLeft' : 'mi-moveToRight',
				fromClass = dir === 'right' ? 'mi-moveFromRight' : 'mi-moveFromLeft',
				// current category
				$currcat = this.$categories.eq( this.current ),
				// new category
				$newcat = this.$categories.eq( catidx ),
				$newcatchild = $newcat.children(),
				lastEnter = dir === 'right' ? $newcatchild.length - 1 : 0,
				self = this;

			if( this.support ) {

				$currcat.removeClass().addClass( toClass );
				
				setTimeout( function() {

					$newcat.removeClass().addClass( fromClass );
					$newcatchild.eq( lastEnter ).on( self.animEndEventName, function() {

						$( this ).off( self.animEndEventName );
						$newcat.addClass( 'mi-current' );
						self.current = catidx;
						var $this = $( this );
						// solve chrome bug
						self.forceRedraw( $this.get(0) );
						self.isAnimating = false;

					} );

				}, $newcatchild.length * 90 );

			}
			else {

				$currcat.hide();
				$newcat.show();
				this.current = catidx;
				this.isAnimating = false;

			}

		},
		// based on http://stackoverflow.com/a/8840703/989439
		forceRedraw : function(element) {
			if (!element) { return; }
			var n = document.createTextNode(' '),
				position = element.style.position;
			element.appendChild(n);
			element.style.position = 'relative';
			setTimeout(function(){
				element.style.position = position;
				n.parentNode.removeChild(n);
			}, 25);
		}

	}

	$.fn.catslider = function( options ) {
		var instance = $.data( this, 'catslider' );
		if ( typeof options === 'string' ) {
			var args = Array.prototype.slice.call( arguments, 1 );
			this.each(function() {
				instance[ options ].apply( instance, args );
			});
		}
		else {
			this.each(function() {
				instance ? instance._init() : instance = $.data( this, 'catslider', new $.CatSlider( options, this ) );
			});
		}
		return instance;
	};

} )( jQuery, window );

</script>