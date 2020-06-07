Simple Flask App
================

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- Rozpocząnając pracę z projektem (wykorzystując virtualenv). Hermetyczne środowisko dla pojedyńczej aplikacji w python-ie:

TravisCl Badge:


.. image:: https://travis-ci.org/InkaTriss/se_hello_printer_app1.svg?branch=master

StatusCake Badge:

.. image:: https://app.statuscake.com/button/index.php?Track=oLyPwstxt2&Days=1&Design=1


  ::

    # ubuntu, add to ~/.bashrc
    $ source /usr/local/bin/virtualenvwrapper.sh

    # jesli wywala blad to wklej to :
    $ export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3



    # tworzymy hermetyczne środowisko dla bibliotek aplikacji:
    $ mkvirtualenv wsb-simple-flask-app

    $ make deps
	# instaluje wszystko poniej od razu za pomoca 		jedenj komendy

    # bez
    $ pip install -r requirements.txt
    $ pip install -r test_requirements.txt

  Sprawdź: `documentację virtualenvwrappera <https://virtualenvwrapper.readthedocs.io/en/latest/command_ref.html>`_ oraz `biblioteki flask <http://flask.pocoo.org>`_.

- Uruchamianie applikacji:

  ::

    # jako zwykły program
    $ python main.py

    # albo:
    $ PYTHONPATH=. FLASK_APP=hello_world flask run

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

  ::

    $ workon wsb-simple-flask-app
    $ PYTHONPATH=. py.test  --verbose -s

- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ::

    $ source /usr/local/bin/virtualenvwrapper.sh # nie trzeba, jeśli już w .bashrc
    $ workon wsb-simple-flask-app

    ...

    # deaktywacja virtualenv
    $ deactivate

- Integracja z TravisCI:

  ::

    ...


Pomocnicze
==========

Ubuntu
------

- Instalacja python virtualenv i virtualenvwrapper:

  ::

    $ sudo pip install virtualenv
    $ sudo pip install virtualenvwrapper

- Instalacja dockera: `dockerce howto <https://docs.docker.com/install/linux/docker-ce/ubuntu/>`_


- https://virtualenvwrapper.readthedocs.io/en/latest/
