#!/bin/bash

echo "Checking $1"
phpcs --standard=./vendor/magento-ecg/coding-standard/Ecg $1
phpmd $1 text ./phpmd/ruleset.xml
phpcpd $1
