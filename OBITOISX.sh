#Copyright (C) 2021 YgoR-SX9W
RED="$(printf '\033[31m')"  
GREEN="$(printf '\033[32m')"  
ORANGE="$(printf '\033[33m')"  
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WHITE="$(printf '\033[37m')" 
BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  
GREENBG="$(printf '\033[42m')"  
ORANGEBG="$(printf '\033[43m')"  
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"  
WHITEBG="$(printf '\033[47m')" 
BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
clear
info() {
clear
	{ clear; echo; }
	cat <<- EOF
 ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}   ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}    ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} 
${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}         ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} 
+${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+  +${CYAN}:${WHITE}+  
+#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#+      +#+         +#+     +#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#++   +#++${CYAN}:${WHITE}+   
+#+    +#+ +#+    +#+     +#+         +#+     +#+    +#+        +#+  +#+  +#+  
#+#    #+# #+#    #+#     #+#         #+#     #+#    #+# #+#    #+# #+#    #+# 
 ########  #########  ###########     ###      ########   ########  ###    ### 
 


		${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄
     
     ${WHITEBG}${CYAN}Copyright (C) 2021 ObitoSx${RESETBG}
     ${CYAN}No momento estou sem team
     
${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄

		${CYAN}[${WHITE}00${CYAN}]${WHITE} Voutar     ${CYAN}[${WHITE}99${CYAN}]${WHITE} Sair

	EOF
	read -p "${CYAN}[${WHITE}-${CYAN}]${CYAN} Selecione uma opção ${WHITE}≫ : ${BLUE}"

	if [[ "$REPLY" == 99 ]]; then
  cd 
  echo "Tchall Tenha um bom dia."
		clear
	elif [[ "$REPLY" == 0 || "$REPLY" == 00 ]]; then
		echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Voltando ao menu principal..."
		{ sleep 1; menu;}
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção inválida, tente novamente..."
		{ sleep 1; info; }
	fi
}
menu() {
clear
	cat <<- EOF
 ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}   ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}    ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} 
${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}         ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} 
+${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+  +${CYAN}:${WHITE}+  
+#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#+      +#+         +#+     +#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#++   +#++${CYAN}:${WHITE}+   
+#+    +#+ +#+    +#+     +#+         +#+     +#+    +#+        +#+  +#+  +#+  
#+#    #+# #+#    #+#     #+#         #+#     #+#    #+# #+#    #+# #+#    #+# 
 ########  #########  ###########     ###      ########   ########  ###    ### 
	

${CYAN}[${WHITE}01${CYAN}]${WHITE} MENU 
${CYAN}[${WHITE}02${CYAN}]${WHITE} Info
${CYAN}[${WHITE}03${CYAN}]${WHITE} Sair
          
	EOF

	read -p "${CYAN}[${WHITE}-${CYAN}]${WHITE} Selecione uma opção ${CYAN}>> ${BLUE}"

	if [[ "$REPLY" == 3 || "$REPLY" == 03 ]]; then
		exit
	elif [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		bash obito.sh
	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		clear 
		info
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção invalida ,Escolha  outra  . . ."
		clear
		menu
	fi
}
menu