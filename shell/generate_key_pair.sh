ssh-keygen -f id_rsa
ssh-keygen -f id_rsa -e -m pem > /usr/app/cindy/private.pem
mv id_rsa.pub /usr/app/cindy/public.pem
