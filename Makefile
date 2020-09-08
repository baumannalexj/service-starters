
build-mvc:
	./gradlew clean :starter-mvc:build

start-mvc: build-mvc
	./gradlew :starter-mvc:bootrun


build-webflux:
	./gradlew clean :starter-webflux:build

start-webflux: build-webflux
	./gradlew :starter-webflux:bootrun


build-electron:
	bash -c 'cd ./starter-electron && yarn install'

start-electron: build-electron
	bash -c 'cd ./starter-electron && yarn start'
