PHONY: init
init:
	terraform -chdir=./environments/${ENVIRONMENT} init

PHONY: plan
plan:
	terraform -chdir=./environments/${ENVIRONMENT} plan

PHONY: apply
apply:
	terraform -chdir=./environments/${ENVIRONMENT} apply
