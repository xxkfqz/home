set fish_greeting

function fish_prompt
        set_color $fish_color_cwd
#        set_color red
        echo -n (prompt_pwd)
        set_color normal
        echo -n " \$ "
#        echo -n " # "
end

function lock
	i3lock -c "#000000" -f
end

function off
        sudo poweroff
end

function reboot
	sudo reboot
end

function s
	sudo -i
end

function trc
	transmission-remote-cli
end

function l
	ls -Alh --group-directories-first --color=always $argv
end

function ll
	elinks $argv
end

function firefox_backup
	set profileDir "$HOME/.mozilla/firefox/"
	set profile (ls $profileDir | grep ".*default\$")
	set archivePreffix "ff_profile_"
	set nowtime (date +%Y_%m_%d)

	7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=32m -ms=on "$HOME/$archivePreffix$nowtime" "$profileDir/$profile"
end
