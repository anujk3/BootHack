update:
	rm -rf theme
	git rm -rf `find . -maxdepth 1 -type d -not -path '.' -not -path './.git'`
	cp -r /var/www/BootHack/* .
	git add -A
