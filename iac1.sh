
#!/bin/bash 


echo: "Criando Diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo:"Criando Grupos de Usuarios..."

groupadd  GRP_ADM

groupadd  GRP_VEN

groupadd  GRP_SEC

echo:"Criando Usuarios..."

useradd  carlos -m -c "Carlos"  -s /bin/bash  -G GRP_ADM 
useradd  maria -m -c "Maria"  -s /bin/bash  -G GRP_ADM 
useradd  joao -m -c "Joao"  -s /bin/bash  -G GRP_ADM
useradd  debora -m -c "Debora"  -s /bin/bash  -G GRP_VEN
useradd  sebastiana -m -c "Sebastiana"  -s /bin/bash  -G GRP_VEN
useradd  roberto -m -c "Roberto"  -s /bin/bash  -G GRP_VEN
useradd  josefina -m -c "Josefina"  -s /bin/bash  -G GRP_SEC
useradd  amanda -m -c "Amanda"  -s /bin/bash -G GRP_SEC
useradd  rogerio -m -c "Rogerio"  -s /bin/bash -G GRP_SEC

 echo: "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm 
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo: "Especifique as senhas para os usuarios !!!"
echo:"Fim"
