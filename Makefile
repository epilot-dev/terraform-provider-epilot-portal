# .PHONY: all docs
# all: speakeasy docs

# original.yaml: openapi.yml
# 	curl https://docs.api.epilot.io/customer-portal.yaml > original.yaml

# original_modified.yaml: original.yaml overlay.yaml
# 	speakeasy overlay apply -s original.yaml -o overlay.yaml > original_modified.yaml

# overlay.yaml:
# 	speakeasy overlay compare -s original.yaml -s original_modified.yaml > overlay.yaml

# speakeasy:
# 	$(eval TMP := $(shell mktemp -d))
# 	curl https://docs.api.epilot.io/customer-portal.yaml > $(TMP)/openapi.yaml
# 	speakeasy overlay apply -s $(TMP)/openapi.yaml -o overlay.yaml > $(TMP)/final.yaml
# 	speakeasy generate sdk --lang terraform -o . -s $(TMP)/final.yaml

# docs:
# 	go generate ./...

.PHONY: all docs
all: speakeasy docs

original.yaml:
	cp portal.yaml original.yaml

original_modified.yaml: original.yaml overlay.yaml
	speakeasy overlay apply -s original.yaml -o overlay.yaml > original_modified.yaml

overlay.yaml:
	speakeasy overlay compare -s original.yaml -s original_modified.yaml > overlay.yaml

speakeasy:
	$(eval TMP := $(shell mktemp -d))
# curl https://docs.api.epilot.io/workflows-definition.yaml > $(TMP)/openapi.yaml
	cp portal.yaml $(TMP)/openapi.yaml
	speakeasy overlay apply -s $(TMP)/openapi.yaml -o overlay.yaml > $(TMP)/final.yaml
	speakeasy generate sdk --lang terraform -o . -s $(TMP)/final.yaml

docs:
	go generate ./...

