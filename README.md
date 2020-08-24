# headless2static

Are you considering using a headless CMS?

Great, I'm convinced that separating content editing from design is the right
thing to do.

Now, it turns out you'll need a frontend. And maybe we are talking about a
pretty simple website and you'd prefer to use a static site generator (SSG)?

So how do you get your SSG to render the data served by your headless CMS?

Well, it depends on your SSG. If you are lucky it will include a data plugin
for your headless CMS of choice.

However, virtually all SSGs support rendering input from your file system
(Markdown in particular).

And that is where *headless2static* comes into play.

Just call this very simple script to render input files for your SSG from the
REST resource lists of your headless CMS' API.
