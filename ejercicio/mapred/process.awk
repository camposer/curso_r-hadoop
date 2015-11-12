BEGIN {
	print "rowId|productId|userId|profileName|helpfulness|score|time|summary|text|";

	lineNumber = 1;
	printf "%s|", lineNumber++; # Printing line number for the first line
}

{ 
	if ($0) {
		split($0, a, ": "); # Removing field name
	        fieldValue = a[2];

		printf "%s|", fieldValue;
	}
}

/review\/text/ { 
	print ""; # ending line with \n
	printf "%s|", lineNumber++; # printing line number at the begining of the new line
}
