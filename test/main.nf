#!/usr/bin/env nextflow
echo true

process sayHello {
  input: 
    val x from config.foo
    val y from config.bar
  script:
    """
    echo '$x $y'
    """
}