FROM digitallyseamless/nodejs-bower-grunt
RUN useradd --user-group --create-home --shell /bin/false app
ENV HOME=/home/app
COPY reveal/package.json $HOME/reveal/
RUN chown -R app:app $HOME/*
USER app
WORKDIR $HOME/reveal
RUN npm install
COPY entrypoint.sh $HOME/entrypoint.sh
ENTRYPOINT ["/bin/sh", "/home/app/entrypoint.sh"]