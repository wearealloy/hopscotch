
import $ from 'jquery';

window.$ = $;

// import JS files here using ES6 import statement
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger'

gsap.registerPlugin(ScrollTrigger);

letterWrapping();


/*----------------------------------------------------------------*\
		LOADING SREEN ANIMATION
\*----------------------------------------------------------------*/
gsap.set('html', {overflow: 'hidden'});

gsap.timeline({repeat: 3, repeatDelay: 0, onStart: function(){
    gsap.to('.loading-bar .loading', {scaleX: 1, duration: this.totalDuration(), ease: 'linear'});
}, onComplete: function(){
    gsap.set('html', {overflow: 'auto'});
    gsap.to('.loading-screen', {alpha: 0, duration: 0.4, delay: 0.2, onComplete: function(){
        $('.loading-screen').hide();
    }});
}})
.to('.logo-one', {display: 'none', duration: 0.12})
.to('.logo-two', {display: 'block', duration: 0.12})
.to('.logo-two', {display: 'none', duration: 0.12})
.to('.logo-three', {display: 'block', duration: 0.12})
.to('.logo-three', {display: 'none', duration: 0.12})
.to('.logo-one', {display: 'block', duration: 0.12});

/*----------------------------------------------------------------*\
		NEWSLETTER
\*----------------------------------------------------------------*/

var signUpmodal = $('#signUp-modal');

$('.news-open').click(function(){
    signUpmodal.toggleClass('open');

    if($('#menu-button').hasClass('open')){
        signUpmodal.toggleClass('black-modal');
    }

    if(signUpmodal.hasClass('open')){
        gsap.set('html', {overflow: 'hidden'});
        gsap.set(signUpmodal, {display: 'flex'});
        gsap.to(signUpmodal, {alpha: 1, duration: 0.3})
    }else{
        gsap.set('html', {overflow: 'auto'});
        gsap.to(signUpmodal, {alpha: 0, duration: 0.3, onComplete: function(){
            signUpmodal.hide();
        }})
    }
})

$('#signUp-modal .form-container').click(function(e){
    e.stopPropagation();
})

$('#news-close').click(function(e){
    e.stopPropagation();
    gsap.set('html', {overflow: 'auto'});
    gsap.to(signUpmodal, {alpha: 0, duration: 0.2, onComplete: function(){
        signUpmodal.hide();
        signUpmodal.removeClass('open black-modal');
    }})
})

$('#signUp-modal').click(function(){
    gsap.set('html', {overflow: 'auto'});
    gsap.to(signUpmodal, {alpha: 0, duration: 0.2, onComplete: function(){
        signUpmodal.hide();
        signUpmodal.removeClass('open black-modal');
    }})
})


/*----------------------------------------------------------------*\
        HEADER ANIMATION
\*----------------------------------------------------------------*/

var titleWidth = $('#hero-header-animation').width();
var windowWidht = $(window).width();

var headerEndWidth = (windowWidht / 1.3);
// var headerEndWidth = windowWidht - 100
var tweenHero = createTween();
var trigger = createTrigger(tweenHero);
var menuButtonClicked = false;

//menu anim
$('#menu-button').click(function () {
    $('.toggle-open').toggleClass('open');
    openNav($(this), true);
})

function openNav(nav, clickedFromButton){
    if ($(nav).hasClass('open')) {
        if(clickedFromButton){
            gsap.set('html', {overflow: 'hidden'});
        }
        gsap.to('div.modal', {alpha: 1, visibility: 'visible', duration: 0.5})
    } else {
        gsap.to('div.modal', {alpha: 0, duration: 0.5, onComplete: ()=>{
            if(clickedFromButton){
                gsap.set('html', {overflow: 'auto'});
            }
            gsap.set('div.modal', {visibility: 'hidden'})
        }})
    }
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
    }else if(elem.stroked){
        letters[i].classList.add("animated");
    }
}

$(window).scroll(letterAnim);
$(window).resize(updateVars);


function letterAnim(){
    for (var i = 0; i < letters.length; i++) {
        var elem = isInViewport(letters[i]);
        if(!elem.filled) {
            letters[i].classList.remove("animatedFilled");
        }else if(!elem.filled && !elem.stroked){
            letters[i].classList.remove("animated");
            letters[i].classList.remove("animatedFilled");
        }else if (elem.stroked && elem.filled) {
            letters[i].classList.add("animated");
            letters[i].classList.add("animatedFilled");
        }else if(elem.stroked){
            letters[i].classList.add("animated");
        }
    }
}

function updateVars() {
    titleWidth = $('#hero-header-animation').width();
    windowWidht = $(window).width();
    headerEndWidth = (windowWidht / 1.3);

    killGsap(tweenHero, trigger);

    tweenHero = createTween();

    trigger = createTrigger(tweenHero);
}


function createTween(){
    // var headerPosition = $(window).height()/2 - $('#hero-header-animation').height()/2;
    // gsap.set('#hero-header-animation', {y: headerPosition})
    return gsap.to("#hero-header-animation", {
        x: (titleWidth - headerEndWidth) * -1,
        ease: 'linear'
    });
}

function createTrigger(tween){
    return ScrollTrigger.create({
        animation: tween,
        trigger: ".heroScroll-wrapper",
        start: `top`,
        end: `+=${titleWidth}`,
        scrub: true,
        pin: true,
        onLeave: ()=>{
            $('.toggle-open').addClass('open');
            openNav($('#menu-button'));
        },
        onEnterBack: ()=>{
            $('.toggle-open').removeClass('open');
            openNav($('#menu-button'), false);
        },
        // markers: true,
        id: 'header'
    })
}

function killGsap(tween, trigger){
    tween.kill();
    trigger.kill()
}

function isInViewport (elem) {
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
                        newCharacters.push(`<${wrapper}>&nbsp;&nbsp;</${wrapper}>`);
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