git pull origin master;
git submodule update --init

function doIt() {
	rsync   --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE.txt" \
                --exclude "macos.sh" \
		-avh --no-perms -l . ~;
}

if [ "$1" == "--update" -o "$1" == "-u" ]; then
        git submodule update --recursive --remote;
fi;

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
fi;

unset doIt;
