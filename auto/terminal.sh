
mouseX=84
mouseY=1040

max=2000

findTerminal() {
	if ./mouse cp:$mouseX,$mouseY | grep "38 38 38";then
		echo found
		./mouse -w 1000 rc:$mouseX,$mouseY c:$mouseX,$(($mouseY - 225)) \
			c:$mouseX,$(($mouseY - 225)) c:315,350 \
			t:"echo hello world" kp:enter
	else
		if [ $mouseX -gt $max ];then
			echo not found
			exit 0
		else
			mouseX=$(($mouseX + 10))
			findTerminal
		fi
	fi
}

echo "searching for terminal"
findTerminal
#if grep 38 38 38;then echo found;else echo not found ;fi
