# duply-b2

Ubuntu LTS, Backblaze and Duplicity isn't a good fit. 

This docker container wraps duply, and contains newer version of Duplicity that works with Backblaze.

## Tags

* `latest` ([Dockerfile](https://github.com/aheimsbakk/duply-b2/blob/master/Dockerfile))

## Using duply-b2

Use the docker container the same way you would use duply. 

Example:

    docker run -u $UID -t -v $HOME:/data --rm duply-b2 usage

### Caveats:

Remember to enable GPG option in duply configuration.

    GPG_OPTS='--pinentry-mode loopback'

###### vim: set syn=markdown spell spl=en:

