#!/usr/bin/env bash

source files.conf

#cores===================
verm="\e[31;1m"
vrd="\e[32;1m"
azul="\e[34;1m"
lara="\e[33;1m"
fecha="\e[m"
#==============================

#variaveis======================
dados="./dados.log"
infos="./infos.log"
PS3="Escolha uma opção: "
tenta="1"

#========Parametro 0================================================================

[[ $# -eq 0 ]] && { echo -e "${verm}Use -c para cadastrar, -l para logar $fecha" ; exit 1 ;}

#========ROOT========================================================================
(($UID > 0)) && { echo -e "\033[34;1mApenas usuario ROOT pode seguir!!\033[m" ; exit 1 ;}

#=====ARQ/DADOS======================================================================
if [[ -e $dados ]]
then
   echo -e "${azul}Arquivo de configurações carregado..${fecha}"
	sleep 2s
	clear
else
   echo -e "Criando arquivo de configuração do sistema..."
   >>$dados
	clear
fi
#====================================================================================

case $1 in
-c) _cadastro 	#CADASTRO 
 ;;
-l) _logar		#Login
;;
esac


