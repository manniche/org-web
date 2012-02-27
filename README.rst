Quick getting started guide
===========================

#. place ``org-web-init`` somewhere on ``$PATH``
#. place the rest of the files anywhere you like, org-web-init expects
 a default location ``~/local/org-web`` but this can be overridden by
 setting the environment variable ``ORG_WEB_HOME``
#. go to the folder where you would like to keep your site source
#. issue the command ``org-web-init``
#. edit the ``DEST_HOST`` variable in ``orgweb.conf``
#. run ``./orgweb <command>``

Where ``<command>`` is one of ``html``, ``upload`` or
``clean_output``. ``html`` generates html from all org-files in the
project. ``upload`` uploads the html and accompanying files to the
``DEST_HOST`` and ``clean_output``... cleans the ``output`` folder.
