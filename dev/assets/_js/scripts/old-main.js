
import $ from 'jquery';

window.$ = $;

// import JS files here using ES6 import statement
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger'

gsap.registerPlugin(ScrollTrigger);

letterWrapping();


var titleWidth = $('#hero-header-animation').width();
var windowWidht = $(window).width();

// var headerEndWidth = (windowWidht / (windowWidht > 640 ? 1.5 : 0.85)) - 100;
var headerEndWidth = (windowWidht / 1.5) - 100;
var tweenHero = createTween();
var trigger = createTrigger(tweenHero);

//menu anim
$('#menu-button').click(function () {
    $(this).toggleClass('open');
    $('.logo-container').toggleClass('open');
    $('.social-bar').toggleClass('open');
    $('.button-container').toggleClass('open');
    $(this).parent().toggleClass('open');
    if ($(this).hasClass('open')) {

        gsap.to('div.modal', {alpha: 1, visibility: 'visible', duration: 0.5})

        // gsap.to('#menu-button div:nth-child(1)', {xPercent: 50, alpha: 0, duration: 0.3, onComplete: () => {
        //     $('#menu-button div:nth-child(1)').hide();
        //     $('#menu-button div:nth-child(2)').hide();
        // }})
        // gsap.to('#menu-button div:nth-child(2)', {xPercent: -50, alpha: 0, duration: 0.3})

        // gsap.fromTo('#menu-button div:nth-child(3)',{xPercent: 50, alpha: 0}, {xPercent: 0, alpha: 1, duration: 0.3, delay: 0.3, onStart: ()=>{
        //     $('#menu-button div:nth-child(3)').show();
        //     $('#menu-button div:nth-child(4)').show();
        // }})
        // gsap.fromTo('#menu-button div:nth-child(4)',{xPercent: -50, alpha: 0}, {xPercent: 0, alpha: 1, duration: 0.3, delay: 0.3})
    } else {
        gsap.to('div.modal', {alpha: 0, duration: 0.5, onComplete: ()=>{
            gsap.set('div.modal', {visibility: 'hidden'})
        }})

        // gsap.to('#menu-button div:nth-child(3)', {xPercent: 50, alpha: 0, duration: 0.3, onComplete: () =>{
        //     $('#menu-button div:nth-child(3)').hide();
        //     $('#menu-button div:nth-child(4)').hide();
        // }})
        // gsap.to('#menu-button div:nth-child(4)', {xPercent: -50, alpha: 0, duration: 0.3})

        // gsap.to('#menu-button div:nth-child(1)', {xPercent: 0, alpha: 1, duration: 0.3, delay: 0.3, onStart: ()=>{
        //     $('#menu-button div:nth-child(1)').show();
        //     $('#menu-button div:nth-child(2)').show();
        // }})
        // gsap.to('#menu-button div:nth-child(2)', {xPercent: 0, alpha: 1, duration: 0.3, delay: 0.3})
    }

})

// $('#menu-button').mouseenter(function(){
//     gsap.to('#menu-button div:nth-child(1)', {xPercent: 21, duration: 0.3})
//     gsap.to('#menu-button div:nth-child(3)', {xPercent: 21, duration: 0.3})
//     gsap.to('#menu-button div:nth-child(2)', {xPercent: -21, duration: 0.3})
//     gsap.to('#menu-button div:nth-child(4)', {xPercent: -21, duration: 0.3})
// })
// $('#menu-button').mouseleave(function(){
//     gsap.to('#menu-button div:nth-child(1)', {xPercent: 0, duration: 0.3})
//     gsap.to('#menu-button div:nth-child(3)', {xPercent: 0, duration: 0.3})
//     gsap.to('#menu-button div:nth-child(2)', {xPercent: 0, duration: 0.3})
//     gsap.to('#menu-button div:nth-child(4)', {xPercent: 0, duration: 0.3})
// })


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
    headerEndWidth = (windowWidht / 1.5) - 100;

    killGsap(tweenHero, trigger);

    tweenHero = createTween();

    trigger = createTrigger(tweenHero);
}

function createTween(){
    return gsap.to("#hero-header-animation", {
        x: (titleWidth - headerEndWidth) * -1
    });
}

function createTrigger(tween){
    return ScrollTrigger.create({
        animation: tweenHero,
        trigger: ".container-flex-column",
        start: `top 50%`,
        end: `+=${titleWidth}`,
        scrub: true,
        pin: true,
        // markers: true,
        id: "scrub"
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