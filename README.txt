
usm - unix site manager
_______________________________________________________________________________

INDEX

[1.0] Description
[2.0] Breakdown
[3.0] 
_______________________________________________________________________________

[1.0] Description

Usm is an exsensable static website "manager" that can host anything from
blogs, to shops, to link-agragators, to literally any type of website ever,
while being an extensible tool which follows the unix phliosophy.

It's a basic scripting template for creating beautiful static webpages with
dynamicly updating content using nothing but unix tools.

_______________________________________________________________________________

[2.0] Breakdown

The basic format for a site is simply a source directory which periodically
has a script run on it. This may sound simple, however, below, I will lay-
-out the insanity of how powerful this is, as well as explaining how to
properly impliment diffrent features.

<Feature>                       <Tools used>                        <Refrence>
_______________________________________________________________________________
Dynamic web directory list      Shell script                        [2.1]
Feeds (atom, rss, news, posts)  Shell script, [feed generators]     [2.2]
User sandboxes on the site      External git repos                  [2.5]