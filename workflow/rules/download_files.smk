from os.path import join


# Download assembly
rule download_assembly:
    input:
    output:
        "00_ref_sequences/assembly/{name}.fa"
    shell:
        """
            curl
        """
