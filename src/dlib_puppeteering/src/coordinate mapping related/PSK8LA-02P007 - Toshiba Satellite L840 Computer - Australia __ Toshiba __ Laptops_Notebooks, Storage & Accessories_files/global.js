if (top.location.href && location.href != top.location.href && (!/.*(?:facebook|wavxeconnect|winwithtoshiba).*/i.test(top.location.href))) {
    top.location.replace(location.href);
}


$j(document).ready(function () {
    // fix external links
    /*$(document.body).getElements('a[rel^=blank]').addEvent('click', function (e) {
        window.open(this.href, '_blank');
        return false;
    });*/

    // Products super menu
    $j('#n-products, #product-super-menu').mouseover(function () {
        $j('#product-super-menu').show();
        $j('#n-products > a').addClass('hover');
    }).mouseout(function () {
        $j('#product-super-menu').hide();
        $j('#n-products > a').removeClass('hover');
    });

    // Business super menu
    $j('#n-products-business, #business-super-menu').mouseover(function () {
        $j('#business-super-menu').show();
        $j('#n-products-business > a').addClass('hover');
    }).mouseout(function () {
        $j('#business-super-menu').hide();
        $j('#n-products-business > a').removeClass('hover');
    });

    // Support super menu
    $j('#n-support, #support-super-menu').mouseover(function () {
        $j('#support-super-menu').show();
        $j('#n-support').addClass('hover');
    }).mouseout(function () {
        $j('#support-super-menu').hide();
        $j('#n-support').removeClass('hover');
    });

    // Products super menu
    $j('#n-shop-toshiba, #shop-super-menu').mouseover(function () {
        $j('#shop-super-menu').show();
        $j('#n-shop-toshiba > a').addClass('hover');
    }).mouseout(function () {
        $j('#shop-super-menu').hide();
        $j('#n-shop-toshiba > a').removeClass('hover');
    });

    $j('#q-submit').click(function (e) {
        e.preventDefault();

        DoTopSearch($j('#q').val());
    });

    $j('#n-products > a, #n-products-business > a').attr('href', '#');


    $j('div.buttons a.print').click(function (e) {
        window.print();
    });


	//required for web services - needs moo tools
    String.implement({
    	padLeft: function (length, padChar) {
    		if ($type(length) != "number") {
    			if ($type(length) == "string") length.toInt();
    			else return this;
    		}
    		if (length <= this.length) return this;
    		else {
    			if ($type(padChar) != "string") padChar = " "
    			tmp = ""
    			for (i = 0; i < (length - this.length) ; i++) tmp = tmp + padChar
    			return tmp + this;
    		}
    	},
    	htmlEncode: function () {
    		var el = new Element('div').set('text', this);
    		return el.get('text').replace(/&/, '&amp;').clean();
    	},
    	toProperCase: function () {
    		return this.toLowerCase().replace(/^(.)|\s(.)/g, function ($1) { return $1.toUpperCase(); });
    	}
    });
});

var pageTrackerCustom = {
    topLevelDomain: function () {
        var hostName = String(window.location.hostname).replace('www.mytoshiba.', '');
        return hostName.substring(hostName.indexOf('.') + 1, hostName.length).toUpperCase();
    },
    _trackEvent: function (category, action, optional_label, optional_value) {
        try {
            //pageTracker._trackEvent(category, action, optional_label, optional_value);
            _gaq.push(['_trackEvent', category, action, optional_label, optional_value]);
        } catch (er) { }
    }
}

function DoTopSearch(query) {
    var searchPath = '/search/';
    window.location = searchPath + '?q=' + query;
}

function SubmitOnEnter(field, e) {
    var keycode;

    if (window.event)
        keycode = window.event.keyCode;
    else if (e)
        keycode = e.which;
    else
        return true;

    if (keycode == 13) {
        DoTopSearch(field.value);
        return false;
    }
    else
        return true;
}




/*

var Popup = new Class({
	options: {
		center: true,
		target: 'window',
		replace: true,
		window: {
			height: 400,
			width: 400,
			status: false,
			toolbar: false,
			menubar: false,
			location: false,
			resizable: false,
			scrollbars: false,
			left: 0,
			top: 0
		}
	},
	initialize: function(url, options) { this.setOptions(options);
		this.parameters	= '';
		if ($defined(url)) {
		
			if (this.options.center && this.options.window.left == 0 && this.options.window.top == 0) {
				this.options.window.left	= Math.round((screen.width - this.options.window.width) / 2);   if (this.options.window.left < 25) this.options.window.left = 0;
				this.options.window.top		= Math.round((screen.height - this.options.window.height) / 2); if (this.options.window.top < 50)  this.options.window.top	= 0;
			}
			
			if (this.options.target != '_self' && this.options.target != '_blank') {
				this.parameters	= this.toParameterString();
			}
			
			var win = window.open(url, this.options.target, this.parameters, this.options.replace);
			win.focus();
		}
	},
	toParameterString: function() {
		var options = '';
		for (var option in this.options.window) {
			value	= this.options.window[option];
			value	= ($type(value) == 'boolean' ? (value ? 'yes' : 'no') : value);
			options += ',' + option + '=' + value;
		}
		
		return options.slice(1);
	}
});
Popup.implement(new Options);
*/