FILES_DAY1  = title1.md header.md 01__building_perl_learning_environment.md 02__terminal_shell.md 03__editer.md 04__hello_world.md footer.md
FILES_DAY2  = title2.md header.md 05__scalar.md 06__calculation.md 07__string_linkage.md column_01__lets_go_YAPC.md 08__command_line_arguments.md footer.md
FILES_DAY3  = title3.md header.md 09__conditional_branch.md 10__logical_operator.md 11__array.md 12__array_functions.md 13__hash.md 14__hash_functions.md footer.md
FILES_DAY4  = title4.md header.md 15__subroutin.md column_02__search_vs_books.md 16__reference.md 17__regex.md footer.md
FILES_DAY5  = title5.md header.md 18__http_get.md 19__http_post.md 20__perl_and_Japanese.md footer.md

usage:
	@echo "Usage:"
	@echo "  make ../1st/new_slide.md"
	@echo "  or"
	@echo "  make all"

all:
	$(MAKE) ../1st/new_slide.md
	$(MAKE) ../2nd/new_slide.md
	$(MAKE) ../3rd/new_slide.md
	$(MAKE) ../4th/new_slide.md
	$(MAKE) ../5th/new_slide.md

../1st/new_slide.md: $(FILES_DAY1)
	perl concat.pl $(FILES_DAY1) > $@

../2nd/new_slide.md: $(FILES_DAY2)
	perl concat.pl $(FILES_DAY2) > $@

../3rd/new_slide.md: $(FILES_DAY3)
	perl concat.pl $(FILES_DAY3) > $@

../4th/new_slide.md: $(FILES_DAY4)
	perl concat.pl $(FILES_DAY4) > $@

../5th/new_slide.md: $(FILES_DAY5)
	perl concat.pl $(FILES_DAY5) > $@
