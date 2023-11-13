awk '
{
    if (NR==FNR) {
        a[FNR]=$0;  # Guarda las líneas del primer archivo
        next;
    } 
    else {
        print a[FNR];  # Imprime la línea del primer archivo
        print $0;       # Imprime la línea del segundo archivo
    }
}' file1.txt file2.txt > output.txt

