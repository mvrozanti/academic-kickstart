all:
	hugo
	# find public -type f -exec perl -i -p0e 's/<p class="powered-by">.*?<\/p>//s;s/<copyright>.*?<\/copyright>//s;s/Minha landing page \&middot\;//s;s/<a href="https:\/\/gohugo.io" target="_blank" rel="noopener">Hugo<\/a>\.//s;s/<footer.*?>.*?<\/footer>//s' {} \;

push: all
	read -p "Enter commit message: " cm ; \
	git add . ; \
	git commit -m "$${cm}" ; \
	git push ; \
	cd public ; \
		git add . ; \
		git commit -m "$${cm}" ; \
		git push
