#!/bin/bash  
# SPDX-FileCopyrightText: 2023 IkemiyagiTaiki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(./sqrt 4)
[ "${out}" = 2.0 ] || ng {$LINENO}

[ "$res" = 0 ] && echo OK
exit $res


