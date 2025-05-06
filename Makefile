# --- API ---
build-api:
	docker-compose -f api/docker-compose.yaml build

start-api:
	docker-compose -f api/docker-compose.yaml up -d

stop-api:
	docker-compose -f api/docker-compose.yaml stop

# --- Bot ---
build-bot:
	docker-compose -f bot/docker-compose.yaml build

start-bot:
	docker-compose -f bot/docker-compose.yaml up -d

stop-bot:
	docker-compose -f bot/docker-compose.yaml stop

# --- Frontend ---
build-frontend:
	docker-compose -f frontend/docker-compose.yaml build

start-frontend:
	docker-compose -f frontend/docker-compose.yaml up -d

stop-frontend:
	docker-compose -f frontend/docker-compose.yaml stop

# --- All ---
build-all: build-api build-bot build-frontend

start-all: start-api start-bot start-frontend

stop-all: stop-api stop-bot stop-frontend
