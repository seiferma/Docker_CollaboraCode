variable "COLLABORA_VERSION" {
  # renovate: datasource=docker depName=keycloak/keycloak
  default = "25.04.8.3.1"
}

group "default" {
  targets = ["default"]
}

target "default" {
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["quay.io/seiferma/collabora-code-idchanges:${COLLABORA_VERSION}", "quay.io/seiferma/collabora-code-idchanges:latest"]
  args = {
    COLLABORA_VERSION = "${COLLABORA_VERSION}"
  }
}
