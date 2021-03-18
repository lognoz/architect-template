# See LICENSE file for copyright and license details.

EMACS?= emacs
BATCH= $(EMACS) -Q --batch $(LOAD)
LOAD= -L .

FILES= $(wildcard __package__*.el)
ELCFILES= $(FILES:.el=.elc)

$(ELCFILES): %.elc: %.el
	@$(BATCH) -f batch-byte-compile $<

all: checkdoc compile test autoload clean

compile: $(ELCFILES)

autoload:
	@for f in $(FILES); do\
		$(BATCH) --eval "(progn\
		(update-file-autoloads \""$${f}\"" t (expand-file-name \"autoload.el\")))";\
	done

checkdoc:
	@for f in $(FILES); do\
		$(BATCH) --eval "(checkdoc-file \""$${f}\"")";\
	done

clean:
	@rm -f *~
	@rm -f \#*\#
	@rm -f *.elc
	@rm -f autoload.el

test:
	@if [ -d "test" ]; then \
		$(BATCH) --eval "(progn\
		(load \"test/__package__-test.el\" nil 'nomessage)\
		(ert-run-tests-batch-and-exit))"; \
	fi

version:
	@$(BATCH) --eval "(progn\
	(require '__package__)\
	(__package__-version))"

.PHONY: all autoload checkdoc clean compile test version
