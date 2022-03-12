#!/bin/sh

# hello guys its mokuken!!

function upmenu {
        options="Upload a File\nRecent Uploads\nCancel"
        selected=$(echo -e $options | dmenu -l 3 )
		if [[ "$selected" == "Upload a File" ]]; then
		
		target="$1"
		[ -z "$target" ] && target="$(realpath .)"
		
		while :; do
		        sel="$(ls -1a "$target" | grep -v '^\.$' | dmenu -l 25 )" || exit
		        if [ "$(echo "$sel" | cut -b1)" = "/" ]; then
		                newt="$sel"
		        else
		                newt="$(realpath "$target/$sel")"
		        fi
		        if [ -e "$newt" ]; then
		                target="$newt"
		                if [ ! -d "$target" ]; then
		                        echo "Location: $target"
								command="curl -s -F'file=@$target' https://0x0.st"
               					echo "Executing: $command"

               					url=$(eval $command)
              					echo "URL: $url"

              					printf "$url" | xclip -sel clip
             					notify-send "File Uploaded" "URL: $url \ncopied to clipboard" -t 5000 -i "$HOME/.program/icon.png"

               					entry="$(date '+%d-%m-%y-%H:%M:%S')    $url    $(echo $target | awk -F'/' '{print $(NF)}')"
             					echo $entry >> $HOME/.0x0_list
             					echo "Uploaded"; break
		                fi
		        fi
		done
		elif [[ "$selected" == "Recent Uploads" ]]; then
                    var=$(tac ~/.0x0_list | dmenu -l 10)
                    filename=$(echo $var | awk '{print $3}')
                    url=$(echo $var | awk '{print $2}')
                    printf "$url" | xclip -sel clip
                    notify-send "$filename" "URL: $url \ncopied to clipboard" -t 5000 -i "$HOME/.program/icon.png"
		elif [[ "$selected" == "Cancel" ]]; then
					return
				fi
}

upmenu
