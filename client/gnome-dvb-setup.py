#!/usr/bin/env python
# -*- coding: utf-8 -*-
import gnomedvb
import gtk
from gnomedvb.wizard.SetupWizard import SetupWizard

gnomedvb.setup_i18n()

w = SetupWizard()
w.show_all()
gtk.main ()
	