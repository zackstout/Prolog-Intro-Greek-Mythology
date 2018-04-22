# Intro to Prolog
What a strange paradigm shift in thinking about how to write software! I'm excited to explore this new language based on formal logic. To play around with it, I've transcribed a number of links in the ancestry chain of characters from Greek mythology into what Prolog refers to as "facts".

To get started, on Mac you can `brew install gnu-prolog`, and then run `gprolog` to enter the Prolog CLI from the directory where you have a `_____.pl` file living. Use `[____].` with your filename (within the Prolog CLI) to re-load your knowledge-base (set of facts/rules) after making changes. This ensures that your queries are searching through the updated database.

Note that Prolog will yell at you if you don't declare all your facts in order (i.e. don't say `likes(amy, ron)`, and then `hates(al, andy)`, and then try to declare another `likes` fact).

Also, can't put comments in the knowledge-base. Use semicolons to scroll through multiple answers when you get a list of responses to your query.

## Examples
`father(X, hermione), father(Y, X).` returns `Y = atreus`, the grandfather of Hermione.

`isGrandparent(zeus, X).` returns all of Zeus' grandchildren.

`isGrandchild(agamemnon, X), female(X).` returns Agamemnon's grandmother(s).

`isSibling(X, Y).` returns all the pairs of siblings.

`related(zeus, X).` returns all of Zeus' descendants.

## Syntax:
- OR: semicolon (;)
- AND: comma (,)
- IF: colon and hyphen (:-)

## Notes
- isChild is redundant; instead of writing `isChild(zeus, X).`, write `parent(X, zeus).`.
- Note: Using this [video](https://www.youtube.com/watch?v=SykxWpFwMGs) as a rough guide. Minute 38 is where he gets into recursion.
- Note: Use `trace.` to turn on debugging mode.

## Something we learned:
Just as with `git pull` -- where the defaults are filled in for you -- so with `git push`. Wait, this might not be true...

## Next Steps:
- [ ] Integrate with a JavaScript app to make queries, maybe using `prolog-swi`.
- [ ] Understand list (first and rest) syntax and recursion; I think those are the missing ingredients.
