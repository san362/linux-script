!/bin/bash

# Add a line at the top of the file
add_line_at_top() {
    local line=$1
    local file=$2
    sed -i "1i $line" $file
}

# Add a line at the bottom of the file
add_line_at_bottom() {
    local line=$1
    local file=$2
    echo $line >> $file
}

# Add a line at a specific line number
add_line_at() {
    local line_number=$1
    local line=$2
    local file=$3
    sed -i "${line_number}i $line" $file
}

# Replace a word in the file
replace_word() {
    local old_word=$1
    local new_word=$2
    local file=$3
    sed -i "s/$old_word/$new_word/g" $file
}

# Delete a word from the file
delete_word() {
    local word=$1
    local file=$2
    sed -i "s/\b$word\b//g" $file
}

# Insert a word at a specific line number
insert_word() {
    local line_number=$1
    local word=$2
    local file=$3
    sed -i "${line_number}s/^/$word /" $file
}

# Delete a line from the file
delete_line() {
    local line_number=$1
    local file=$2
    sed -i "${line_number}d" $file
}

# Delete a line containing a word
delete_line_containing() {
    local word=$1
    local file=$2
    sed -i "/$word/d" $file
}




