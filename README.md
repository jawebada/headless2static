{% raw %}

# headless2static

## Synopsis

`headless2static` renders collections of REST resources to static files using a
[Liquid](https://shopify.github.io/liquid/) template.

## Introduction

Are you considering using a [headless content management system
(CMS)](https://en.wikipedia.org/wiki/Headless_content_management_system)?

Great, I am convinced that separating content editing from design is usually
the right thing to do.

Now, it turns out you will need a frontend. And maybe we are talking about a
pretty simple website and you would prefer to use a [static site generator
(SSG)](https://www.staticgen.com/)?

So how do you get your SSG to render the data served by your headless CMS?
Well, it depends on your SSG. If you are lucky, it includes a data plugin for
your headless CMS of choice. However, *virtually all SSGs* support rendering
input from your file system (Markdown in particular).

And that is where *headless2static* comes into play. It is the very simple
common denominator of headless CMSs and SSGs. Just call it to render input
files for your SSG from the REST resource lists of your headless CMS' API.

## Example

Imagine there is an endpoint of your headless CMS' API at
`https://example.com/api/items/pages` which returns something like this:

```javascript
{
  "data": [
    {
      "id": 1,
      "status": "published",
      "sort": 1,
      "owner": 1,
      "created_on": "2020-08-21T15:01:01+00:00",
      "title": "A Test",
      "content": "<p>Looks good.</p>\n<h2>A Header</h2>\n<ul>\n<li>List Item 1</li>\n<li>List Item 2</li>\n</ul>\n<p>&nbsp;</p>",
      "navigation_title": "Test"
    },
    {
      "id": 2,
      "status": "published",
      "sort": 2,
      "owner": 1,
      "created_on": "2020-08-21T15:05:59+00:00",
      "title": "Another Page",
      "content": "<p>It works!</p>",
      "navigation_title": null
    }
  ]
}
```

Create a [Liquid](https://shopify.github.io/liquid/) template called `{{title | slugify}}.html`:

```liquid
---
layout: page
title: {{title}}
navigation_title: {{navigation_title}}
---
{{content}}
```

Calling

```shell
headless2static '{{title | slugify}}.html' https://example.com/api/items/pages
```

will render two files:

`a-test.html`:

```html
---
layout: page
title: A Test
navigation_title: Test
---
<p>Looks good.</p>
<h2>A Header</h2>
<ul>
<li>List Item 1</li>
<li>List Item 2</li>
</ul>
<p>&nbsp;</p>
```

and `another-page.html`:

```html
---
layout: page
title: Another Page
navigation_title: 
---
<p>It works!</p>
```

{% endraw %}
