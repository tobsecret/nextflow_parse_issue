#!/usr/bin/env nextflow
echo true

process sayHello {
  input: 
    val x from config.foo
  script:
    """
    echo '$x'
    """
}