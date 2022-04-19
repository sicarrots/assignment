build:
	docker build -t cisco .

run:
	docker run -p 8000:8000 cisco

