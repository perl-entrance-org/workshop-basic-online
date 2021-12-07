FILES_DAY2  = title.md header.md 12__array_functions.md 13__hash.md 14__hash_functions.md column_03__search_vs_books.md 15__subroutin.md footer.md

usage:
	@echo "Usage:"
	@echo "  make ../2nd/new_slide.md"

../2nd/new_slide.md: $(FILES_DAY2)
	perl concat.pl $(FILES_DAY2) > $@
