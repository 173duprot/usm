
usm - unix site manager

The simplest static site generator possible.

It can host anything from blogs, too shops,
too link-agragators, to literally any type of
website ever, while being an extensible tool
which follows the unix phliosophy.

This is a basic scripting template for creating
beautiful static webpages with dynamicly updating
content using nothing but unix tools.

All it does is set some varables, and then runs
all scripts in the directory tree, its incredibly
simple.

Dependancies
	
	ssh server	(I use dropbear)
	httpd server	(I use darkhttpd)
	

Install

	# Install on your server
	git --bare https://github.com/173duprot/usm www.git
	
	# Add post-push hooks
	vi ./www.git/hooks/post-receive
	______________________________________________
	 
	   #!/bin/sh
	 
	   TARGET=/location/of/your/www
	 
	   git --work-tree="${TARGET}" checkout -qf
	 
	   cd $TARGET
	   ./ubs
	______________________________________________

	
Usage
	
	# Clone onto your local machene
	git clone user@example.com:~/location/of/www.git
	
	# Use it like a normal git repo
	git add ./; git commit; git push

