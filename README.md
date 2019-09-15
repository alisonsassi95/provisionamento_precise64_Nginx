# provisionamento_precise64_Nginx
Exemplo de um provisionamento utilizando precise64 com Nginx como servidor.

# Requisitos:
Ter o sistema operacional Linux;

O vagrant, que é um programa de provisionamento, o puppet é uma linguagem, o Virtual Box para armazenar e executar o provisionamento e o Sublime Text é um editor de texto.

Instalando o VAGRANT:
1. sudo apt-get update
2. sudo apt install vagrant.
3. vagrant version

Instalando o PUPPET:
1.sudo apt-get update
2.sudo apt-get install puppet
3.Puppet --version

Use o Instalador do Ubuntu para instalar o “programa VirtualBox” e “Sublime Text”.

disponibilizamos um exemplo de todo o projeto nesse link: https://github.com/alisonsassi95/provisionamento_precise64_Nginx
Agora basta você fazer o download e seguir os seguintes passos:

# Para subir o provisionamento da máquina, você deve:

1- Você deve estar na pasta do arquivo “vagrant”.

2- Executar no terminal o comando: “vagrant up”

3- Vai começar a executar e então vai perguntar: “NginX: Which interface should the network bridge to?” . Você deve verificar nas 2 linha acima, em qual rede está para fazer o compartilhamento de IP entre a máquina virtual e a sua e então digite o número equivalente e dê um enter.

4- Você saberá se ocorreu tudo certo quando ver na ultima mensagem o seguinte:
“NginX: notice: Finished catalog run in 120.16 seconds”

5- Então digite no terminal: “vagrant ssh”

6- Você estará dentro da máquina virtual criada.

7- Digite o comando: “ifconfig”

8-Verifique o IP da máquina virtual e acesse de qualquer máquina da rede, colocando o IP em um navegador.

9- Para sair da máquina digite “exit”


Pronto seu servidor está pronto para ser utilizado.
