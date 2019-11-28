ROOT=$HOME/source/repos/
cd $ROOT
echo -e "\n\033[1mPulling in latest changes for all repositories...\033[0m\n"
for d in $(find . -name ".git");
do
	cd $ROOT
	echo "";
	echo -e "\033[33m$d\033[0m";
	cd $d;
	cd ..;
	git pull --rebase --progress "origin";
done

echo -e "\n\033[32mComplete!\033[0m\n"

