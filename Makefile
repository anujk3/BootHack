update:
	git pull origin gh-pages
	git rm -rf .
	cp -r /var/www/BootHack/* .
	git add -A
