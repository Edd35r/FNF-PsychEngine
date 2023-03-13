IntroTextSize = 20
IntroSubTextSize = 20
IntroTagColor = '1f2b42'
IntroTagWidth = 15
Name = 'Blackout'
Author = 'Cval'
FanAuthor = ''
FanAuthorOn = false

function onCreate()
     makeLuaSprite('1', 'timeBar/1', 118.5, 22.5)
     makeLuaSprite('2', 'timeBar/2', 115, 20)
     makeLuaSprite('3', 'timeBar/3', 122, 24.25)
     makeLuaSprite('4', 'timeBar/4', 122, 24.25)
     makeLuaText('songNameTxt', songName, 0, 124, 19.3)
     setTextAlignment('songNameTxt', 'left')
   setTextSize('songNameTxt', 15)

 setObjectCamera('1', 'hud')
 setObjectCamera('2', 'hud')
 setObjectCamera('3', 'hud')
 setObjectCamera('4', 'hud')

 scaleObject('1', 1.185, .045)
 scaleObject('2', 1.21, .065)
 scaleObject('3', 1.165, .035)
 scaleObject('4', 1.165, .035)

 addLuaSprite('2', true)
 addLuaSprite('1', true)
 addLuaSprite('4', true)
 addLuaSprite('3', true)
 addLuaText('songNameTxt', true)
	makeLuaSprite('JukeBoxTag', 'empty', -375-IntroTagWidth, 35)
	makeGraphic('JukeBoxTag', 270+IntroTagWidth, 100, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	makeLuaSprite('JukeBox', 'empty', -375-IntroTagWidth, 35)
	makeGraphic('JukeBox', 270, 100, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	makeLuaText('JukeBoxText', 'Now Playing:', 300, -305-IntroTagWidth, 55)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	addLuaText('JukeBoxText', true)
	
	makeLuaText('JukeBoxSubText', Name, 300, -305-IntroTagWidth, 55)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	addLuaText('JukeBoxSubText', true)
	
	makeLuaText('JukeBoxText2', 'Composer:', 300, -305-IntroTagWidth, 85)
	setTextAlignment('JukeBoxText2', 'left')
	setObjectCamera('JukeBoxText2', 'other')
	setTextSize('JukeBoxText2', IntroTextSize)
	addLuaText('JukeBoxText2', true)
	
	makeLuaText('JukeBoxSubText2', Author, 300, -305-IntroTagWidth, 85)
	setTextAlignment('JukeBoxSubText2', 'left')
	setObjectCamera('JukeBoxSubText2', 'other')
	setTextSize('JukeBoxSubText2', IntroSubTextSize)
	addLuaText('JukeBoxSubText2', true)
	
	makeLuaText('JukeBoxText3', 'Remixed by:', 300, -305-IntroTagWidth, 100)
	setTextAlignment('JukeBoxText3', 'left')
	setObjectCamera('JukeBoxText3', 'other')
	setTextSize('JukeBoxText3', IntroTextSize)
	if FanAuthorOn == true then 
		addLuaText('JukeBoxText3')
	end
	
	makeLuaText('JukeBoxSubText3', FanAuthor, 0, -305-IntroTagWidth, 100)
	setTextAlignment('JukeBoxSubText3', 'left')
	setObjectCamera('JukeBoxSubText3', 'other')
	setTextSize('JukeBoxSubText3', IntroSubTextSize)
	if FanAuthorOn == true then 
		addLuaText('JukeBoxSubText3')
	end
end

function onSongStart()
	doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 10, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 160, 1, 'CircInOut')
	doTweenX('MoveInFive', 'JukeBoxText2', 35, 1, 'CircInOut')
	doTweenX('MoveInSix', 'JukeBoxSubText2', 145, 1, 'CircInOut')
	doTweenX('MoveInSeven', 'JukeBoxText3', 10, 1, 'CircInOut')
	doTweenX('MoveInEight', 'JukeBoxSubText3', 145, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -520, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -520, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFive', 'JukeBoxText2', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutSix', 'JukeBoxSubText2', -450, 1.5, 'CircInOut')
		doTweenX('MoveInSeven', 'JukeBoxText3', -450, 1.5, 'CircInOut')
		doTweenX('MoveInEight', 'JukeBoxSubText3', -450, 1.5, 'CircInOut')
	end
end
function onUpdate()
    setTextString('botplayTxt', "");
     setProperty('timeBarBG.visible', false)
     setProperty('timeBar.visible', false)
     setProperty('timeTxt.visible', false)
     scaleObject('3', 1.168 * getProperty("songPercent"), .035)
end
