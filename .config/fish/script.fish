function run
    # Check if the argument is provided
    if test (count $argv) -eq 0
        echo "Usage: run <filename.cpp>"
        return 1
    end

    # Get the full filename with .cpp extension
    set -l input_file $argv[1]

    # Check if the file has the .cpp extension, add it if missing
    if not string match -q '*.cpp' $input_file
        set input_file $input_file.cpp
    end

    # Check if the file exists
    if not test -f $input_file
        echo "Error: File '$input_file' not found."
        return 1
    end

    # Compile the C++ program without specifying an output file name
    echo "Compiling $input_file..."
    g++ $input_file

    # Check if the compilation succeeded
    if test $status -eq 0
        echo "Compilation successful. Running program..."
        ./a.out
    else
        echo "Compilation failed."
        return 1
    end
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
