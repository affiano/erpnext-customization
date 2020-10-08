#!/usr/bin/make
#
#
# (c) 2020 by Klaus Kappel


push:
	git status
	git branch
	git push -u origin master
	git fetch --unshallow 


pull:
	git pull


beta:
	bench switch-to-branch version-13-beta frappe erpnext --upgrade
	bench update --patch

