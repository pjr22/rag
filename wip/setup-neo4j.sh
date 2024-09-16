# Install Neo4j
pip install py2neo
pip install langchain
pip install langchain_community
pip install neo4j
pip install langchain_text_splitters
pip install langchain_experimental
pip install json_repair
pip install llama-index-graph-stores-neo4j

wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
echo 'deb https://debian.neo4j.com stable 5' | sudo tee /etc/apt/sources.list.d/neo4j.list
sudo apt-get -y update
sudo apt-get -y install neo4j
sudo mv /var/lib/neo4j/labs/apoc-5.23.0-core.jar /var/lib/neo4j/plugins/
echo dbms.security.procedures.unrestricted=algo.*,apoc.* | sudo tee /etc/neo4j/neo4j.conf
sudo neo4j-admin dbms set-initial-password admin001

sudo service neo4j start
sudo service neo4j status