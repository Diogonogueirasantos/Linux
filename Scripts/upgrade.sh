#!/bin/sh

echo "Bem vindo de volta Diogo!"
echo "1 opcao. Deseja atualizar os programas via sistema dnf e flatpak?"
echo "2 opcao. Deseja apenas atualizar via dnf? "
echo "3 opcao. Deseja apenas atualizar via flatpak? "

op1=1
op2=2
op3=3
 
read opcao

if [ $opcao == $op1 ]; then
    sudo dnf up; flatpak upgrade
elif [ $opcao == $op2 ]; then
    python -c 'import os; os.system("sudo dnf up")'
elif [ $opcao == $op3 ]; then
    python -c 'import os; os.system("flatpak upgrade")' 
else
   echo "Opção inválida"
fi
