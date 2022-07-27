<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<head>

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Orbitron');

* {
	transform-origin: 100%;
}

body {
	//@include squareGray(.5%);
	background: #555;
}

html, body, .container {
  height: 100%;
}

.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

h1 {
	font-size: 2.5em;
}

h2 {
	font-size: 1.5em;
}

h1, h2 {
	line-height: .4em;
}

h1,h2,a {
	font-family: 'Orbitron', sans-serif;
	color: #fff;
	text-align: center;
	margin-top: 1em;
}

a {
	display: block;
	width: 14em;
	font-size: 1.1em;
	text-decoration: none;
	color: rgb(233,78,27);
	font-weight: bold;
	padding: 1em;
	padding-bottom: .8em;
	background: rgba(255,255,255,.5);
	border: .1em solid #fff;
	border-radius: .5em;
	margin-bottom: 1em;
	&:hover {
		color: rgb(233,0,0);
	}
}

#weight {
	width: 30em;
}

#backsplash {
	fill: rgba(225, 212, 129, .5);
	animation: splash 5s linear infinite;
}

#head-body {
	animation: bounce 1s infinite;
}

#eyeLeft,#eyeRight {
	animation: eyemove 5s linear infinite;
}

#handLeft {
	animation: hand1 2s linear infinite;
}

#handRight {
	animation: hand2 2s linear infinite;
}

.dotE,.dotO {
	animation:  flash1 .3s linear infinite;
}

.dotO {
	animation-delay:  .1s;
}

#shadow1,#shadow2,#shadow3,#shadow4,#shadow5 {
	animation: flash2 2s linear infinite;
}

#shadow1,#shadow5 {
	animation-delay: 1s;
}

#swirl1,#swirl2, #swirl3, #swirl4,#swirl5,#swirl6 {
	animation: swirl .5s linear infinite;
}

#swirl1 {
	animation-delay: .1s;
}

#swirl2 {
	animation-delay: .2s;
}

#swirl3,#swirl5 {
	animation-delay: .3s;
}

#swirl4 {
	animation-delay: .4s;
}

@keyframes splash {
	90%{ 
		transform:  scale(1.05);
		fill: rgba(255,0,0,.5);
	}
}

@keyframes eyemove {
	90%{ 
		transform: scale(1.1) translate(.2em,.6em);
	}
}

@keyframes hand1 {
	50% { 
		transform: rotate(10deg);
	}
}

@keyframes hand2 {
	50% { 
		transform: rotate(-10deg);
	}
}

@keyframes flash1 {
  from, 50%, to { 
		fill: rgba(0,0,0,.5);
  }

  25%, 75% { 
		fill: rgba(255,255,255,.5);
  }
}

@keyframes flash2 {
  from, 50%, to { 
		fill: rgba(0,0,0,.5);
  }

  25%, 75% { 
		fill: rgba(255,255,255,.5);
  }
}

@keyframes swirl {
	to {
		transform: translate(-9.375em) rotate(360deg);
		fill: rgba(255,255,255,.1);
	}
}

@media only screen and (max-width: 600px)  {
	h1 {
		font-size: 1.25em;
	}
	
	h2 {
		font-size: .8em;
	}
	
	#weight {
		width: 18em;
	}
	
	a {
		font-size: .9em;
		width: 14em;
		margin-bottom: 2em;
	}
}
</style>
</head>
<body>
	<div class="container">
	<h1>Error 404</h1>
	<h2>Page Error !.</h2>
	<svg id="weight" viewBox="20 79 980 843" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <defs>
        <path d="M323,736 C328.492142,736 280.481286,723.450608 247,707 C213.518714,690.549392 179.798771,666.291945 191,666 C196.329305,665.861099 221.116733,682.060848 258,693 C294.883267,703.939152 314.669327,702.498785 347,707 C426.645794,718.088628 608.035212,720.213579 646,699 C670.920728,685.075049 707,614 695,614 C683,614 709.09813,566.298339 702,561 C682.337885,546.323382 659.113412,614.374149 654,614 C634.422683,612.567526 617.679287,643.628983 604,657 C590.320713,670.371017 584.151019,659.764402 586,657 C597.440388,639.895536 631.080663,577.921408 675,532 C718.919337,486.078592 768.952049,461.276552 758,446 C754.495898,441.112276 755.665463,431.77566 741,446 C726.334537,460.22434 699.773407,494.559227 686,497 C678.049539,498.408894 664.745044,483.722782 646,483 C627.254956,482.277218 758,388.068044 758,372 C758,360.199571 746,303 770,303 C778.35605,303 784.054732,319.51308 789,313 C793.945268,306.48692 796.850114,270.814087 789,263 C785.154287,259.171936 736.272032,308.150531 702,349.778943 C667.727968,391.407354 680.246442,402.305666 661,399 C653.026032,397.630434 690.723594,331.659143 675,323 C667.27125,318.743698 602.368709,482.935982 468,532 C382.642499,563.167836 311.767533,542.256988 277,520 C242.232467,497.743012 273.412446,511.793928 269,508 C240.125051,483.172619 260.306413,482.185274 258,483 C242.150788,488.598637 251.305882,491.842465 247,497 C245.838956,498.390684 259.338019,525.127818 277,532 C284.087167,534.757579 307.744542,547.87357 333,553 C358.255458,558.12643 412.125892,560.3995 409,561 C272.059729,587.306946 262.57662,536.732619 247,532 C233.72304,527.966083 230.754698,531.162876 226,520 C223.68178,514.557382 218.588233,492.323852 217.291711,477 C215.995188,461.676148 223.593289,438.42627 231,422 C252.846644,373.549498 393.651098,203.648209 380,201 C323.161565,189.973776 288.03119,198.446086 258,207 C227.96881,215.553914 188.088623,237.259858 180,235 C175.128452,233.638952 214.494442,206.077096 258,188 C301.505558,169.922904 350.026482,164 347,164 C243.245107,164 94.6804257,240.374646 63.2917107,349.778943 C31.9029956,459.18324 46.2917107,439.641935 46.2917107,470.5341 C46.2917107,596.172922 118.612895,708.622537 217.291711,742.294583 C315.970526,775.966628 299.93258,736 323,736 Z M117.56278,491 C122.713088,492.001119 120.801679,450.753491 127,418.865896 C129.01214,408.514332 130.825938,399.195595 133,391 C135.174062,382.804405 141.589671,362.488814 138.11129,361.812685 C132.960982,360.811567 123.7611,385.850003 117.56278,417.737598 C111.364459,449.625192 112.412471,489.998881 117.56278,491 Z M248,599 C249.667585,598.393049 245.681397,592.861233 241,582 C236.318603,571.138767 218.598007,528.978533 208.013033,499.896556 C204.395655,489.957893 199.867267,485.036651 194,478 C192.035208,475.643612 192.022034,473.826049 191,473 C189.977966,472.173951 186.985141,472.145793 186,470 C180.144919,457.246709 183.24613,445.336538 182,438 C180.76634,430.736876 184.842774,425.633448 186,421.078181 C186.651918,418.511993 189.013929,414.158804 189,411 C188.986071,407.841196 186.810097,407.096094 186,406 C178.637016,396.037585 170.725594,420.722326 169.74789,421.078181 C166.200569,422.369301 169.536342,447.015417 180,478 C190.463658,508.984583 190.040243,497.120657 194,508 C197.851638,518.582288 204.25627,527.852543 208.013033,537 C211.769795,546.147457 244.422003,600.302284 248,599 Z M174,622 C194.83455,640.759513 214,651 230,656 C246,661 245.831456,663.408412 248,661 C249.907244,658.881791 245.423479,659.550813 237,656 C228.576521,652.449187 218.1926,645.518483 206,638 C180.530378,622.294334 185.989131,621.994254 176,613 C167.659198,605.489908 161.456338,597.502086 157,589 C154.695969,584.604222 153.005423,581.08176 152,575 C151.330313,570.949089 148.95972,568.388864 148,565 C147.04028,561.611136 146.947816,559.66477 146,559 C143.029691,556.916714 144,545 139,537 C134,529 135.876939,530.235175 135,530 C132.481103,529.324489 131.611053,533.372556 130,537 C128.388947,540.627444 126.030428,543.855594 125,545 C124.198849,545.889768 126.90203,546.513488 128,549 C129.09797,551.486512 134.749288,565.716417 139,577 C143.496525,588.936097 155.118334,599.802506 162,611 C164.284695,614.717538 167.715863,615.810575 169,617 C170.284137,618.189425 171.047823,619.341848 174,622 Z" id="path-1"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-2">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-3" cx="873.504607" cy="791.000872" rx="23.5" ry="17"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-4">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-5" cx="286.5" cy="852" rx="23.5" ry="17"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-6">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-7" cx="678.5" cy="905" rx="23.5" ry="17"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-8">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M228,757.782565 C228.865502,756.28719 240,757.395516 240,757.395516 L228,761 L253.119697,759.325388 L282.068359,757.395516 L901.781988,716.082117 C906.188758,715.788338 910.496097,719.057384 911.361599,723.387424 C911.361599,723.387424 913,730.560748 913,734 C913,737.439252 910.378933,770.877598 910.378933,770.877598 C910.037742,775.281629 907.024824,781.1606 903.576146,783.913514 C903.576146,783.913514 897.702048,789.640625 873,805 C853.080734,817.385511 903.718485,790.115371 896,792 C888.281515,793.884629 721.6796,893 720,893 C715.45573,893 784.276076,857.241755 748.761152,876.550184 C713.246227,895.858612 693.329668,910.07297 657.761152,906.550184 C632.737748,904.071809 583.018906,895.978437 525.761152,887.550184 C484.007316,881.404083 470.896608,880.446379 459.761152,878.550184 C448.625695,876.653989 330.803862,855.52839 322,854.550184 C308.404896,853.039616 318.434372,854.680125 311.91513,853.387355 C309.802856,852.96849 306.953299,855.791873 300,854.550184 C295.336885,853.717465 289.81016,851.483197 286,851 C272.433063,849.279468 263.663544,847.386982 252,846 C237.060848,844.223496 315.251144,855.336429 309.761152,854.550184 C258.916082,847.268442 259.584023,849.800195 244.761152,842.550184 C235.339632,837.942026 236.986106,834.633229 235.761152,829.550184 C234.536198,824.467138 226.839381,763.527257 226.761152,757.782565 C226.614621,747.022207 226.727993,770.83978 226.727993,770.83978 C226.746306,775.264697 226.84608,775.277201 226.982423,770.852248 C226.982423,770.852248 227.134498,759.277941 228,757.782565 Z" id="path-9"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-10">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <mask id="mask-11" maskContentUnits="userSpaceOnUse" maskUnits="objectBoundingBox" x="0" y="0" width="686.31384" height="191.024251" fill="white">
            <use xlink:href="#path-9"></use>
        </mask>
        <path d="M228,761 C225.790861,758.238576 227.221451,754.445778 231.247727,752.598735 C231.247727,752.598735 253.520426,741.086685 285.294477,734.643285 C293.325322,733.014726 301.962646,731.710901 311,731 C355.793664,727.476417 706.537025,713 861,713 C910.845574,713 912.014503,720.657152 910,724 C906.755502,724.422511 907.574536,724.510608 907.574536,724.510608 C903.391235,725.885461 896.639867,728.221867 892.480469,729.734375 L896.519531,728.265625 C892.366609,729.775779 885.789696,732.609691 881.817547,734.53373 C881.817547,734.53373 878.737617,736.244291 876,737 C873.262383,737.755709 844.478469,748.554694 843,749.951908 C842.064451,750.83604 830.53199,755.753359 806,766 C787.012581,773.930758 700.195443,809.996279 693,813 C690.898838,813.877125 773.656276,781.024965 770,782.185562 C731.261859,794.482055 723.733326,802.407403 706,808 C688.266674,813.592597 687.64918,819 671,819 C668.878076,819 670.238646,818.499554 668,819 C665.761354,819.500446 445.762175,790 441,790 C434.209958,790 636.228354,815 631,815 C623.287144,815 424.173121,787.888082 311.618412,772.477494 C266.929181,766.358805 235.916626,762.089108 235.916626,762.089108 C231.544394,761.48761 225.766102,758.207627 224,756 L228,761 Z" id="path-12"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-13">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M68.3462364,0 L84,0 L102.346236,0 L109,130 C109,130 160.151702,132.526661 206.346236,144 C252.540771,155.473339 286.142865,184.596952 285.346236,194 C284.895559,199.319595 281.74093,216.595452 260,223 C238.25907,229.404548 215.405983,221.795799 197.346236,223 C152.658324,225.979734 94.691813,215 93.3462364,215 C92.1459031,215 65.5285698,216.346017 43,215 C20.4714302,213.653983 2.97712652,209.76673 0.346236418,201 C-2.01947917,193.116893 7.96514141,173.158985 23.3462364,161 C38.7273314,148.841015 79,130 79,130 L68.3462364,0 Z" id="path-14"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-15">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <mask id="mask-16" maskContentUnits="userSpaceOnUse" maskUnits="objectBoundingBox" x="0" y="0" width="285.360107" height="225.597084" fill="white">
            <use xlink:href="#path-14"></use>
        </mask>
        <path d="M147.22953,146.572948 C156.208437,146.572948 164.350061,148.827286 167.569287,149.076653 C168.508309,149.149391 169.028512,149.051538 169.028512,148.677385 C169.028512,147.55558 164.897161,140.536268 157.920971,138.796973 C150.944781,137.057677 149.772232,141.541194 146.026887,141.541194 C134.428907,141.541194 125.138775,143.864353 125.138775,145.521208 C125.138775,146.072433 123.382269,149.938559 125.198239,150.38243 C127.01421,150.826301 139.490127,146.572948 147.22953,146.572948 Z" id="path-17"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-18">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M117.004015,144.978873 C125.982922,144.978873 134.124546,147.233212 137.343772,147.482578 C138.282794,147.555316 138.802997,147.457463 138.802997,147.08331 C138.802997,145.961505 134.671646,138.942194 127.695456,137.202898 C120.719266,135.463603 119.546717,139.947119 115.801372,139.947119 C104.203392,139.947119 101.821187,142.852768 101.821187,144.509623 C101.821187,145.060848 99.238142,145.964327 101.054113,146.408198 C102.870084,146.85207 109.264612,144.978873 117.004015,144.978873 Z" id="path-19"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-20">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M207,81 C231.201722,81 229.025905,99.6230554 217,81 C204.974095,62.3769446 202,91.431247 202,87 C202,61.6903016 159.813591,17.2811264 129,3 C112.709752,-4.55001555 72.2680916,0.771762979 45,35 C24.1802251,61.1339957 11.6669141,114.301243 6,135 C0.3330859,155.698757 3.6153665,139 3,139 C2.22857192,139 6.61115121,136.537724 6,139 C5.38884879,141.462276 2.19800773,137.964386 1,139 C0.125994783,139.755531 3.17284973,137.869493 3,139 C2.82715027,140.130507 -0.397117676,140.207181 1,141 C3.98441165,142.693558 1,112.461497 1,131 C1,137.372975 7.27360852,133.277866 9,139 C9.95094539,142.151914 65.6788802,137.732701 117,121 C168.32112,104.267299 196.909635,81 207,81 Z" id="path-21"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-22">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M126.834259,103.250734 C131.978166,103.250734 143.35424,104.134263 147.005542,98.1400239 C148.178913,96.2137338 146.961203,93.7477064 147.071744,89.5962766 C147.182285,85.4448469 147.590058,67.7915012 147.590058,59.2400492 C147.590058,51.2127278 143.55125,43.4400586 141.509107,37.1171658 C140.806783,34.9426264 138.405174,31.2918733 135.575339,27.266077 C133.568966,24.4117579 131.347327,21.3689079 129.363443,18.5299972 C124.581445,11.6870226 122.821724,7.33615083 119.735473,7.33615083 C118.211091,7.33615083 118.830055,7.3360739 119.377105,8.26973126 C120.034723,9.39209494 120.881761,11.6108689 121.677955,13.4375248 C123.136477,16.7837154 122.369782,18.0928838 123.262069,20.4724791 C124.154356,22.8520744 123.307709,27.5879508 124.346292,31.6001231 C127.777366,44.8547887 124.894624,47.8716579 124.767338,55.6171125 C124.72153,58.4045867 124.281916,60.8061367 123.655382,62.9023831 C122.043072,68.2968211 120.564026,72.1957669 120.00174,74.9204958 C119.220953,78.704038 117.711033,79.9016056 117.711033,80.4680457 C117.711033,80.8089643 116.59426,83.5152125 115.919193,85.1359478 C115.244127,86.7566832 115.236002,86.7535546 115.202458,87.0031087 C115.180551,87.1660841 114.687072,88.93367 113.768986,90.7374304 C112.8509,92.5411908 111.911999,93.7200711 110.746547,94.9329499 C108.585635,97.1817986 105.097573,97.5786791 105.795598,99.4593286 C106.493623,101.339978 107.313269,99.669318 107.662759,100.176065 C109.171139,102.363154 110.327392,101.406783 112.330661,101.967904 C114.333931,102.529025 123.519682,103.250734 126.834259,103.250734 Z" id="path-23"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-24">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M821.043639,441.002147 C833.721727,441.002147 851.470791,447.27685 860.543639,441.002147 C864.04484,438.580746 861.445409,411.44641 873.543639,407.002147 C879.474506,404.823454 897.490622,419.520374 909.543639,421.002147 C921.596655,422.48392 928.543639,410.845338 928.543639,407.002147 C928.543639,404.732278 935.39374,389.589375 922.543639,385.002147 C909.693537,380.414919 858.591033,379.744252 866.543639,373.002147 C879.441123,362.067846 916.415523,356.32416 922.543639,349.002147 C929.411162,340.796673 929.047472,338.47525 928.543639,335.002147 C928.039805,331.529044 926.086714,326.276293 922.543639,325.002147 C919.843215,324.031033 900.334869,318.490055 882.543639,325.002147 C864.752409,331.514239 825.947188,359.002147 821.043639,359.002147 C820.096184,359.002147 861.959546,335.410871 873.543639,312.002147 C885.127731,288.593423 861.347236,275.809445 860.543639,276.002147 C857.453883,276.743069 828.213694,287.015774 814.543639,306.002147 C800.873583,324.98852 793.88748,364.738107 786.543639,364.002147 C778.460339,363.192083 756.54423,349.938892 742.543639,349.002147 C728.543048,348.065402 716.20649,354.472705 713.543639,359.002147 C711.131184,363.10567 706.949187,380.359329 713.543639,385.002147 C716.720066,387.238508 730.047892,382.785984 742.543639,385.002147 C755.039385,387.21831 758.543639,404.929213 758.543639,407.002147 C758.543639,416.321548 771.337732,422.219093 786.543639,421.002147 C801.749545,419.785201 811.50352,405.462562 821.043639,407.002147 C835.139896,409.277002 802.422209,412.603933 797.543639,421.002147 C792.665069,429.400362 818.530629,441.002147 821.043639,441.002147 Z" id="path-25"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-26">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-27" cx="203.5" cy="207.5" rx="203.5" ry="207.5"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-28">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M273.346671,360.435571 C275.502544,360.418547 278.414109,359.967256 281.280073,360.397221 C284.146038,360.827187 289.133566,362.579168 292.871183,363.50305 C299.375421,365.110798 303.496367,368.605198 303.496367,366.350059 C303.496367,361.697001 289.759595,352.979402 272.91491,352.979402 C256.070225,352.979402 243.196975,358.412249 243.196975,363.065307 C243.196975,364.94046 238.189197,368.048274 242.015157,367.475914 C243.403103,367.268278 249.234027,365.95175 251.016045,365.16042 C252.798063,364.36909 256.740219,362.569652 259.891004,362.948247 C260.769793,362.86259 266.361098,361.10528 266.721836,360.637458 C267.183256,360.039065 268.475918,360.474033 273.346671,360.435571 Z" id="path-29"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-30">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M358.038779,152.530138 C360.52406,152.530138 362.538779,142.634097 362.538779,130.426711 C362.538779,121.688633 359.699482,114.725077 358.201237,111.137291 C356.702993,107.549505 358.745089,108.323284 358.038779,108.323284 C356.247691,108.323284 351.864014,105.157816 351.139708,112.598387 C350.779168,116.302101 353.019547,119.172062 353.705958,122.263497 C354.110053,124.083444 355.716652,126.782881 355.541661,128.397843 C355.36667,130.012805 354.043234,131.402242 354.043234,132.106578 C354.043234,136.480162 351.395164,145.285284 351.758264,148.439946 C352.121364,151.594609 356.443908,152.530138 358.038779,152.530138 Z" id="path-31"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-32">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M266.519253,82.1828826 C266.981742,82.1828826 278.948992,85.6395454 279.405986,85.6371702 C279.86298,85.6347949 291.33327,94.321181 291.33327,92.7138792 C291.33327,92.1245484 292.882511,89.5342458 291.465767,86.3866194 C290.581004,84.4209118 289.305357,79.4145995 283.713917,76.4415781 C281.518372,75.2741863 278.222386,73.0223353 274.801754,72.9959262 C274.223151,72.9914591 273.098575,72.9588048 272.566388,72.9399307 C272.199358,72.9269139 269.619293,72.6860208 267.80495,72.4146864 C267.602924,72.3844734 267.40457,72.3648304 267.212706,72.358468 C265.297765,72.2949665 266.214775,72.8282781 265.860287,72.7719441 C264.282836,72.5212606 265.860287,72.7719441 263.648645,72.6713286 C263.019409,72.6427024 262.679895,73.2008529 262.272501,73.1294246 C261.865108,73.0579962 260.72429,72.2369763 260.920082,73.5429006 C261.01387,74.1684612 258.207123,74.0420224 257.332296,73.9003811 C256.45747,73.7587398 255.104825,74.7062539 254.627458,74.7273331 C254.527917,74.7273331 252.027038,75.5115649 250.570201,75.9677612 C249.113363,76.4239576 245.759475,78.9734878 245.574,78.9740845 C245.403833,78.974632 239.769409,82.975602 236.878022,86.8086218 C234.857913,89.4866171 236.030968,90.1182459 236.243693,91.0016228 C236.456417,91.8849997 238.531927,92.0215801 238.531927,92.2182984 C238.531927,93.8751527 251.05528,82.1828826 266.519253,82.1828826 Z" id="path-33"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-34">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-35" cx="186.5" cy="171" rx="3.5" ry="3"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-36">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-37" cx="194.5" cy="157.5" rx="4.5" ry="3.5"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-38">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M214.029068,245.20615 C221.070697,245.20615 228.81077,242.702322 235.491871,237.502381 C242.172973,232.302439 262.194188,205.303743 262.194188,204.155922 C262.194188,203.261627 261.452034,203.819216 249.906907,212.759569 C238.36178,221.699922 234.614766,227.847877 230.329683,230.130012 C212.833463,239.448091 214.501427,234.802749 207.965302,234.802749 C185.045485,234.802749 164.003488,214.434981 164.003488,216.091835 C164.003488,217.74869 191.109251,245.20615 214.029068,245.20615 Z" id="path-39"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-40">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-41" cx="311.141063" cy="201.411962" rx="45.9081304" ry="35.7117412"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-42">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-43" cx="256.5" cy="188" rx="51.5" ry="42"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-44">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-45" cx="514" cy="346" rx="9" ry="14"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-46">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <ellipse id="path-47" cx="567" cy="358" rx="9" ry="14"></ellipse>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-48">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M65,15 C65,15 66.3016507,15.2638175 68.3462364,15 C70.3908221,14.7361825 96,11 96,11 L111,173 C111,173 160.151702,166.526661 206.346236,178 C252.540771,189.473339 286.142865,218.596952 285.346236,228 C284.895559,233.319595 281.74093,250.595452 260,257 C238.25907,263.404548 215.405983,255.795799 197.346236,257 C152.658324,259.979734 94.691813,249 93.3462364,249 C92.1459031,249 65.5285698,250.346017 43,249 C20.4714302,247.653983 2.97712652,243.76673 0.346236418,235 C-2.01947917,227.116893 7.96514141,207.158985 23.3462364,195 C38.7273314,182.841015 68.3462364,173 68.3462364,173 L65,15 Z" id="path-49"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-50">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <mask id="mask-51" maskContentUnits="userSpaceOnUse" maskUnits="objectBoundingBox" x="0" y="0" width="285.360107" height="248.597084" fill="white">
            <use xlink:href="#path-49"></use>
        </mask>
        <path d="M133.977924,217.855552 C135.401814,217.855552 134.721916,206.278023 135.090581,197.270072 C135.459247,188.262121 136.19674,191.659829 136.19674,190.286061 C136.19674,187.686455 137.870951,183.854452 140.172413,178.745089 C142.473876,173.635726 148.728375,165.989841 148.193171,164.265192 C147.283972,161.335372 134.756739,176.617676 134.211511,176.617676 C132.543569,176.617676 131.349136,180.211303 130.388299,190.797936 C130.344996,191.27505 128.907415,195.066398 128.915587,195.576128 C128.916826,195.653404 129.535318,198.59254 129.239361,199.424368 C128.943403,200.256196 129.061648,203.743626 129.351552,206.383993 C129.799948,210.467853 133.078295,217.855552 133.977924,217.855552 Z" id="path-52"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-53">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M167.817013,224.534838 C168.726509,224.534838 165.280253,216.824929 163.554801,208.520419 C161.82935,200.215909 162.894451,198.572646 163.027635,195.318433 C163.3963,186.310482 164.133794,189.70819 164.133794,188.334422 C164.133794,185.734816 165.808004,181.902813 168.109467,176.79345 C170.410929,171.684087 176.665429,164.038202 176.130225,162.313553 C175.221025,159.383733 162.693793,174.666037 162.148565,174.666037 C160.480623,174.666037 159.28619,178.259664 158.325353,188.846297 C158.28205,189.323411 156.844469,193.114759 156.852641,193.624489 C156.85388,193.701765 157.472372,196.640901 157.176415,197.472729 C156.880457,198.304557 156.998702,201.791987 157.288606,204.432354 C157.378122,205.247641 156.934786,209.268217 157.584963,210.812407 C157.910449,211.585449 160.084963,215.142534 162.584963,219.472661 C165.084963,223.802788 167.45744,224.534838 167.817013,224.534838 Z" id="path-54"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-55">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M124,371 C125.588549,371 146.313209,367.607609 152.375352,361.75084 C154.224759,359.964088 163.781842,383.834378 175,391 C186.218158,398.165622 199.525375,390.869367 205,391 C215.2879,391.245485 224.958356,370.677043 217,361.75084 C191.768332,333.450649 175.599197,345.914502 162.708556,335.901534 C160.460619,334.155421 163,331.042546 163,328.5 C163,323.885934 162.132067,319.435884 160.521091,315.250896 C159.104712,311.571434 161,295 175,273 C189,251 178.328702,234.564317 175,232 C170.881639,228.827357 151.586166,225.527864 142,243 C132.413834,260.472136 142.573941,282.997148 136.465791,289 C131.34942,294.02817 127.330208,289.219576 124,289 C121.727998,288.850196 117.076991,282.171883 118,273 C118.923009,263.828117 126.373445,244.258781 124,232 C119.834722,210.486448 105.408225,216 104,216 C103.578445,216 89.5065596,220.525389 86,238 C82.4934404,255.474611 89.0105784,288.122485 86,284 C80.1625044,276.006524 77.633873,244.010812 68,238 C51.4646257,227.683171 46.8968632,241.327539 44,243 C39.5600167,245.563358 41.9783061,251.139359 44,261 C46.0216939,270.860641 56.5612628,284.709019 58,296 C58.9327765,303.320281 53.6823035,307.60876 53,311.812445 C52.3176965,316.016129 53,325.116374 53,328.5 C53,347.711743 66.0930364,365.021996 86,366 C88.8772204,366.141354 93.4129564,364.58908 95,364 C104.393422,360.513342 99,345 100,347 C101,349 100.028655,350.981667 101,354 C101.971345,357.018333 102.559516,359.362051 104,361.75084 C107.15968,366.990615 110.813145,366.818362 112,368 C115.996023,371.978457 122.411451,371 124,371 Z" id="path-56"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-57">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M969.002093,590.109239 C969.57116,590.109239 969.493541,589.208378 970.002093,589.109239 C970.510645,589.010099 973.988601,586.860477 976.002093,585.109239 C978.422594,583.004004 982.002093,578.922783 982.002093,574.109239 C982.002093,573.489131 982.856616,573.664462 983.002093,573.109239 C983.147571,572.554016 983.103604,569.452401 983.002093,568.109239 C982.906635,566.846161 982.077839,564.560961 980.963835,562.646952 C980.368566,561.624201 979.691861,560.707435 979.002093,560.109239 C975.757784,557.295633 972.049194,558.109239 969.002093,558.109239 C964.992525,558.109239 960.813298,559.989177 958.002093,563.109239 C956.518284,564.756068 954.908771,566.147169 954.002093,568.109239 C953.283398,569.664509 952.057302,571.528144 952.002093,573.109239 C951.946885,574.690334 953.002093,573.705777 953.002093,574.109239 C953.002093,574.904904 951.996403,576.262733 952.002093,577.109239 C952.007783,577.955744 953.151657,580.614256 954.002093,582.109239 C954.642293,583.234646 957.104837,587.575606 960.002093,589.109239 C961.889297,590.10821 964.311915,590.441529 966.002093,590.109239 C967.692271,589.776949 968.128605,590.109239 969.002093,590.109239 Z M966.002093,584.109239 C969.595074,584.109239 974.47985,580.791449 975.002093,577.109239 C975.524337,573.427028 976.002093,575.771956 976.002093,575.498944 C976.002093,574.691161 975.635301,574.762828 976.002093,573.498944 C976.131936,573.051534 976.747043,572.873259 977.002093,572.109239 C977.257143,571.345218 977.542571,568.607627 977.002093,568.109239 C976.876323,567.993263 977.15736,565.261801 977.002093,565.109239 C976.89439,565.003411 974.800045,564.079896 973.002093,564.109239 C971.204142,564.138581 971.51154,565.154047 971.002093,565.109239 C970.297743,565.047287 969.681734,564.946074 969.002093,565.109239 C968.322452,565.272404 966.547161,566.109239 966.002093,566.109239 C964.054159,566.109239 962.523005,566.223183 961.002093,568.109239 C959.481181,569.995294 958.002093,573.580884 958.002093,575.498944 C958.002093,576.233382 958.850816,578.349953 959.002093,579.109239 C959.15337,579.868524 962.870539,584.109239 966.002093,584.109239 Z" id="path-58"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-59">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M850.002093,504.999238 C850.57116,504.999238 850.493541,504.098378 851.002093,503.999238 C851.510645,503.900098 854.988601,501.750476 857.002093,499.999238 C859.422594,497.894004 863.002093,493.812782 863.002093,488.999238 C863.002093,488.37913 863.856616,488.554461 864.002093,487.999238 C864.147571,487.444015 864.103604,484.3424 864.002093,482.999238 C863.906635,481.736161 863.077839,479.450961 861.963835,477.536952 C861.368566,476.5142 860.691861,475.597435 860.002093,474.999238 C856.757784,472.185632 853.049194,472.999238 850.002093,472.999238 C845.992525,472.999238 841.813298,474.879176 839.002093,477.999238 C837.518284,479.646067 835.908771,481.037169 835.002093,482.999238 C834.283398,484.554509 833.057302,486.418143 833.002093,487.999238 C832.946885,489.580333 834.002093,488.595776 834.002093,488.999238 C834.002093,489.794903 832.996403,491.152733 833.002093,491.999238 C833.007783,492.845743 834.151657,495.504256 835.002093,496.999238 C835.642293,498.124645 838.104837,502.465606 841.002093,503.999238 C842.889297,504.99821 845.311915,505.331528 847.002093,504.999238 C848.692271,504.666948 849.128605,504.999238 850.002093,504.999238 Z M847.002093,498.999238 C850.595074,498.999238 855.47985,495.681449 856.002093,491.999238 C856.524337,488.317027 857.002093,490.661956 857.002093,490.388943 C857.002093,489.581161 856.635301,489.652827 857.002093,488.388943 C857.131936,487.941534 857.747043,487.763259 858.002093,486.999238 C858.257143,486.235217 858.542571,483.497627 858.002093,482.999238 C857.876323,482.883263 858.15736,480.151801 858.002093,479.999238 C857.89439,479.89341 855.800045,478.969895 854.002093,478.999238 C852.204142,479.028581 852.51154,480.044047 852.002093,479.999238 C851.297743,479.937287 850.681734,479.836073 850.002093,479.999238 C849.322452,480.162403 847.547161,480.999238 847.002093,480.999238 C845.054159,480.999238 843.523005,481.113183 842.002093,482.999238 C840.481181,484.885293 839.002093,488.470884 839.002093,490.388943 C839.002093,491.123382 839.850816,493.239952 840.002093,493.999238 C840.15337,494.758524 843.870539,498.999238 847.002093,498.999238 Z" id="path-60"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-61">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M910,695 C911.092314,695 920.399932,698.109214 928,699 C929.839133,699.215561 931.536002,699.415708 933.055012,699.573762 C937.813187,700.068856 940.826198,700.150934 941,699 C941.015041,698.900396 942.079158,698.257103 943,698 C943.920842,697.742897 948.038901,694.920235 951,693 C955.342217,690.184128 966.426518,680.086374 964,679 C963.838017,678.927479 966.095687,675.451331 967,670 C967.904313,664.548669 966.930958,666.530562 967,665 C967.339141,657.481763 965.09535,650.102074 965,649 C964.974387,648.703964 962.73653,643.271121 959,640 C955.26347,636.728879 943.542177,630.352361 943,632 C942.505629,633.50236 951.506709,638.638929 957,645 C962.493291,651.361071 962.114321,656.195213 962,657 C961.201548,662.62085 961.826741,669.559422 961,670 C959.365352,670.871119 955.525381,677.365024 951,682 C946.474619,686.634976 941.445479,689.244035 938,690 C926.700692,692.479155 921.210344,687.12491 919.00227,686 C909.692341,681.257026 909,679.342911 909,677 C909,676.124883 907.987258,674.97565 908,674 C908.012742,673.02435 909.056254,672.638742 909,672 C908.985607,671.836572 907.792543,670.976644 908,669 C908.207457,667.023356 910.451794,660.484858 913,657 C914.925951,654.366121 923.828601,645.724767 932.193504,645 C935.655518,644.700038 944.437224,647.761295 947,652 C948.684376,654.785875 943.556605,661.068387 943,664 C942.730976,665.416934 939.266687,668.328023 935,669 C933.265408,669.273187 930.727369,669.801707 929,669 C927.272631,668.198293 925.037921,665.08549 925,665 C924.981917,664.959233 924.187562,669.632946 927,672 C929.812438,674.367054 933.008488,672.866424 935,673 C940.619812,673.376935 944.780268,667.412587 945,667 C945.230158,666.567838 949.139707,664.894359 951,661 C951.973617,658.961819 952.935382,656.315873 953,654 C953.064618,651.684127 952.275511,650.067129 952,649 C950.499391,643.187737 939.576616,637.937131 935,637 C926.768892,635.314557 916.544387,641.996369 913,645 C908.710046,648.63545 905,651 904,653 C903,655 905.129058,655 905,655 C900.581722,655 897,664.178163 897,675.5 C897,685.553548 902.273682,691.252433 906,693 C909.726318,694.747567 909.505058,695 910,695 Z" id="path-62"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-63">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M954.5,517 C972.820123,517 988.696135,508.435236 993,504 C997.303865,499.564764 995,503.496843 995,503 C995,502.324988 998.468712,496.862657 999,490 C999.531288,483.137343 997.538088,462.744911 993,462 C991.906568,461.820517 983.935478,451.489597 976,448 C974.460225,447.32289 972.291623,446.670962 970,445 C967.708377,443.329038 965.18252,440.57063 962,440 C958.944079,439.45207 947.613329,439.301591 937,442 C931.926571,443.289905 918.36213,446.46959 910,454 C907.43436,456.310454 902.825617,459.152237 901,462 C899.174383,464.847763 897.08498,474.861521 897,475 C896.755366,475.398641 904.855773,463.060097 916,456 C927.144227,448.939903 937.053679,449.424373 942.908362,449.327062 C949.245089,449.221738 954.991714,449.588481 958,451 C967.154235,455.295262 964.091764,454.479877 967,456 C977.964441,461.731067 973.689997,460.635712 975.148591,461.857639 C976.910298,463.333497 977.723933,465.768217 979,467 C980.276067,468.231783 983.105132,469.498774 983,470 C982.329774,473.195357 984.798079,478.951041 985,483 C985.201921,487.048959 983.295773,492.763593 981,496 C979.194665,498.545025 977.29958,500.713796 975.148591,502 C972.997601,503.286204 958.117617,504 954.5,504 C949.655788,504 941.676671,501.423994 937,497.94699 C935.484061,496.819922 929.297159,496.941827 926,494 C922.702841,491.058173 920.348949,493.026927 922,490 C923.370448,487.487511 922.355879,485.408807 926,482 C926.243779,481.771962 928.064156,479.207815 929,479 C929.240631,478.946565 931.193464,477.29477 933,477 C933.965103,476.842525 946.735464,473.388391 954.5,477 C957.790642,478.530614 961.073136,480.488847 962,483 C962.926864,485.511153 961.511781,490.263164 962,490 C962.769126,489.585418 964.896954,486.31393 965,483 C965.103046,479.68607 963.35335,476.9162 960,475 C957.034172,473.305241 953.621047,470.742426 950,470 C946.378953,469.257574 940.237116,470.120548 940,470 C938.916077,469.44894 933.849882,468.014887 929,470 C924.150118,471.985113 916.553313,478.783513 916,479 C913.636359,479.924788 909.715119,484.17387 910,490 C910.177043,493.620736 914.256799,500.535111 918,504 C921.743201,507.464889 923,505.792523 923,506 C923,507.641396 925.644252,506.834765 930,509 C931.952571,509.97062 933.458319,512.41075 937,514 C940.541681,515.58925 948.132621,517 954.5,517 Z" id="path-64"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-65">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M900,614 C908.980435,614 921.959456,611.742462 927,604 C928.699285,601.389835 932.560783,597.049494 933,593.417423 C933.144913,592.219077 934.436657,591.084879 934,589 C933.563343,586.915121 930,579.050733 930,578 C930,577.660134 929.245565,571.227049 926,566 C922.754435,560.772951 918.894708,559.42407 918,559 C917.603343,558.811994 913.699889,554.617416 909,553 C906.970063,552.301419 900.311384,549.852057 893,551 C889.33673,551.575161 885.102704,552.270305 881,554 C876.897296,555.729695 872.952145,558.479758 873,559 C873.013648,559.148369 868.665305,562.287829 866,566 C864.79842,567.67353 860.746912,573.51835 860,579 C859.253088,584.48165 861.638728,592.006648 862,592 C862.085945,591.998418 864.62264,599.647548 865,598 C865.194123,597.152463 863.519088,591.018509 864,585 C864.480912,578.981491 867.040328,573.734621 868,573 C870.642842,570.976926 875.920243,564.442027 881,562 C890.061133,557.643979 894.486087,558.598142 898,559 C909.202233,560.281109 910.394262,563.763895 913,566 C919.751339,571.793637 918.199657,574.539438 918,575 C917.162951,576.930878 921.211732,582.419796 922,587 C922.788268,591.580204 920.359977,595.678745 918,598 C909.173565,606.681611 906.490239,604 900,604 C897.918624,604 883.206035,602.144849 881,600 C880.113607,599.138192 877.459392,594.836256 877,590 C876.940484,589.373448 875.640651,585.724883 877,583 C878.359349,580.275117 882.159775,578.752215 885,578 C888.037369,577.195573 894.347598,579.483071 899,582 C903.652402,584.516929 901.55264,590.893163 901.499414,590 C901.462408,589.379007 906.508138,588.315345 906,585 C905.491862,581.684655 902.254248,579.670807 901.499414,579 C898.338384,576.190851 892.584255,573.446038 889,573 C882.125984,572.144571 875.599454,574.884979 875,575 C870.745697,575.816299 868.203828,584.857189 868,592 C867.945825,593.898469 869.787982,595.212507 870,596 C870.212018,596.787493 870.10898,596.985742 870,598 C869.904377,598.889948 871.016577,599.748143 871,600 C872.34446,600.708902 875,603.886096 875,604 C875,605.234425 877.940554,606.731046 879,608 C880.059446,609.268954 886.070642,614 900,614 Z" id="path-66"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-67">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
        <path d="M761,561 C761.735574,561 761.680551,561.861829 763,563 C764.319449,564.138171 767.688746,566.025067 771,567 C771.573304,567.168798 775.232176,566.857696 776,567 C776.767824,567.142304 793.420965,567.878552 793,566 C792.886899,565.495287 801.954901,563.495478 809,557 C816.045099,550.504522 826.819579,532.085987 824,531 C823.804571,530.924729 825.035164,522.816702 821,514 C819.008555,509.648756 813.103893,499.099614 805,495 C802.510333,493.740522 798.600848,492.320769 796,492 C793.399152,491.679231 786.129228,493.062198 786,493 C785.736079,492.872973 798.525899,495.789805 807,502 C810.187811,504.336168 811,506 813,509 C815,512 815.285302,514.623925 816,517 C817.143119,520.800398 816.042931,523.872289 816,526 C815.957069,528.127711 816.469038,530.465443 816,531 C813.160853,534.235742 807.876842,547.795419 800,552 C786.772994,559.060446 772.71198,556.032753 771.019938,555 C762.594726,549.857597 761,548.73579 761,547 C761,546.393026 760.945397,543.698133 760,541 C759.054603,538.301867 759.050812,533.132433 759,532.5 C758.984184,532.303149 757.517801,526.393287 761,521 C764.482199,515.606713 767.804449,514.86953 771,514 C775.308468,512.827638 784.037381,515.159438 789,520 C790.10515,521.077968 793.570077,529.028778 791,534 C788.429923,538.971222 780.398952,539.844838 781,541 C782.281427,543.462794 793.81938,538.951749 794,538 C794.097445,537.486528 796.121628,537.511785 797,535.479864 C797.878372,533.447944 796.759744,532.304758 797,531 C797.773299,526.800437 797.261097,520.173196 796,517 C793.513872,510.744357 788.00689,507.046663 784,506 C780.516428,505.090036 776.879756,503.871039 773,504 C771.12831,504.062214 768.555933,503.291659 766,504 C763.444067,504.708341 761.573996,505 761,505 C753.268014,505 745,519.916739 745,534 C745,548.083261 753.268014,561 761,561 Z" id="path-68"></path>
        <filter x="-50%" y="-50%" width="200%" height="200%" filterUnits="objectBoundingBox" id="filter-69">
            <feGaussianBlur stdDeviation="1.5" in="SourceAlpha" result="shadowBlurInner1"></feGaussianBlur>
            <feOffset dx="0" dy="1" in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" operator="arithmetic" k2="-1" k3="1" result="shadowInnerInner1"></feComposite>
            <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.5 0" type="matrix" in="shadowInnerInner1"></feColorMatrix>
        </filter>
    </defs>
    <g id="backsplash" stroke="none" fill="">
        <use fill="" fill-rule="evenodd" xlink:href="#path-1"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-2)" xlink:href="#path-1"></use>
    </g>
    <g id="scale-foot3" stroke="none" fill="none" transform="translate(873.504607, 791.000872) rotate(55.000000) translate(-873.504607, -791.000872) ">
        <use fill="#030303" fill-rule="evenodd" xlink:href="#path-3"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-4)" xlink:href="#path-3"></use>
    </g>
    <g id="scale-foot1" stroke="none" fill="none">
        <use fill="#000000" fill-rule="evenodd" xlink:href="#path-5"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-6)" xlink:href="#path-5"></use>
    </g>
    <g id="scale-foot2" stroke="none" fill="none">
        <use fill="#0D0D0D" fill-rule="evenodd" xlink:href="#path-7"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-8)" xlink:href="#path-7"></use>
    </g>
    <g id="scale-base" stroke="none" fill="none">
        <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-9"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-10)" xlink:href="#path-9"></use>
        <use stroke="#070707" mask="url(#mask-11)" stroke-width="12" xlink:href="#path-9"></use>
    </g>
    <g id="scale-top" stroke="none" fill="none">
        <use fill="#000000" fill-rule="evenodd" xlink:href="#path-12"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-13)" xlink:href="#path-12"></use>
    </g>
    <g id="leftLeg" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(397.000000, 522.000000)">
        <g>
            <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-14"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-15)" xlink:href="#path-14"></use>
            <use stroke="#000000" mask="url(#mask-16)" stroke-width="12" xlink:href="#path-14"></use>
        </g>
        <g transform="translate(146.701972, 144.405496) rotate(-22.000000) translate(-146.701972, -144.405496) ">
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-17"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-18)" xlink:href="#path-17"></use>
        </g>
        <g transform="translate(119.605028, 142.153459) rotate(-27.000000) translate(-119.605028, -142.153459) ">
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-19"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-20)" xlink:href="#path-19"></use>
        </g>
    </g>
    <g id="scaleTop" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(643.000000, 645.000000)">
        <g>
            <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-21"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-22)" xlink:href="#path-21"></use>
            <use stroke="#000000" stroke-width="6" xlink:href="#path-21"></use>
        </g>
        <g transform="translate(126.647434, 55.316342) rotate(-21.000000) translate(-126.647434, -55.316342) ">
            <use fill="#A0B8E2" fill-rule="evenodd" xlink:href="#path-23"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-24)" xlink:href="#path-23"></use>
        </g>
    </g>
    <g id="armLeft" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(710.000000, 368.500000) scale(-1, 1) translate(-710.000000, -368.500000) translate(613.000000, 336.000000)" stroke-linecap="square">
        <path d="M193.985034,36.0442492 L98,0 C98,0 92.0000369,25 92,25 C91.9999631,25 179,58 179,58" id="Line" stroke="#000000" stroke-width="5" fill="#FFFFFF"></path>
        <polyline id="Line" stroke="#000000" stroke-width="5" fill="#FFFFFF" points="97 0 0 47 14 65 111 21"></polyline>
    </g>
    <g id="handLeft" stroke="none" fill="none">
        <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-25"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-26)" xlink:href="#path-25"></use>
        <use stroke="#000000" stroke-width="7" xlink:href="#path-25"></use>
    </g>
    <g id="headBody" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(253.000000, 151.000000)">
        <g>
            <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-27"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-28)" xlink:href="#path-27"></use>
            <use stroke="#000000" stroke-width="10" xlink:href="#path-27"></use>
        </g>
        <g transform="translate(272.035686, 360.262294) rotate(-15.000000) translate(-272.035686, -360.262294) ">
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-29"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-30)" xlink:href="#path-29"></use>
        </g>
        <g transform="translate(356.819745, 130.092223) rotate(-22.000000) translate(-356.819745, -130.092223) ">
            <use fill="#030202" fill-rule="evenodd" xlink:href="#path-31"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-32)" xlink:href="#path-31"></use>
        </g>
        <g transform="translate(263.887485, 82.632746) rotate(-28.000000) translate(-263.887485, -82.632746) ">
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-33"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-34)" xlink:href="#path-33"></use>
        </g>
        <g>
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-35"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-36)" xlink:href="#path-35"></use>
        </g>
        <g>
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-37"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-38)" xlink:href="#path-37"></use>
        </g>
        <g transform="translate(213.098838, 224.527411) rotate(35.000000) translate(-213.098838, -224.527411) ">
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-39"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-40)" xlink:href="#path-39"></use>
        </g>
        <g transform="translate(311.141063, 201.411962) rotate(-100.000000) translate(-311.141063, -201.411962) ">
            <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-41"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-42)" xlink:href="#path-41"></use>
            <use stroke="#000000" stroke-width="7" xlink:href="#path-41"></use>
        </g>
        <g transform="translate(256.500000, 188.000000) rotate(-40.000000) translate(-256.500000, -188.000000) ">
            <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-43"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-44)" xlink:href="#path-43"></use>
            <use stroke="#000000" stroke-width="7" xlink:href="#path-43"></use>
        </g>
    </g>
    <g id="eyeRight" stroke="none" fill="none">
        <use fill="#0B0B0B" fill-rule="evenodd" xlink:href="#path-45"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-46)" xlink:href="#path-45"></use>
    </g>
    <g id="eyeLeft" stroke="none" fill="none">
        <use fill="#0B0B0B" fill-rule="evenodd" xlink:href="#path-47"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-48)" xlink:href="#path-47"></use>
    </g>
    <g id="rightLeg" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(316.000000, 505.000000)">
        <g>
            <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-49"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-50)" xlink:href="#path-49"></use>
            <use stroke="#000000" mask="url(#mask-51)" stroke-width="12" xlink:href="#path-49"></use>
        </g>
        <rect fill="#FFFFFF" x="59" y="0" width="42" height="28"></rect>
        <g transform="translate(138.570527, 190.873769) rotate(36.000000) translate(-138.570527, -190.873769) ">
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-52"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-53)" xlink:href="#path-52"></use>
        </g>
        <g transform="translate(166.507581, 193.237592) rotate(45.000000) translate(-166.507581, -193.237592) ">
            <use fill="#000000" fill-rule="evenodd" xlink:href="#path-54"></use>
            <use fill="black" fill-opacity="1" filter="url(#filter-55)" xlink:href="#path-54"></use>
        </g>
    </g>
    <g id="armRight" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(131.000000, 287.000000)" stroke-linecap="square">
        <path d="M171.985034,36.0442492 L76,0 C76,0 70.0000369,25 70,25 C69.9999631,25 157,58 157,58" id="Line" stroke="#000000" stroke-width="5" fill="#FFFFFF"></path>
        <polyline id="Line" stroke="#000000" stroke-width="5" fill="#FFFFFF" points="75 0 0 36 13 57 89 21"></polyline>
    </g>
    <g id="handRight" stroke="none" fill="none">
        <use fill="#FFFFFF" fill-rule="evenodd" xlink:href="#path-56"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-57)" xlink:href="#path-56"></use>
        <use stroke="#000000" stroke-width="7" xlink:href="#path-56"></use>
    </g>
    <circle class= "dotE" stroke="none" fill="" cx="848" cy="688" r="3"></circle>
    <circle class= "dotO" stroke="none" fill="" cx="733" cy="576" r="3"></circle>
    <circle class= "dotE"" stroke="none" fill="" cx="710" cy="625" r="3"></circle>
    <circle class= "dotO" stroke="none" fill="" cx="971" cy="635" r="3"></circle>
    <circle class= "dotE" stroke="none" fill="" cx="912" cy="530" r="3"></circle>
    <circle class= "dotO" stroke="none" fill="" cx="881" cy="489" r="3"></circle>
    <circle class= "dotE"" stroke="none" fill="" cx="761" cy="599" r="3"></circle>
    <circle class= "dotO"" stroke="none" fill="" cx="833" cy="563" r="3"></circle>
    <g id="swirl6" stroke="none" fill="none">
        <use fill="#EB5C2D" fill-rule="evenodd" xlink:href="#path-58"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-59)" xlink:href="#path-58"></use>
    </g>
    <g id="swirl5" stroke="none" fill="none">
        <use fill="#E8DB66" fill-rule="evenodd" xlink:href="#path-60"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-61)" xlink:href="#path-60"></use>
    </g>
    <g id="swirl4" stroke="none" fill="none">
        <use fill="#E8DB66" fill-rule="evenodd" xlink:href="#path-62"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-63)" xlink:href="#path-62"></use>
    </g>
    <g id="swirl3" stroke="none" fill="none">
        <use fill="#297DC5" fill-rule="evenodd" xlink:href="#path-64"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-65)" xlink:href="#path-64"></use>
    </g>
    <g id="swirl2" stroke="none" fill="none">
        <use fill="#474DC4" fill-rule="evenodd" xlink:href="#path-66"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-67)" xlink:href="#path-66"></use>
    </g>
    <g id="swirl1" stroke="none" fill="none">
        <use fill="#EB5C2D" fill-rule="evenodd" xlink:href="#path-68"></use>
        <use fill="black" fill-opacity="1" filter="url(#filter-69)" xlink:href="#path-68"></use>
    </g>
    <path d="M850.512418,668.583415 C850.512418,668.583415 837.132955,646.379127 821.256209,632.083415 C805.379462,617.787703 784.416682,609.019571 785.012418,608.083415 C785.605441,607.151521 807.461579,614.062303 826.012418,627.083415 C844.563256,640.104527 850.512418,668.583415 850.512418,668.583415" id="shadow2" stroke="none" fill="#D8D8D8" fill-rule="evenodd"></path>
    <path d="M807.755463,645.016144 C824.25723,656.875529 845.498085,683.019974 846,682.016144 C846.49961,681.016924 829.795187,655.167831 810,638.016144 C790.204813,620.864456 770,622.016144 770,622.016144 C770,622.016144 791.253695,633.156758 807.755463,645.016144 Z" id="shadow1" stroke="none" fill="#D8D8D8" fill-rule="evenodd"></path>
    <path d="M323.002853,81.8158694 C296.033073,90.1053396 246.567637,118.03248 247.002853,118.815869 C247.44998,119.620698 291.094991,96.5471433 329.002853,87.3158694 C366.910714,78.0845956 380.502853,87.3158694 380.502853,87.3158694 C380.502853,87.3158694 349.972633,73.5263993 323.002853,81.8158694 Z" id="shadow4" stroke="none" fill="#D8D8D8" fill-rule="evenodd"></path>
    <path d="M302,114 C326.78988,103.009476 368.106263,91.709047 369,93 C369.846704,94.2230169 334.595355,104.22985 307,120 C279.404645,135.77015 264.5,154.5 264.5,154.5 C264.5,154.5 277.21012,124.990524 302,114 Z" id="shadow5" stroke="none" fill="#D8D8D8" fill-rule="evenodd"></path>
    <path d="M20.7203395,231.5 C17.525964,250.286539 25.878548,277 27.7830532,277 C29.651999,277 22.6683056,253.330688 25.7203395,231.5 C28.7723734,209.669312 40.7203395,199 40.7203395,199 C40.7203395,199 23.914715,212.713461 20.7203395,231.5 Z" id="shadow3" stroke="none" fill="#D8D8D8" fill-rule="evenodd"></path>
	</svg>
	<a href="/nhom14/home/trangchu">GO HOME!</a>
</div>
</body>
</html>


