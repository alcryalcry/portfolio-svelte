build-image:
	docker build -t thealexcode/mysite .
run:
	docker run -d -p 3000:80 --name mysite thealexcode/mysite
run-dev:
	docker run --rm -d -p 3000:80 -v "/Users/a.shiryakov/Documents/my-dev/thealexcode-svelte/build:/usr/share/nginx/html" --name mysite thealexcode/mysite
stop:
	docker stop mysite
