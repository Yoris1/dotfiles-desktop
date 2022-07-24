#!/bin/bash
pgrep -x redshift > /dev/null || $(redshift -l 54.68916:25.2798 &)