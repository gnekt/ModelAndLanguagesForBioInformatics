palindrome([]).
palindrome([_]):-!.
palindrome([X|L]):-reverse1([X|L],[X|L]),!.
