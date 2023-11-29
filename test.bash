#!/bin/bash -xv 
#SPDX-FileCopyrightText: 2023 IkemiyagiTaiki
# SPDX-License-Identifier: BSD-3-Clause
### I/O ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]       || ng ${LINENO}
[ "$?{out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
	exit $res
