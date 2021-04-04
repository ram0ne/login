#!/usr/bin/env bash

source files.conf

#cores===================
verm="\e[31;1m"
vrd="\e[32;1m"
azul="\e[34;1m"
lara="\e[33;1m"
fecha="\e[m"
#============================

#variaveis======================
dados="./dados.log"
infos="./infos.log"
PS3="Escolha uma opção: "

#==========================================

#========ROOT========================================================================
(($UID > 0)) && { echo -e "\033[34;1mApenas usuario ROOT pode seguir!!\033[m" ; exit 1 ;}

#=====ARQ/DADOS======================================================================
if [[ -e $dados ]]
then
   echo -e "${azul}Iniciando sistema de login...${fecha}"
	sleep 2s
	clear
else
   echo -e "Criando arquivo de configuração do sistema..."
   >>$dados
	clear
fi
#====================================================================================

#=====Logando=======================================================================
select menu in "Cadastrar" "Fazer login"
do
case $menu in 
"Cadastrar") _cadastro	#FUNCAO CADASTRO
;;
"Fazer login") _logar	#FUNCAO LOGAR
;;
*) echo -e "${verm}Opção invalida!!!${fecha}"
;;
esac
done
