#!/bin/bash
[[ $(screen -list| grep -c 'bot_teste') == '0' ]] && {
    clear
    echo -e "\E[44;1;37m     ATIVACÃO BOT GERADOR     \E[0m"
    echo ""
    echo -e "\033[0;35m╔─━━━━━━━━━━━━━━━━━━━━━━━VIP━━━━━━━━━━━━━━━━━━━━━━━━━─╗\033[0m"
echo -e "\E[42;1;37m DICA: PEGUE O TOKEN DO SEU BOT TELEGRAM ATRAVÉS DO @BOTFATHER \E[0m"
echo -e "\033[0;35m╚━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╝\033[0m"
    echo ""
    echo -ne "\n\033[1;32mINFORME O TOKEN ⚠️\033[1;37m: "
    read token
    clear
    echo ""
    echo -e "\033[1;32mINICIANDO BOT TESTE \033[0m\n"
    cd $HOME/BOT
    rm -rf $HOME/BOT/botssh
    wget https://raw.githubusercontent.com/brendelvalim/scriptvps/main/ScripVpsGringa/Sistema/botssh >/dev/null 2>&1
    chmod 777 botssh
    echo ""
    sleep 1
    screen -dmS bot_teste ./botssh $token > /dev/null 2>&1
    clear
    echo "BOT ATIVADO"
    menu
} || {
    screen -r -S "bot_teste" -X quit
    clear
    echo "BOT DESATIVADO"
    menu
}
