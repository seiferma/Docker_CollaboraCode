variable "COLLABORA_VERSION" {
  # renovate: datasource=docker depName=collabora/code versioning=loose
  default = "25.04.9.4.1"
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
