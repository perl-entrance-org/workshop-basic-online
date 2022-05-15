FILES_DAY1  = title1.md header.md 01__building_perl_learning_environment.md 02__terminal_shell.md 03__editer.md 04__hello_world.md 05__scalar.md footer.md
FILES_DAY2  = title2.md header.md 12__array_functions.md 13__hash.md 14__hash_functions.md column_03__search_vs_books.md 15__subroutin.md footer.md

usage:
	@echo "Usage:"
	@echo "  make ../2nd/new_slide.md"

../1st/new_slide.md: $(FILES_DAY1)
	perl concat.pl $(FILES_DAY1) > $@

../2nd/new_slide.md: $(FILES_DAY2)
	perl concat.pl $(FILES_DAY2) > $@
