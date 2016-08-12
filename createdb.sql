CREATE TABLE `arquivos` (
  `sha1arquivo` varchar(40) NOT NULL,
  `nome` varchar(128) NOT NULL,
  `tamanho` bigint(8) NOT NULL,
  `datahora` datetime NOT NULL,
  `chunksize` int(11) unsigned NOT NULL,
  `numchunks` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sha1arquivo`)
) ENGINE=InnoDB

CREATE TABLE `partes` (
  `sha1arquivo` varchar(40) NOT NULL,
  `sha1parte` varchar(40) NOT NULL,
  `chunk` int(11) unsigned NOT NULL,
  `onde` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
