
build-mvc:
	./gradlew clean :starter-mvc:build

mvc: build-mvc
	./gradlew :starter-mvc:bootrun


build-webflux:
	./gradlew clean :starter-webflux:build

webflux: build-webflux
	./gradlew :starter-webflux:bootrun


build-electron:
	bash -c 'cd ./starter-electron && yarn install'

electron: build-electron
	bash -c 'cd ./starter-electron && yarn start'
