##############################################################################
#read #send mail 

# install ssmtp on linux, send mail ssmt.

# configuring ssmtp to send email.
# edit this file.

# mailhub=smtp.gmail.com:587
# UseSTARTTLS=YES
# AuthUser=myemail@gmail.com
# AuthPass=XXXXXXXXXXXXXXX
# TLS_CA_File=/etc/pki/tls/certs/ca-bundle.crt

# add these lines in the file.
sudo bash -i
vy /etc/ssmtp/ssmtp.conf&
exit

# Sign in to the Gmail web interface.Open the 'Forwarding and POP/IMAP' 
# tab on your 'Settings' page, and configure IMAP or POP. 
# After enabling this in Gmail, make sure you click 'Save Changes' so 
# Gmail can communicate with your mail client. 

# add tau to the group mail, so tau can send mails.
sudo bash -i
usermod tau -a -G mail
exit

ssmtp ioliveira@id.uff.br
From: "Iury" <ioliveira@id.uff.br>
To: "Iury" <ioliveira@id.uff.br>
Subject: First Email
MIME-Version: 1.0
Content-Type: text/plain

Hello, World!


# mail
sudo bash -i

sendmail -t
From: "Iury" <ioliveira@id.uff.br>
To: "Iury" <ioliveira@id.uff.br>
Subject: First Email
MIME-Version: 1.0
Content-Type: text/plain

Hello, World!

# Press Control-D
exit

echo 'From: "Iury" <ioliveira@id.uff.br>
To: "Iury" <ioliveira@id.uff.br>
Subject: First Email
MIME-Version: 1.0
Content-Type: text/plain

Hello, World!
' >> first_email

sudo bash -i
cat first_email | sendmail -i -t
exit

