FILES_DAY2  = title2.md header.md 12__array_functions.md 13__hash.md 14__hash_functions.md column_03__search_vs_books.md 15__subroutin.md footer.md

FILES_DAY3  = title3.md header.md 16__reference.md 17__regex.md 18__http_get.md 19__http_post.md 20__perl_and_Japanese.md footer.md

usage:
	@echo "Usage:"
	@echo "  make ../2nd/new_slide.md"

../2nd/new_slide.md: $(FILES_DAY2)
	perl concat.pl $(FILES_DAY2) > $@

../3rd/new_slide.md: $(FILES_DAY3)
	perl concat.pl $(FILES_DAY3) > $@
