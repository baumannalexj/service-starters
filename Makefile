
build-mvc:
	./gradlew clean build application:starter-mvc

start-mvc: build-mvc
	./gradlew bootrun application:starter-mvc



build-webflux:
	./gradlew clean build application:starter-webflux

start-webflux: build-webflux
	./gradlew bootrun application:starter-webflux