update-pygments:
	for i in `pygmentize -L styles | grep "^*" | sed "s/^* \([[:print:]]*\):/\1/" | grep -v "rrt"`; do pygmentize -S $$i -f html -a ".highlight pre" > static/css/pygments/$$i.css; done
	sed "s/\(\.highlight pre\)\(\s*\){/\1, .highlighttable pre {/" static/css/pygments/*.css -i

