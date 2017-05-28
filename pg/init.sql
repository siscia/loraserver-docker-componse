CREATE USER loraserver WITH PASSWORD 'loraserver';
CREATE DATABASE loraserver;
GRANT ALL PRIVILEGES ON DATABASE loraserver TO loraserver;

CREATE USER loraappserver WITH PASSWORD 'loraappserver';
CREATE DATABASE loraappserver;
GRANT ALL PRIVILEGES ON DATABASE loraappserver TO loraappserver;
