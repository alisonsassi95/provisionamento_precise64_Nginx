class nginx {

  package { "nginx":   # deve conter o nome do pacote a ser instalado
    ensure  => present,
    require => Class["system-update"],
  }

  service { "nginx":    # nome do serviço 
    ensure  => "running",
    require => Package["nginx"],
  }

}