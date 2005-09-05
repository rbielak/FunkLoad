"""%(test_name)s FunkLoad test

$Id: $
"""
import unittest
from random import random
from funkload.FunkLoadTestCase import FunkLoadTestCase
from funkload.utils import xmlrpc_get_credential

class %(class_name)s(FunkLoadTestCase):
    """XXX

    This test use a configuration file %(class_name)sTestCase.conf.
    """

    def setUp(self):
        """Setting up test."""
        self.logd("setUp.")
        self.server_url = self.conf_get('main', 'url')
        # XXX here you can setup the credential access like this
        # credential_host = self.conf_get('credential', 'host')
        # credential_port = self.conf_getInt('credential', 'port')
        # self.login, self.password = xmlrpc_get_credential(credential_host,
        #                                                   credential_port)

    def test_%(test_name)s(self):
        # The description should be set in the configuration file
        server_url = self.server_url
        # begin of test ---------------------------------------------
%(scenario)s

        # end of test -----------------------------------------------

    def tearDown(self):
        """Setting up test."""
        self.logd("tearDown.")



if __name__ in ('main', '__main__'):
    unittest.main()