ARG keycloak_version
FROM docker.io/jboss/keycloak:16.1.1
ARG keycloak_version
RUN curl -o "/opt/jboss/keycloak/standalone/deployments/recaptcha-login.jar" "https://s01.oss.sonatype.org/service/local/repositories/releases/content/tr/com/mantis/keycloak/recaptcha-login-provider/$keycloak_version/recaptcha-login-provider-16.1.1-1.jar"
RUN curl -o "/opt/jboss/keycloak/standalone/deployments/keycloak-username-policy.jar" "https://s01.oss.sonatype.org/service/local/repositories/releases/content/tr/com/mantis/keycloak/keycloak-username-policy/$keycloak_version/keycloak-username-policy-16.1.1.jar"

