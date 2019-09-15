class arquivos {

# Cria um arquivo index.html no diretório var/www baseado no arquivo local index.txt, que é a página do grupo
file {'/usr/share/nginx/www/index.html':
ensure => file,
	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	source => 'puppet:///modules/arquivos/index.txt',
	require => Class["nginx"];
} 

# Criar diretório para o CSS
file {'/usr/share/nginx/www/css':
ensure => directory,
	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	require => Class["nginx"];
}

# Criar diretório para as imagens
file {'/usr/share/nginx/www/img':
ensure => directory,
	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	require => Class["nginx"];
}

# Criar diretório para as páginas auxiliares
file {'/usr/share/nginx/www/html':
ensure => directory,
	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	require => Class["nginx"];
}

# copiar arquivos css para o novo diretório
	file {'/usr/share/nginx/www/css/bootstrap.css':
	ensure => file,
	require => File['/usr/share/nginx/www/css'],  # para garantir que existe o diretorio preste atenção na sintaxe com F mauisculo e o uso de []
	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	source => 'puppet:///modules/arquivos/bootstrap.css';
	}

	file {'/usr/share/nginx/www/css/bootstrap.min.css':
	ensure => file,
	  require => File['/usr/share/nginx/www/css'],  
	  owner  => 'root',
	  group  => 'root',
	  mode   => '0644',
	  source => 'puppet:///modules/arquivos/bootstrap.min.css';
	}    

	file {'/usr/share/nginx/www/css/custom.css':
	ensure => file,
	  require => File['/usr/share/nginx/www/css'],  
	  owner  => 'root',
	  group  => 'root',
	  mode   => '0644',
	  source => 'puppet:///modules/arquivos/custom.css';
	}

#copiar logo da computação para a VM no diretório img
	file {'/usr/share/nginx/www/img/computacao.png':
	ensure => file,
	  require => File['/usr/share/nginx/www/img'],  
	  owner  => 'root',
	  group  => 'root',
	  mode   => '0644',
	  source => 'puppet:///modules/arquivos/computacao.png';
	}	    	       

#Copiar as páginas auxiliares da homepage para o diretório var/www/html
file {'/usr/share/nginx/www/html/apache.html':
	ensure => file,
	  require => File['/usr/share/nginx/www/html'],  
	  owner  => 'root',
	  group  => 'root',
	  mode   => '0644',
	  source => 'puppet:///modules/arquivos/apache.txt';
	}

file {'/usr/share/nginx/www/html/nginx.html':
	ensure => file,
	  require => File['/usr/share/nginx/www/html'],  
	  owner  => 'root',
	  group  => 'root',
	  mode   => '0644',
	  source => 'puppet:///modules/arquivos/nginx.txt';
	}		    
}

