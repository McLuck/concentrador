Para criar containers descartáveis, utilizar argumento -rm

Para criar um container do concentrador:
	docker run --name concentrador -d -p 5445:5445 -p 5000:5000 lucasisrael/concentrador

Note que no comando acima, 2 portas foram mapeadas. 5445 => Porta utilizada pela aplicação e 5000 => Porta utilizada para conexao JMX (conexao via jconsole)



Para adicionar o HOST do concentrador o mapeamento do nome concentrador, utilize o argumento --add-host:
	docker run --name concentrador -d -p 5445:5445 -p 5000:5000 --add-host CONCENTRADOR:192.168.15.12 lucasisrael/concentrador



Para mapear o volume de arquivos de configuracoes no host:
	docker run --name concentrador -d -p 5445:5445 -p 5000:5000 --add-host CONCENTRADOR:192.168.15.12 -v /opt/concentrador/store:/opt/hornetq-2.4.0.Final/config/stand-alone/non-clustered lucasisrael/concentrador

Note que o diretorio "/opt/concentrador/store" do exemplo acima é um diretório que deve estar presente no HOST com os arquivos de configurações do concentrador (hornetq-beans.xml, hornetq-configuration.xml, hornetq-jms.xml, hornetq-users.xml, jndi.properties, logging.properties). 
Caso não adicione os arquivos no diretório mapeado, o Hornetq não irá encontrar suas configurações e o container não será inicializado.