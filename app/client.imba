import 'imba/preflight.css'
global css html
	ff:sans
	h1 fs:2rem fw:bold py:1rem
tag app
	css
		min-height:100vh
		$bg1: white
		$bg2: cooler9
		$angle-position: 67%
		bg: $bg2
		pb:10rem
		.bio
			pt:6rem
			d:flex fld:column ta:center
			min-height: 1000px
			bg:white
			bgi: linear-gradient(176deg, $bg1 $angle-position, $bg2 calc($angle-position + 2px))
			img 
				bg:amber1 
				rd:41% size:11rem
				mx:auto
			& > h1
				c:orange5
			p c:cooler9 fw:bold fs:3rem ta:center
	
	<self>
		<header>
		<div.bio>
			<img src="./img/memoji.png">
			<h1> "Hi, I'm Eric Vida!"
			<p[m:0 mb:3rem]> 
				css span d:block
				<span> "I build web-tools "
				<span> "for the languages of"
				<span> "Cambodia"
				<marker-line>
			<div>
				css d:grid gtc:1fr @sm:repeat(2,1fr) g:2rem max-width:800px mx:auto
				<Card>
					<h1 slot="title"> "Cambodia Apps"
					css a
						c:hue7
						bg:hue2 
						p:3 
						rd:5px
						td:none 
						fw:bold
						tween:all transition-duration:.2s
						@hover
							hue:amber
						@active
							bg:hue3 c:hue8
					<a href="https://khmer-typing.ericvida.com" target="_blank"> "Khmer Typing Game"
					<a href="https://carrier-checker.ericvida.com" target="_blank"> "Cambodia Cell Carrier Checker"
					<a href="https://khmer-phonemer.ericvida.com/" target="_blank"> "Khmer Transliterator"
					<a href="https://cham-dictionary.ericvida.com" target="_blank"> "English Cham Dictionary"
					# <a href="https://amazon-clone.ericvida.com" target="_blank"> "Amazon Clone"
				<Card>
					<h1 slot="title"> "Front End Mentor Challenges"
					css a
						c:hue7
						bg:hue2 
						p:3 
						rd:5px
						td:none 
						fw:bold
						tween:all transition-duration:.2s
						@hover
							hue:amber
						@active
							bg:hue3 c:hue8
					<a href="https://femc-four-card.ericvida.com/"> "Four Card Challenge"
					<a href="https://femc-job-listings.ericvida.com"> "Job Listings"
				<Card>
					<h1 slot="title"> "Imba Tools"
					css a
						c:hue7
						bg:hue2 
						p:3 
						rd:5px
						td:none 
						fw:bold
						tween:all transition-duration:.2s
						@hover
							hue:amber
						@active
							bg:hue3 c:hue8
					<a href="https://html2imba.ericvida.com/"> "html2imba"
					<a href="https://css2imba.ericvida.com"> "css2imba"

tag Card
	css hue:cool
		bdt:5px solid amber1
		bg: white
		shadow:xs, xl, xl, xl
		p:2rem pt:.5rem
		rd:sm
		h1 c:cooler9
		.link-wrapper
			d:flex 
			fld:column 
			g:2			
	<self[o@off:0] ease>
		<slot name="title"> "Cambodia Apps"
		<div.link-wrapper>
			<slot>

tag other-apps < Card
	<self>

tag marker-line
	css hue:amber
		pos: relative
		svg
			h:2.4rem 
			y:-42%
	<self>
		<svg width="100%" height="100%" viewBox="0 0 381 63" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" xmlns:serif="http://www.serif.com/">
			<rect[fill:none] x="0" y="0" width="380.394" height="62.03">
			<path[fill:hue5/15] d="M12.472,40.883c89.004,-37.205 204.747,-28.065 354.884,18.479c4.744,1.471 9.79,-1.187 11.261,-5.931c1.471,-4.745 -1.187,-9.791 -5.931,-11.262c-155.302,-48.145 -275.089,-56.379 -367.156,-17.894c-4.583,1.916 -6.748,7.192 -4.832,11.775c1.915,4.583 7.192,6.748 11.774,4.833Z" />

imba.mount <app>