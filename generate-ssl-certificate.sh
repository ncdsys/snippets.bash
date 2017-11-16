############################################################################################################################################################
# generate #create #get #certificate #key #ssl.

openssl genrsa -des3 -out arcamens.key 1024
arcamens

openssl req -new -key arcamens.key -out arcamens.csr
arcamens
BR
rio de janeiro
rio das ostras
arcamens
iury
ioliveira@id.uff.br
arcamens
arcamens

openssl x509 -req -days 365 -in arcamens.csr -signkey arcamens.key -out arcamens.crt
arcamens

