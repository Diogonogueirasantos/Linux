#!/bin/sh

echo "Bem vindo de volta Diogo!"
echo "1. Deseja atualizar os programas via sistema dnf e flatpak?"
echo "2. Deseja apenas atualizar via dnf? "
echo "3. Deseja apenas atualizar via flatpak? "
echo "4. Deseja instalar algum pacote? "
op1=1
op2=2
op3=3
op4=4 
read opcao

if [ $opcao == $op1 ]; then
    sudo dnf up; flatpak upgrade
elif [ $opcao == $op2 ]; then
      sudo dnf up
elif [ $opcao == $op3 ]; then
      flatpak upgrade 
elif [ $opcao == $op4 ]; then
     echo "Por favor digite o nome do pacote: "
     read pesquisa 
     sudo dnf install $pesquisa
else
   echo "Opção inválida"
fi
