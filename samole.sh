if echo "abcdefghijk" | grep -q 'fg'; then
		echo "ok"
else
		echo "ng"
fi
