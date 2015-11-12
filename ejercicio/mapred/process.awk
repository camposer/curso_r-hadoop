BEGIN {
	print "rowId|productId|userId|profileName|helpfulness|score|time|summary|text|";

	rowId = 1;
	printf "%s|", rowId++; # Printing line number for the first line
}

{ 
	if ($0) {
		fieldValue = $0;

		sub(/^[a-zA-Z]+\/[a-zA-Z]+: /, "", fieldValue); # removing field labels
		sub(/\|/, "\"", fieldValue);
	
		printf "%s|", fieldValue;
	}
}

/review\/text/ { 
	print ""; # ending line with \n
	printf "%s|", rowId++; # printing line number at the begining of the new line
}
