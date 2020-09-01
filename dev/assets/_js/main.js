
import $ from 'jquery';

window.$ = $;

// import JS files here using ES6 import statement
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import waypoint from '../../../node_modules/waypoints/lib/noframework.waypoints';
import inview from '../../../node_modules/waypoints/lib/shortcuts/inview';
import * as vivus from 'vivus';

gsap.registerPlugin(ScrollTrigger);

letterWrapping();
createWapointOnView();
// pathLengthPrepare();

if ($('main.template.home').length > 0) {
    new vivus('pattern-home', { duration: 100 });
    // new vivus('pattern-home-mobile', { duration: 100 });
}

// var $svgHome = document.querySelectorAll("#pattern-home path");
// var graphicAnimation = gsap.to($svgHome, 10, { strokeDashoffset: 0})
// ScrollTrigger.create({
//     animation: graphicAnimation,
//     trigger: "section.opening-soon",
//     start: `top center`,
//     // end: `${$(window).height()} center`,
//     scrub: true,
//     // pin: true,
//     // markers: true,
//     id: 'graphic'
// })

/*----------------------------------------------------------------*\
		NAVIGATION
\*----------------------------------------------------------------*/

var nav = $('.main-nav .links-container');
$('.burger').click(function () {
    $(this).toggleClass('activated');
    $(nav).toggleClass('active');
})

if($(window).width() > 829){
    $('.covid-banner').show();
    gsap.set('.covid-banner', {marginTop: -$('.covid-banner').outerHeight()})
    gsap.to('.covid-banner', {marginTop: 0, duration: 0.8, delay: 2});
}else{
    $('.covid-banner').show();
    gsap.set('.covid-banner', {yPercent: 100})
    gsap.to('.covid-banner', {yPercent: 0, duration: 0.8, delay: 2});
}

$('.covid-banner i').click(function(){
    if($(window).width() > 829){
        gsap.to('.covid-banner', {marginTop: -$('.covid-banner').outerHeight(), onComplete: function(){
            $('.covid-banner').hide();
        }});
    }else{
        gsap.to('.covid-banner', {yPercent: 100,  onComplete: function(){
            $('.covid-banner').hide();
        }});
    }
})

/*----------------------------------------------------------------*\
		TESTIMONIAL GSAP
\*----------------------------------------------------------------*/

if ($('main.template.home').length > 0) {

    var testimonialTl = gsap.timeline();
    // var testimonials = gsap.utils.toArray(".testimonial");

    gsap.set('.testimonial', { y: -30, alpha: 0 });

    testimonialTl.to('.testimonial', { y: 0, alpha: 1, duration: 0.2, stagger: 0.1 });

    ScrollTrigger.create({
        animation: testimonialTl,
        trigger: "section.testimonials",
        start: `top center`,
        // markers: true,
        id: 'testimonial'
    })

    $(window).scroll(letterAnim);
    $(window).resize(updateVars);
}

/*----------------------------------------------------------------*\
		EXHIBITIONS
\*----------------------------------------------------------------*/

if ($('main.template.about').length > 0) {

    var exihibitionsTl = gsap.timeline();
    // var testimonials = gsap.utils.toArray(".testimonial");

    gsap.set('.exhibitions h2 img', { alpha: 0 });
    gsap.set('.exhibit', { alpha: 0, y: -30 });

    exihibitionsTl.to('.exhibitions h2 img', { alpha: 1, duration: 0.4 })
    exihibitionsTl.to('.exhibit', { alpha: 1, y: 0, duration: 0.5, stagger: 0.1 });

    ScrollTrigger.create({
        animation: exihibitionsTl,
        trigger: "section.exhibitions",
        start: `top center`,
        // markers: true,
        id: 'exhibitions'
    });


    var windowWidth = $(window).width();
    if (windowWidth < 640) {
        var exihibits = gsap.utils.toArray('.exhibit .inner');

        exihibits.forEach(element => {
            gsap.to(element, {
                rotateY: 180,
                scrollTrigger: {
                    trigger: element,
                    start: `top center`,
                    end: `bottom center`,
                    toggleActions: 'play reverse play reverse',
                    // markers: true,
                    // id: 'exhibit'
                },
                ease: 'linear'
            })
        });
    }
}

/*----------------------------------------------------------------*\
		CONTACT
\*----------------------------------------------------------------*/
if ($('main.template.contact').length > 0) {
    var contactElem = $('section.get-in-touch');
    var contactElemScreen = $('section.get-in-touch .screen');


    gsap.to(contactElemScreen, { 
        xPercent: 100, 
        YPercent: 100, 
        scrollTrigger: {
            trigger: contactElem,
            start: `top center`,
            // markers: true,
            // id: 'contact'
        } 
    })
}


/*----------------------------------------------------------------*\
		FOOTER ANIMATION
\*----------------------------------------------------------------*/
var $body = $('body');

// var footerTween = gsap.to('', {})

ScrollTrigger.create({
    trigger: 'footer.main-footer',
    start: `top 54%`,
    scrub: true,
    onEnter: function () {
        $body.addClass('white');
    },
    onLeaveBack: function () {
        $body.removeClass('white');
    },
    // markers: true,
    id: 'header'
})

/*----------------------------------------------------------------*\
		HERO ANIMATION
\*----------------------------------------------------------------*/
// gsap.set('html', {overflow: 'hidden'});

if ($('.loop-img').length > 0) {
    var loopImgs = gsap.utils.toArray(".loop-img");
    var heroTl = gsap.timeline({ repeat: -1, repeatDelay: 0 })

    for (let i = 0; i < loopImgs.length; i++) {
        if (i == loopImgs.length - 1) {
            heroTl.to(loopImgs[i], { alpha: 0, duration: 0, delay: 0.5 });
            heroTl.to(loopImgs[0], { alpha: 1, duration: 0 });
        } else {
            heroTl.to(loopImgs[i], { alpha: 0, duration: 0, delay: 0.5 });
            heroTl.to(loopImgs[i + 1], { alpha: 1, duration: 0 });
        }
    }
}

// ScrollTrigger.create({
//     animation: heroTl,
//     trigger: "section.hero",
//     start: `top top`,
//     // end: `+=${titleWidth}`,
//     end: `${$(window).height()} center`,
//     scrub: true,
//     pin: true,
//     // markers: true,
//     id: 'hero-images'
// })



/*----------------------------------------------------------------*\
        HEADER ANIMATION
\*----------------------------------------------------------------*/

if ($('main.template.home').length > 0) {
    var titleWidth = $('#hero-header-animation').width();
    var windowWidht = $(window).width();

    var headerEndWidth = (windowWidht / 1.5);

    var tweenHero = createTween();
    var trigger = createTrigger(tweenHero);
    var menuButtonClicked = false;

}


//letters animation

var lettersInView = 0;
var letterInViewDelay = 0.1;

var letters = document.querySelectorAll('#hero-header-animation .letter');
for (var i = 0; i < letters.length; i++) {
    var elem = isInViewport(letters[i]);
    if (elem.stroked && elem.filled) {
        letters[i].classList.add("animated");
        letters[i].classList.add("animatedFilled");
        // lettersInViewTimeLine.to(letters[i], letterInViewDelay, {color: '#FACCF3', ease: Power1.easeIn})
        // TweenMax.to(letters[i], 0.4, {color: '#FACCF3', ease: Power1.easeIn, delay: letterInViewDelay})
        // lettersInView = i;
    } else if (elem.stroked) {
        letters[i].classList.add("animated");
    }
}

/*----------------------------------------------------------------*\
	ACCORDION
\*----------------------------------------------------------------*/
var accordionBtn = document.getElementsByClassName('accordionItemHeading');
var accordionItemContent = document.getElementsByClassName('accordionItemContent');
var i;

for (i = 0; i < accordionBtn.length; i++) {
    accordionBtn[i].addEventListener('click', toggleItem, false);
}

function toggleItem() {

    console.log('clicking on header')
    var btnClass = this;


    var itemClass = this.nextElementSibling.className;

    for (i = 0; i < accordionItemContent.length; i++) {
        accordionItemContent[i].classList.remove('open');
        accordionItemContent[i].classList.add('close');
        accordionItemContent[i].previousElementSibling.classList.remove('text')
        gsap.to(accordionItemContent[i], { height: 0, duration: 0.5 });
    }

    if (itemClass == 'accordionItemContent close') {
        this.nextElementSibling.className = 'accordionItemContent open';
        btnClass.classList.add('text');
        gsap.to(this.nextElementSibling, { height: 'auto', duration: 0.5 });
    }
}


/*----------------------------------------------------------------*\
	HELPER FUNCTIONS
\*----------------------------------------------------------------*/


function letterAnim() {
    for (var i = 0; i < letters.length; i++) {
        var elem = isInViewport(letters[i]);
        if (!elem.filled) {
            letters[i].classList.remove("animatedFilled");
        } else if (!elem.filled && !elem.stroked) {
            letters[i].classList.remove("animated");
            letters[i].classList.remove("animatedFilled");
        } else if (elem.stroked && elem.filled) {
            letters[i].classList.add("animated");
            letters[i].classList.add("animatedFilled");
        } else if (elem.stroked) {
            letters[i].classList.add("animated");
        }
    }
}

function updateVars() {
    titleWidth = $('#hero-header-animation').width();
    windowWidht = $(window).width();
    headerEndWidth = (windowWidht / 1.5);

    killGsap(tweenHero, trigger);

    tweenHero = createTween();

    trigger = createTrigger(tweenHero);
}


function createTween() {
    // var headerPosition = $(window).height()/2 - $('#hero-header-animation').height()/2;
    // gsap.set('#hero-header-animation', {y: headerPosition})
    return gsap.to("#hero-header-animation", {
        x: (titleWidth - headerEndWidth) * -1,
        ease: 'linear'
    });
}

function createTrigger(tween) {
    var boundsTop = document.getElementById("hero-header-animation").getBoundingClientRect().top;
    var scrollerPos = $(window).height() > boundsTop ? boundsTop : 'bottom';
    return ScrollTrigger.create({
        animation: tween,
        trigger: ".heroScroll-wrapper",
        start: `top ${scrollerPos}`,
        // end: `+=${titleWidth}`,
        end: `bottom top`,
        scrub: true,
        // pin: true,
        // markers: true,
        id: 'header'
    })
}

function killGsap(tween, trigger) {
    tween.kill();
    trigger.kill()
}

function isInViewport(elem) {
    var viewPortObject = {}
    var bounding = elem.getBoundingClientRect();
    var q = bounding.right - elem.clientWidth;
    viewPortObject = {
        stroked: q <= (window.innerWidth || document.documentElement.clientWidth),
        filled: bounding.right <= (window.innerWidth || document.documentElement.clientWidth)
    }
    return viewPortObject;
};

function letterWrapping() {

    var lettersContainer = $('[data-letterWrapping]');

    lettersContainer.each(function (i) {
        var charactersFromElement;
        var newCharacters = [];
        var wrapper;
        var spaces;

        $(this).data('wrapper') == undefined || $(this).data('wrapper').length == 0 ? wrapper = 'span' : wrapper = $(this).data('wrapper');
        $(this).data('spaces') == undefined ? spaces = false : spaces = true;

        charactersFromElement = $(this).text().split("");

        if ($(this).data('wrappingclass') != undefined) {
            var className;
            var counter = 0;
            $(this).data('wrappingclass').length == 0 ? className = 'letter' : className = $(this).data('wrappingclass');
            for (var i = 0; i < charactersFromElement.length; i++) {
                if (spaces) {
                    if (charactersFromElement[i] == " ") {
                        newCharacters.push(`<${wrapper}>&nbsp;&nbsp;&nbsp;&nbsp;</${wrapper}>`);
                    } else {
                        newCharacters.push(`<${wrapper} class="${className} item-${counter}">${charactersFromElement[i]}</${wrapper}>`);
                        counter++;
                    }
                } else {
                    if (charactersFromElement[i] == " ") {
                        newCharacters.push(`<${wrapper}>${charactersFromElement[i]}</${wrapper}>`);
                    } else {
                        newCharacters.push(`<${wrapper} class="${className} item-${counter}">${charactersFromElement[i]}</${wrapper}>`);
                        counter++;
                    }
                }
            }
        } else {
            for (var i = 0; i < charactersFromElement.length; i++) {
                var thisCharacter
                if (spaces) {
                    thisCharacter = charactersFromElement[i] == " " ? "&nbsp;" : charactersFromElement[i];
                } else {
                    thisCharacter = charactersFromElement[i];
                }
                newCharacters.push(`<${wrapper}>${thisCharacter}</${wrapper}>`);
            }
        }

        $(this).empty();
        $(this).html(newCharacters);
    })
}

/*----------------------------------------------------------------*\
		CREATE WAYPOINTS
\*----------------------------------------------------------------*/

function createWapointOnView() {
    var elements = document.querySelectorAll('[data-animateInView]');
    var inViewWaypoints = [];

    for (let i = 0; i < elements.length; i++) {
        const element = elements[i];
        let elementIn = isInViewportHeight(element);
        let inViewWaypoint = new Waypoint.Inview({
            element: element,
            enter: function () {
                if (elementIn) {
                    element.classList.add('animated', 'animated-delay');
                } else {
                    element.classList.add("animated")
                }
            }
        })
        inViewWaypoints.push(inViewWaypoint);
    }

    return inViewWaypoints;
}

function isInViewportHeight(elem) {
    var bounding = elem.getBoundingClientRect();
    return (
        bounding.top <= (window.innerHeight || document.documentElement.clientHeight)
    );
}