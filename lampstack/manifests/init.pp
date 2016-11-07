class lampstack {
package { apache2:
ensure => "installed",
allowcdrom => true,
}
file { "/var/www/html/index.html":
content => template("lampstack/index.html"),
}
service { "apache2":
ensure => "running",
}
}
