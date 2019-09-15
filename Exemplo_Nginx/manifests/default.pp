# este arquivo será o primeiro a ser executado pelo Vagrant

Exec { path => [ "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin" ] }

# instalando pacotes direto sem uso de modulos
package { [
    'vim',
    'links'
  ]:
  require => Class["system-update"], # para garantir que o pacote esteja disponivel e atualizado
  ensure  => 'installed',
}
	

# instalando pacotes a partir  uso dos modulos
include system-update
include nginx
include arquivos

