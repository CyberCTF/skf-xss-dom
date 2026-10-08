#!/bin/sh
# The page script writes the input field into the DOM with html().
set -e
H=http://web:5000
P=$(curl -fsS "$H/")
echo "$P" | grep -q 'id="input"'
echo "$P" | grep -q "html(value)"
