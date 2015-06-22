#!/usr/bin/perl

use strict;
use warnings;


print "hello\n";

use WWW::Curl::Easy;

my $curl = WWW::Curl::Easy->new;


$curl->setopt(CURLOPT_URL, "http://www.startpage.com");
my $retcode = $curl->perform;
if ($retcode == 0) {
  print("Transfer went ok\n");
  my $response_code = $curl->getinfo(CURLINFO_HTTP_CODE);
  # judge result and next action based on $response_code
  # print("Received response: $response_body\n");
} else {
  # Error code, type of error, error message
  print("An error happened: $retcode ".$curl->strerror($retcode)." ".$curl->errbuf."\n");

}


