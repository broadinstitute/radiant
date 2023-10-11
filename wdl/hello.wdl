version 1.0

workflow hello {
    input {
        String out_file_name
    }
    call say_hello {
        input:
            out_file_name = out_file_name
    }
}

task say_hello {
    runtime {
        docker: "gcr.io/broad-gdr-dig-storage/hello:0.0.1"
    }
    input {
        String out_file_name
    }
    command <<<
        python3 /hello.py ~{out_file_name}
    >>>
    output {
        File out_file = out_file_name
    }
}