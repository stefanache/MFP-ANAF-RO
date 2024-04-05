/**
 * jQuery Canvas Loader Plugin 1.3
 *
 * Creates an alternative to ajax loader images with the canvas element.
 *
 * Tested on Mobile Safari and Android browsers.
 *
 * By Jamund Xcot Ferguson
 * 
 * Twitter: @xjamundx
 * Blog: http://www.jamund.com/
 *
 * Usage:
 *
 * Without options:
 *
 *      $("img.ajaxLoader").canvasLoader();
 *
 * With options:
 * 
 *		$("img.ajaxLoader").canvasLoader({
 *   		'radius':10,
 *   		'color':'rgb(255,0,0),
 *  		'dotRadius':10,
 *			'backgroundColor':'transparent'
 *   		'className':'canvasLoader',   
 *   		'id':'canvasLoader1',
 *   		'fps':10
 *		});
 *	
 * Options:
 *
 *		radius - width/height of the loader
 * 		color - color of the pulsing dots
 * 		dotRadius - radius of the pulsing dots
 * 		className - class name of the canvas tag
 *		backgroundColor - a background color for the canvas
 * 		id - id of the canvas tag
 *		fps - approximate frames per second of the pulsing
 *
 **/

(function($){  
	/**
	 * Replaces loading images with a canvas alternative
	 *
	 * @author Jamund Xcot Ferguson
	 */
	$.fn.canvasLoader = function(options) {
		
		// holds my canvas loader object
		var loaders = [];
	
		// holds my defaults object
		var globalDefaults = {
			'radius':20,
			'color':'rgb(0,0,0)',
			'dotRadius':2.5,
			'backgroundColor':'transparent',
			'className':'canvasLoader',
			'id':'canvasLoader1',
			'fps':10,

		};

		// holds the generic settings objects
		var globalOpts = $.extend(globalDefaults, options);
		
		// start drawing right away
		setInterval(draw, 1000/globalOpts.fps);

		// the main drawing function			
		function draw() {
			for (i in loaders) {
				loaders[i].draw();
			}
		}
			
		var CanvasLoader = function(ctx, radius, color, dotRadius) {
			this.ctx = ctx;
			this.radius = radius;
			this.x = this.radius/2;
			this.y = this.radius/2;
			this.color = color;
			this.dotRadius = dotRadius;
			this.opacity = 1;
			this.numDots = 8;
			this.dots = {};
			this.degrees = Math.PI*2/this.numDots;
			for (i=1;i<=this.numDots;i++) {
				this.dots[i] = new Dot(Math.cos(this.degrees * i) * this.radius/Math.PI, Math.sin(this.degrees * i) * this.radius/Math.PI, this.dotRadius, this.color, i/this.numDots);
				this.dots[i].parent = this;
			}
		}
	
		CanvasLoader.prototype.draw = function() {
			// clear old stuff
			this.ctx.clearRect(0,0,this.radius,this.radius);
			
			// draw the background color
			this.ctx.globalAlpha = 1;
			this.ctx.fillStyle = globalOpts.backgroundColor;
			this.ctx.fillRect(0,0,this.radius,this.radius);
			
			// fill in the dots
			for (i in this.dots) {
				this.dots[i].changeOpacity();
				this.dots[i].draw();
			}
		}		
		
		var Dot = function(x, y, radius, color, opacity) {
			this.radius = radius;
			this.color = color;
			this.opacity = opacity;
			this.x = x;
			this.y = y;
		}
		
		Dot.prototype.draw = function() {
			this.parent.ctx.beginPath();
			this.parent.ctx.globalAlpha = this.opacity;
		    this.parent.ctx.fillStyle = this.color;
			this.parent.ctx.arc(this.x+(this.parent.radius/2), this.y+(this.parent.radius/2), this.radius, 0, Math.PI*2, true);
			this.parent.ctx.fill();
		}
		
		Dot.prototype.changeOpacity = function() {
			this.opacity -= 1/this.parent.numDots;
			if (this.opacity < 0) this.opacity = 1;
		}
		
		// we can't replace until the image is loaded (webkit bug?)
		return $(this).each(function() {
			if (this.tagName == 'IMG') {
				$(this).load(function() {
					// set some local defaults that change
					var localDefaults = {
						'radius':($(this).width()+$(this).height())/2,
						'dotRadius':($(this).width()+$(this).height())/16,
						'id':'canvasLoader'+(parseInt($(".canvasLoader").size())+1),
					};
					
					// extend the global defaults with the local defaults and then the user-supplied defaults.
					var opts = $.extend(globalOpts, localDefaults, options);
			
					// create a canvas object and get the context
					var canvas = $("<canvas  width='"+opts.radius+"' height='"+opts.radius+"' id='"+opts.id+"' class='"+opts.className+"'></canvas>");
					var ctx = canvas.get(0).getContext("2d");
				
					// simple feature detection, needs work
					if (!!ctx) {
						loaders[loaders.length+1] = new CanvasLoader(ctx, opts.radius, opts.color, opts.dotRadius);
						$(this).replaceWith(canvas);
					}
				});
			} else {
				// set some local defaults that change
				var localDefaults = {
					'radius':($(this).width()+$(this).height())/2,
					'dotRadius':($(this).width()+$(this).height())/16,
					'id':'canvasLoader'+(parseInt($("."+globalOpts.className).size())+1),
				};
				
				// extend the global defaults with the local defaults and then the user-supplied defaults.

				var opts = $.extend(globalOpts, localDefaults, options);
		
				// create a canvas object and get the context
				topMargin=(window.innerHeight-opts.radius)/2;
				leftMargin=(document.body.clientWidth-opts.radius)/2;
				var canvas = $("<canvas width='"+opts.radius+"' height='"+opts.radius+"' id='"+opts.id+"' class='"+opts.className+"' style='position:absolute; top:"+topMargin+"px; left:"+leftMargin+"px'></canvas>");
				var ctx = canvas.get(0).getContext("2d");
			
				// simple feature detection, needs work
				if (!!ctx) {
					loaders[loaders.length+1] = new CanvasLoader(ctx, opts.radius, opts.color, opts.dotRadius);
					$(this).replaceWith(canvas);
				}
			}
		
		});
		
	}
})(jQuery);