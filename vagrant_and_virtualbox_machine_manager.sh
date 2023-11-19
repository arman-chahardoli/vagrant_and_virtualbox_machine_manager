echo
echo RUNNING MACHINES :
vboxmanage list runningvms  | awk '{print $1}' | sed 's/\"//g'
echo
echo
echo -ne "which action on all virtualbox machines?\n\n\t1- savestate\n\t2- poweroff \n\t3- shutdown (force)\n\t4- reset\n\nother to exit\n\n"
read -p "? " get
case $get in
  1)
    act="savestate"
    vagrant suspend $(vagrant global-status --machine-readable | grep machine-id | awk -F, '{print $NF}' | xargs)
    ;;

  2)
    act="poweroff"
    vagrant halt $(vagrant global-status --machine-readable | grep machine-id | awk -F, '{print $NF}' | xargs)
    ;;

  3)
    act="shutdown --force"
    vagrant halt $(vagrant global-status --machine-readable | grep machine-id | awk -F, '{print $NF}' | xargs)
    ;;

  4)
    act="reset"
    vagrant reload $(vagrant global-status --machine-readable | grep machine-id | awk -F, '{print $NF}' | xargs)
    ;;

  *)
    echo wrong input
    exit
    ;;
esac

for vm in $(vboxmanage list runningvms  | awk '{print $1}' | sed 's/\"//g')
do
	vboxmanage controlvm "$vm" $act
done
exit
