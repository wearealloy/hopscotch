
import $ from 'jquery';

window.$ = $;

// import JS files here using ES6 import statement
import { gsap } from 'gsap';


function home() {
    console.log('in home');

    // hero
    var titleWidth = $('#hero-header-animation').width();
    var windowHeight = $(window).height();
    var windowWidht = $(window).width();

    var headerEndWidth = (windowWidht / (windowWidht > 640 ? 1.5 : 0.85)) - 100;

    var handKill;


    TweenMax.to('#scatter1', 35, {morphSVG: '#scatter3', repeat: -1, yoyo: true});



    var $layers = document.querySelectorAll("#about-polihedral-container svg .shp0");
    var $parallaxShape = document.getElementById('about-polihedral-container');

    // pathPrepare($layers);

    $('.home-main .hero').height(titleWidth + windowHeight);

    var controller = new ScrollMagic.Controller({ vertical: true });

    var hero1 = new TimelineMax().add([
        TweenMax.to("#hero-header-animation", 1, { transform: `translateX(-${titleWidth - headerEndWidth}px)`, ease: Linear.easeNone }),
    ]);

    hero1.progress(1).progress(0);

    // 

    var scene = new ScrollMagic.Scene({ duration: $('.home-main .hero').outerHeight() - windowHeight - 100 })
        .setTween(hero1)
        .addTo(controller)
        .on('enter', function(e){
            console.log('on enter');
            // handStoppingPoints = document.getElementById("scatter1");
            if(handKill){
                handKill.kill();
            }
            setTimeout(function(){
                TweenMax.to('#scatter1', 5, {morphSVG: '#hand-inner', ease: Power2.easeInOut});
            TweenMax.to('#scatter1', 2, {y: -40, yoyo: true, repeat: -1, ease: Power1.easeInOut});
            }, 300)
            
        })
        .on('leave', function(e){
            if(e.scrollDirection == 'REVERSE'){
                console.log('on leave');
                TweenMax.to('#scatter1', 2, {y: 0, ease: Power1.easeOut});
                handKill = TweenMax.to('#scatter1', 5, {morphSVG: '#scatter1', ease: Power2.easeInOut}).eventCallback('onComplete', function(){
                    TweenMax.to('#scatter1', 35, {morphSVG: '#scatter3', repeat: -1, yoyo: true});
                })
                // lettersInViewTimeLine.reverse();
            }
            // tl.play();
        })
        .offset(1);
    // .addIndicators();



    //letter animations

    var lettersInView = 0;
    var letterInViewDelay = 0.1;
    // var lettersInViewTimeLine = new TimelineLite({ paused: true});
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

    $(window).scroll(function () {
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
    })

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
}