# Random colors
rd="%B%F{$((RANDOM % 100))}"

# Functions
simple(){
	simple_git() {
    	if git rev-parse --git-dir > /dev/null 2>&1; then
    		echo "%B${rd} %fMaster%f"
    	fi
		}
		PS1="%B${rd}%(4~|%-1~/.../%2~|%~)%f > %f"
		RPS1='$(simple_git)'
}

fresk(){
	git_item(){
		if git status -s > /dev/null 2>&1; then
			echo -ne "%B%F{#06d6a0}[%F{#ef476f}`git status -s | wc -l` %fitems to add%F{#06d6a0}]%f"
		fi
	}

    fresk_git() {
    	if git rev-parse --git-dir > /dev/null 2>&1; then
    		echo "%B%F{#f77f00}%f %~ $(git_item) 
%F{#669bbc} %F{#9b5de5}Master %F{#f72585}> %f"
    	else
    		echo -ne "%B%F{#f77f00} %F{#669bbc} %(4~|%-1~/.../%2~|%~) %F{#9b5de5}<%F{#ff006e}in %f%n %F{#0a9396}> %f"
    	fi
			}
PS1='$(fresk_git)'
}

nutel(){
	git_nutel(){
    	if git rev-parse --git-dir > /dev/null 2>&1; then
    		echo -ne "%B%F{#7ebc89} %F{#9381ff}Master %F{#ff206e}in %F{#1dd3b0}%~%f> "
    	else
    		echo "%B%F{#a2d2ff}  %F{#e5b4e2}%n %F{#83c5be}in %F{#1dd3b0}%(4~|%-1~/.../%2~|%~)%f > "
    	fi		
	}

	git_nutel_rps1(){
		if git status -s > /dev/null 2>&1; then
			#itens=$(echo -ne "")
			echo -ne `git status -s | sed 's/.*\///g;s/^ //g'`
		else
			echo -ne "%B%F{#a2d2ff}%T %f| %F{#83c5be}%D"
		fi
	}

	PS1='$(git_nutel)'
	RPS1='%B%F{#ff206e}$(git_nutel_rps1)'
}

tecnoretro(){
	tecnoretro_git(){
    	if git rev-parse --git-dir > /dev/null 2>&1; then
    		echo -ne "%F{#ff206e}  %f Master"
    	fi		
	}

prompt(){
	echo -ne "%(4~|%-1~/.../%1~|%~)${rd} %f "
}

	PS1='$(prompt)'
	RPS1='$(tecnoretro_git)'
}

clean(){
	PS1='%B%F{100}%(4~|%-1~/.../%2~|%~)%f > '
}