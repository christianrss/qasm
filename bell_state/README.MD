Estado de Bell com OpenQASM: Emaranhamento Não-Local e Teletransporte
 
OpenQASM é uma linguagem de baixo nível para descrever circuitos quânticos (tão legal quanto o assembly para computadores clássicos).

Neste vídeo, demonstro um exemplo simples de um circuito quântico que cria e mede um estado de Bell: um estado quântico maximamente emaranhado, base da computação quântica. Ele pode ser usado em teletransporte quântico (transportando informação sem mover matéria), criptografia e codificação superdensa (protocolo de comunicação quântica). 

Veja o código:

qreg q[2]; // Cria um registrador quântico com 2 qubits
creg c[2];  // Cria um registrador clássico com 2 bits

h q[0]; // Aplica a porta Hadamard no qubit 0
cx q[0], q[1]; // Aplica CNOT, criando um estado de Bell ao emaranhar q[0] e q[1]

measure q[0] -> c[0]; // Mede o qubit 0 e guarda o resultado no bit c[0]
measure q[1] -> c[1]; // Mede o qubit 1 e guarda o resultado no bit c[1]

Resultado {'00':520, '11': 504} 

Após 1024 simulações, os qubits foram medidos como 00 em 520 casos e 11 em 504 casos. Isso demonstra o emaranhamento: sempre que um qubit é medido como 0, o outro também é 0; e o mesmo ocorre para 1.

Essa é uma correlação não-local, onde o estado de um qubit depende instantaneamente do estado do outro, independentemente da distância entre eles.

É exatamente esse fenômeno que permite o teletransporte quântico!

Na documentação da IBM você pode encontrar uma explicação mais detalhada e precisa.

