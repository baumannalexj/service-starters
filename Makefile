
build-mvc:
	./gradlew clean :starter-mvc:build

start-mvc: build-mvc
	./gradlew :starter-mvc:bootrun


build-mvc:
	./gradlew clean :starter-webflux:build

start-mvc: build-mvc
	./gradlew :starter-webflux:bootrun
