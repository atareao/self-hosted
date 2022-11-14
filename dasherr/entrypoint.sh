#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Copyright (c) 2022 Lorenzo Carbonell <a.k.a. atareao>

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Exit if any command fails
set -o errexit
set -o pipefail
set -o nounset

LOCAL_USER_ID=${LOCAL_USER_ID:-1000}
LOCAL_GROUP_ID=${LOCAL_GROUP_ID:-1000}

if ! grep -q -E "^dockerus:" /etc/group;
then
    echo "=== Create group ==="
    addgroup -g "$LOCAL_GROUP_ID" -S dockerus
fi

if ! grep -q -E "^dockerus:" /etc/passwd;
then
    echo "=== Create user ==="
    adduser -u "$LOCAL_USER_ID" -S dockerus -G dockerus
fi
echo "=== Chown ownership ==="
# comment next line if needs root
chown -R dockerus:dockerus /opt
chown -R dockerus:dockerus /html
chmod o+w /dev/stdout
echo "=== Execute $* ==="
# comment next line if needs root
#set -- su-exec dockerus "$@"
exec "$@"
