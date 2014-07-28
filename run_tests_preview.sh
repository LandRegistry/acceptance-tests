#!/bin/bash

export CASEWORK_FRONTEND_DOMAIN="lr-casework-frontend.herokuapp.com"
export SEARCH_FRONTEND_DOMAIN="lr-property.herokuapp.com"
export PROPERTY_FRONTEND_DOMAIN="lr-property-frontend.herokuapp.com"
export MINT_API_DOMAIN="lr-mint.herokuapp.com"
export PUBLICTITLE_API_DOMAIN="lr-public-titles-api.herokuapp.com"
export LR_SEARCH_API_DOMAIN="lr-search-api.herokuapp.com"
export SYSTEM_OF_RECORD_API_DOMAIN="lr-system-of-record.herokuapp.com"
cucumber --tags ~@wip --tags ~@removed
