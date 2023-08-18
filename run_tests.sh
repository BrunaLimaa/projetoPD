source connectivity_tests.conf

perform_tests(){
    for((i=1; i<=$tests;i++)); do
    echo "Teste $i: Connectando $1 a $2..."
    ping "$2" && echo "teste $1, sucesso" || echo "teste $1 falhou"
    #curl -sS
    done
}

perform_tests "cliente" "$server_ip"
perform_tests "cliente2" "$server_ip"
