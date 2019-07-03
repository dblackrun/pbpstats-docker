FROM postgres:10

RUN apt-get update && apt-get install -y wget && apt-get install -y unzip

RUN wget https://pbpstats.s3.amazonaws.com/db_dumps/db_schema.sql && mv db_schema.sql /docker-entrypoint-initdb.d
RUN wget https://pbpstats.s3.amazonaws.com/db_dumps/entity_data.sql.zip && unzip entity_data.sql.zip && mv entity_data.sql /docker-entrypoint-initdb.d
RUN wget https://pbpstats.s3.amazonaws.com/db_dumps/game_data.sql.zip && unzip game_data.sql.zip && mv game_data.sql /docker-entrypoint-initdb.d
RUN wget https://pbpstats.s3.amazonaws.com/db_dumps/game_logs.sql.zip && unzip game_logs.sql.zip && mv game_logs.sql /docker-entrypoint-initdb.d
RUN wget https://pbpstats.s3.amazonaws.com/db_dumps/possession_details.sql.zip && unzip possession_details.sql.zip && mv possession_details.sql /docker-entrypoint-initdb.d
RUN wget https://pbpstats.s3.amazonaws.com/db_dumps/season_totals.sql.zip && unzip season_totals.sql.zip && mv season_totals.sql /docker-entrypoint-initdb.d
RUN wget https://pbpstats.s3.amazonaws.com/db_dumps/starter_state_season_totals.sql.zip && unzip starter_state_season_totals.sql.zip && mv starter_state_season_totals.sql /docker-entrypoint-initdb.d
