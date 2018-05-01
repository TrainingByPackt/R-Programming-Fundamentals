#char to numeric, integer
var <- "5"

var_num <- as.numeric(var)
class(var_num)
typeof(var_num)

var_int <- as.integer(var)
class(var_int)
typeof(var_int)

#numeric to char
var_char <- as.character(var_num)
class(var_char)
typeof(var_char)

#int to char
var_char2 <- as.character(var_int)
class(var_char2)
typeof(var_char2)

#char to date
date <- "18-03-29"

Date <- as.Date(date)
class(Date)
typeof(Date)

#this won't work:
date2 <- as.Date("03-29-18")