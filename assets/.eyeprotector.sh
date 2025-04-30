#!/bin/bash

cat ~/.EYE_PROTECTOR_ASSET.txt
echo "EYE IS SO EXPENSIVE GIFT FROM ALLAH(SWT),TAKE CARE OF THEM WELL."
espeak "EYE IS SO EXPENSIVE GIFT FROM ALLAAH subhaanawatawala,TAKE CARE OF THEM WELL."
while true; do
    read -p "Do you want to start? (y/n): " start
    noAttention="n"
    if [[ "$start" == "y" ]]; then
        echo "Now do your works while keeping this terminal open,you can minimize btw"
        sleep 1200
        while true; do
	   if [[ "$noAttention" == "y" ]];then
	     notify-send 'HEY!!' '**LOOK AT THE TERMINAL!!!' -i dialog-error
	     espeak "Look at the terminal!"
	   else
	     notify-send 'HEY!' 'LOOK AT THE TERMINAL!!' -i dialog-warning
	     espeak "Hey bro! look at the terminal."
	   fi 
            read -t 60 -p "Did you pay attention to the notification? (y/n): " attention
            if [[ "$attention" == "y" ]]; then
		noAttention="n"
                echo "Great! Now look at something 20 feet away for atleast 20 seconds"
                sleep 20
		echo "perfect! now you can start again and work on screen for long time without harming your eyes!"
	        espeak "perfect! now you can start again and work on screen for long time without harming your eyes!"
                break
            else
		noAttention="y"
                echo "No response.... PLEASE PAY ATTENTION!"
            fi
        done
    else
        echo "Okay. Have a great day!"
        exit 0
    fi
done
