# Intro to Prolog
What a strange paradigm shift in thinking about how to write software! I'm excited to explore this new language based on formal logic. To play around with it, I've transcribed a number of links in the ancestry chain of characters from Greek mythology into what Prolog refers to as "facts".

To get started, on Mac you can `brew install gnu-prolog`, and then run `gprolog` to enter the Prolog CLI from the directory where you have a `_____.pl` file living. Use `[____].` with your filename (within the Prolog CLI) to re-load your knowledge-base (set of facts/rules) after making changes. This ensures that your queries are searching through the updated database.

Note that Prolog will yell at you if you don't declare all your facts in order (i.e. don't say `likes(amy, ron)`, and then `hates(al, andy)`, and then try to declare another `likes` fact).

Also, can't put comments in the knowledge-base. Use semicolons to scroll through multiple answers when you get a list of responses to your query.

## Examples
`father(X, hermione), father(Y, X).` returns `Y = atreus`, the grandfather of Hermione.

`get_grandchild.` returns the grandchildren of Zeus, because of the rule we've added to our knowledge-base.

## Notes
- Note: it would probably be better to collapse father/mother into parent and give each member a gender (for brothers, uncles, etc.)
- Note: Using this [video](https://www.youtube.com/watch?v=SykxWpFwMGs) as a rough guide. Minute 38 is where he gets into recursion.
- Note: Use `trace.` to turn on debugging mode.
'''
