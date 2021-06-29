#!/bin/sh
LEAKEDPASS=""
tput sc;
echo -n "Senha: "
read -s SENHA;
tput rc;tput el;
echo "";
SHA1=$(echo -n ${SENHA} | openssl sha1);
SHA1CUT=$(echo -n ${SHA1} | cut -d ' ' -f2);
FIRST5=$(echo -n ${SHA1^^} | cut -d ' ' -f2 | cut -c-5);
LAST=$(echo ${SHA1^^} | cut -d ' ' -f2 | cut -c6-);
LEAKEDPASS=$(curl --silent https://api.pwnedpasswords.com/range/${FIRST5} | grep ${LAST});
if [[ -z ${LEAKEDPASS} ]]
then
	printf "\e[32m\e[5mOk : ${SHA1CUT}";
else
	printf "\e[31m\e[5mVazada : ${LEAKEDPASS}";
fi
