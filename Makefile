PELICANOPTS=
BASEDIR=$(CURDIR)
OUTPUTDIR=/var/www/BootHack/BootHack
VENV=$(HOME)/venv/pelican/bin/activate
THEMES=$(subst bootstrap.,,$(subst .min.css,,$(notdir $(wildcard ./theme/static/css/bootstrap.*.css))))

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif


bootstrap:
	@echo "Building $@"
	@. $(VENV); pelican $(BASEDIR)/content -o $(OUTPUTDIR)/$@ -s bootstrap_conf.py $(PELICANOPTS)

clean:
	@echo "Cleaning..."
	@rm -rf $(OUTPUTDIR)/*

confs/theme-%.py: theme/static/css/bootstrap.%.min.css
	$(eval THEMENAME=$(subst confs/theme-,,$(subst .py,,$@)))
	@cp confs/template.py $@
	@sed 's/#THEME-NAME#/$(THEMENAME)/' $@ -i

%: confs/theme-%.py
	@echo "Building $@"
	@. $(VENV); pelican $(BASEDIR)/content -o $(OUTPUTDIR)/$@ -s confs/theme-$@.py $(PELICANOPTS)

all: clean $(THEMES)

.PHONY: all clean bootstrap
