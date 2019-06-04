#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'
println(config.foo)
process sayHello {
  input: 
    val x from cheers
  script:
    """
    echo '$x world!'
    """
}