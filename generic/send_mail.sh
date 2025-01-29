#!/bin/bash

sendemail 	-f nuovo_account@gmail.com 			\
		-t destinatario@gmail.com			\
		-u "Saluti"					\
		-m "Questo è il corpo del messaggio"		\
		-xp password					\
		-xu nuovo_account@gmail.com			\
		-s smtp.gmail.com:587

