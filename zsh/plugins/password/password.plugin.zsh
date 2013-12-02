#генератор паролей
function mkpw() { cat /dev/urandom|tr -dc "a-zA-Z0-9\$\A"|fold -w 9|head -n1; }

