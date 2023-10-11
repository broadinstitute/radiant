import sys

out_file_name = sys.argv[1]
out_file = open(out_file_name, "a")
out_file.write("Hello, world!")
out_file.close()
