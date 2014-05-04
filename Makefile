update-pygments:
	for i in `pygmentize -L styles | grep "^*" | sed "s/^* \([[:print:]]*\):/\1/" | grep -v "rrt"`; do pygmentize -S $$i -f html -a ".highlight pre" > static/css/pygments/$$i.css; done
	sed "s/\(\.highlight pre\)\(\s*\){/\1, .highlighttable pre {/" static/css/pygments/*.css -i

update-bootswatch:
	@cd /tmp; git clone git@github.com:thomaspark/bootswatch.git
	@for i in `find /tmp/bootswatch -maxdepth 2 -name bootstrap.min.css | grep -v "custom" | cut -d'/' -f4`; do \
		echo Updating $$i; \
		cp /tmp/bootswatch/$$i/bootstrap.min.css ./static/css/bootstrap.$$i.min.css; \
		done
	@rm -rf /tmp/bootswatch

