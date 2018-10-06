$(document).ready( function() {

	/* SELECT MENU REPLACEMENT: SEARCH AND SORT */
	$('#search select').selectBoxIt({
		theme: "jqueryui"
	});
	$('.listingSort select').selectBoxIt({
		theme: "jqueryui"
	});
	
	/* SEARCH LABEL SHOW & HIDE */
	$('#ListingSearch').click( function() {
		if (this.value == 'Search') {
			this.value = '';
		}
	});
	$('#ListingSearch').blur( function() {
		if (this.value == '') {
			this.value = 'Search';
		}
	});	
	

   /* FEATURED LISTINGS: HOME */
	$('#myslide #button a').click(function(){
		var limit = $('.buttonLast').attr('title');
		var integer = $(this).attr('rel');
		$('#myslide .cover').animate({left: -635*(parseInt(integer) - 1)})  /*----- Width of div mystuff (here 160) ------ */
		$('#button a').each(function() {
		$(this).removeClass('active');
			if ($(this).hasClass('button'+integer)) {
				$(this).addClass('active');
				var increment = parseInt(integer) + 1;
				var decrement = parseInt(integer) - 1;
				if (increment < parseInt(limit) + 1) { $('.buttonLast').attr({rel: increment}); }
				if (decrement > 0) { $('.buttonFirst').attr({rel: decrement}); }
			}
		});
		return false;
	});
	
	/* IMAGE GLIDER */
	$('.controls a').click(function(){
		var limit = $('.buttonLast').attr('title');
		var integer = $(this).attr('rel');
		$('.scroller .content').animate({left: -735*(parseInt(integer) - 1)})
		$('.controls a').each(function() {
		$(this).removeClass('active');
			if ($(this).hasClass('button'+integer)) {
				$(this).addClass('active');
				var increment = parseInt(integer) + 1;
				var decrement = parseInt(integer) - 1;
				if (increment < parseInt(limit) + 1) { $('.buttonLast').attr({rel: increment}); }
				if (decrement > 0) { $('.buttonFirst').attr({rel: decrement}); }
			}
		});
		return false;			
	});

	/* AUTOPLAY FEATURED LISTINGS: CATEGORY ONLY */
	var theInt = null;
	var curclicked = 0;
	var stop = 0;
	theInterval = function(cur) {
		clearInterval(theInt);
		theInt = setInterval(function() {
			$("#innerSlide #button a.buttonTrigger").eq(curclicked).trigger('click');
			curclicked++;
			var limit = $('.buttonLast').attr('title');
			if (limit == curclicked) { curclicked = 0; }
		}, 6500);
	};
	$(function() {
		theInterval();
	});
	
	/* FEATURED LISTINGS: CATEGORY */
	$('#innerSlide #button a').click(function(){
		var limit = $('.buttonLast').attr('title');
		var integer = $(this).attr('rel');
		$('#innerSlide .cover').animate({top: -173*(parseInt(integer) - 1)})  /*----- Width of div mystuff (here 160) ------ */
		$('#button a').each(function() {
		$(this).removeClass('active');
			if ($(this).hasClass('button'+integer)) {
				$(this).addClass('active');
				var increment = parseInt(integer) + 1;
				var decrement = parseInt(integer) - 1;
				if (increment < parseInt(limit) + 1) { $('.buttonLast').attr({rel: increment}); }
				if (decrement > 0) { $('.buttonFirst').attr({rel: decrement}); }
			}
		});
		return false;
	});


	/* TOGGLE DESCRIPTIONS ON CATEGORY PAGES */
	$('.showLink').toggle(function() {
		$(this).prev('.moreInfoBody').show('slow');
		$(this).html(' (show less)');
	},
	function() {
		$(this).prev('.moreInfoBody').hide('slow');
		$(this).html('... (show more)');
	});

	/* CATEGORY SORTING—MORE OPTIONS DROPDOWN */
	$('.moreOptions .dropdown').click(function(){
		$('#advancedFilters').toggle('slow');
	})

	/* ACTIVATE OTHER DISPLAY */
	$(".activate select").change(function () {
		var selected = $("option:selected", this).html();
		if (selected == 'Other') {
			$(this).parent().next('div.other').show();
			$(this).parent().addClass('otherWrapper');
		}	
	});

	$("input#UserDemographicAnswerTopicsOfInterest0").change(function () {
		if ($(this).prop("checked")) {
			$('#UserDemographicAnswerTopicsOfInterestOther').parent().show();
		}	
	});

	/* ADVANCED SEARCH OPTIONS TOGGLE */
	$('#advSearchOptions').click(function(){
		$('#advancedSearchOptions').toggle('slow');
	})
	
	/* TAB BOX: ON CATEGORY PAGES, ... */
	$(function() {
		$('.tabs').tabs({ fx: { opacity: 'toggle' } });
	});


	/* NAVIGATION TOGGLE/TREE */
	$('#menu h3 span').click(function() {
		$(this).parent().next('ul').toggle('slow', function() {
			$(this).parent().toggleClass('menuOpen');
		});
	});
	
	/* PEPPER GUEST RATINGS */
	$('.rateit').bind('rated reset', function (e) {
		var ri = $(this);
		
		var value = ri.rateit('value');
		var productID = ri.data('productid');

		$.ajax({
			url: '/listings/rate/'+productID+'/?ajax_rating='+value,
			type: 'GET',
			success: function (data) {
				$('.rateit-thankyou-'+productID).show();
			},
			error: function (jxhr, msg, err) {
				alert(msg);
			}
		});
	});


	if ($("#subscribeEmailAddress")) {
		$('#subscribeEmailAddress').click( function() {
			if (this.value == 'Email Address') { this.value = ''; }
		});
		$('#subscribeEmailAddress').blur( function() {
			if (this.value == '') { this.value = 'Email Address'; }
		});
	}
	
	if ($('input#ListingSearch').val()) {
		$('input#ListingSearch').click( function() {			
			if (this.value == 'Search Marketplace Listings') { this.value = ''; }
		});
		$('input#ListingSearch').blur( function() {
			if (this.value == '') { this.value = 'Search Marketplace Listings'; }
		});
	}
	
	$('#screenshots').dialog({
		dialogClass: 'screenshot-dialog',
		autoOpen: false,
		resizable: false,
		width: 900,
		height: 500,
		show: {
			effect: 'blind',
			duration: 1000
		},
		hide: {
		}
	});

	$('#opener').click(function() {
		$('#screenshots').dialog('open');
	});
				
				
	$(document).mouseup(function (e) {
		var rateitContainer = $('.rateit-thankyou');
		if (rateitContainer.is(":visible") && !rateitContainer.is(e.target) && rateitContainer.has(e.target).length === 0) {
			rateitContainer.hide('slow');
		}

		var subscribeContainer = $('.download-subscribe');
		if (subscribeContainer.is(":visible") && !subscribeContainer.is(e.target) && subscribeContainer.has(e.target).length === 0) {
			subscribeContainer.hide('slow');
			window.location.href = $('.downloadURL').attr('href');
		}
	});

	$('span.close').click(function(){ $(this).parent().hide('slow'); });
	
	/* DOWNLOAD SUBSCRIBE BOX */
	$('.downloadURL').click(function() {
		$('span.subscribeClose').addClass('urlDownload');
		match = document.cookie.match(new RegExp('suppress_download_subscribe' + '=([^;]+)'));
		if (!match) {
			$('.download-subscribe').show('slow');
			var expdate = new Date();
			expdate.setDate(expdate.getDate() + 365);
			document.cookie = 'suppress_download_subscribe=1; expires='+expdate.toUTCString()+'; path=/';
			return false;
		}
		return;
	});

	$('.visitPublisherLink').click(function() {
		$('span.subscribeClose').addClass('urlVisitPublisher');
		match = document.cookie.match(new RegExp('suppress_download_subscribe' + '=([^;]+)'));
		if (!match) {
			$('.download-subscribe').show('slow');
			var expdate = new Date();
			expdate.setDate(expdate.getDate() + 365);
			document.cookie = 'suppress_download_subscribe=1; expires='+expdate.toUTCString()+'; path=/';
			return false;
		}
		return;
	});

	$('span.subscribeClose').click(function() {
		$('.download-subscribe').hide('slow');
		if ($(this).hasClass('urlDownload')) {
			window.location.href = $('.downloadURL').attr('href');
		} else {
			window.location.href = $('.visitPublisherLink').attr('href');
		}
	});
	
	
	/* SUBSCRIPTION PURCHASE */
	$('img.tipLink').mouseover(function() {
		$(this).next('.tooltipBox').show('slow');
	});
	$('img.tipLink').mouseleave(function(){
		$(this).next('.tooltipBox').hide('slow');
	});
	
	/* TOOLTIP */
	$('.tipLink').mouseover(function() {
		$(this).next('.tooltipBox').show('slow');
	});
	$('.tipLink').mouseleave(function(){
		$(this).next('.tooltipBox').hide('slow');
	});
	
	/* NO ANIMATION TOOLTIP */
	$('.tipLinkPlain').mouseover(function() {
		$(this).next('.tooltipBox').show();
	});
	$('.tipLinkPlain').mouseleave(function(){
		$(this).next('.tooltipBox').hide();
	});
	
	$('#featuredDetails').dialog({
		autoOpen: false,
		width: 500,
		height: 550,
		modal: true,
		title: "Featured Listing"
	});
	$('#editorialDetails').dialog({
		autoOpen: false,
		width: 500,
		height: 350,
		modal: true,
		title: "Editorial Review"
	});
	$('#featuredDialog').click(function() {
		$('#featuredDetails').dialog('open');
	});
	$('#editorialDialog').click(function() {
		$('#editorialDetails').dialog('open');
	});
        

	 $('.editor-wrap .editors-pick').mouseenter(function() {
    	var pos = $(this).position();
		var posLeft = pos.left;
		var posTop = pos.top;
        $(this).siblings().stop(true, true).css({'top':posTop+72,'left':posLeft-200}).show();
		
		var viewportWidth = $(window).width(),
        viewportHeight = $(window).height(),
        documentScrollTop = $(document).scrollTop(),
        documentScrollLeft = $(document).scrollLeft(),
		$myElement = $(this).siblings('.editor-details'),

        elementOffset = $myElement.offset(),
        elementHeight = $myElement.height(),
        elementWidth = $myElement.width(),

        minTop = documentScrollTop,
        maxTop = documentScrollTop + viewportHeight,
        minLeft = documentScrollLeft,
        maxLeft = documentScrollLeft + viewportWidth;

		if (
			(elementOffset.top > minTop && elementOffset.top + elementHeight < maxTop) &&
			(elementOffset.left > minLeft && elementOffset.left + elementWidth < maxLeft)
		) {
			//alert('entire element is visible');
		} else {
		//	alert(Math.abs(elementOffset.left));
			$(this).siblings().animate({'left':0});
		}
    });

    $('.editor-wrap').mouseleave(function() {
        $(this).children(".editor-details").stop(true, true).hide();
    });
	
});
