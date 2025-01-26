#!/bin/sh

# Подготавливаем SA
yc iam service-account delete servis
yc iam service-account create --name servis
ID_SA=`yc iam service-account list | grep 'servis' | awk '{print $2}'`
yc resource-manager folder add-access-binding --id b1gfurnb189rkavk8tlr --role editor --service-account-id $ID_SA
yc resource-manager folder add-access-binding --id b1gfurnb189rkavk8tlr --role storage.admin --service-account-id $ID_SA
yc resource-manager folder add-access-binding --id b1gfurnb189rkavk8tlr --role container-registry.admin --service-account-id $ID_SA

# Извлекаем access-key и key в файлы sa-key.json и sa-iam.json
yc iam access-key create --service-account-id $ID_SA --format json > ~/.ssh/sa-key.json
yc iam key create --service-account-id $ID_SA --format json --output ~/.ssh/sa-iam.json
#yc iam access-key create --service-account-id $ID_SA | jq '.' > ~/.ssh/sa-key.json
#yc iam key create --service-account-id $ID_SA | jq '.' > ~/.ssh/sa-iam.json

# Извлекаем access_key и secret_key
ACCESS_KEY_ID=$(grep 'key_id' ~/.ssh/sa-key.json | awk '{print $2}' | tr -d \")
SECRET_ACCESS_KEY=$(grep 'secret' ~/.ssh/sa-key.json | awk '{print $2}' | tr -d \")

# Устанавливаем переменные окружения
export AWS_ACCESS_KEY_ID=$ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$SECRET_ACCESS_KEY
export TF_VAR_access_key=$ACCESS_KEY_ID
export TF_VAR_secret_key=$SECRET_ACCESS_KEY
export TF_VAR_account_id=$ID_SA
