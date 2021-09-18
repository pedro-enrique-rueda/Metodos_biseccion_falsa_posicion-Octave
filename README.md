# Metodos_biseccion_falsa_posicion-Octave

El archivo principal el cual debe ejecutar y me llama a los otros 3 archivos es: "metodo_grafico_bi_fals".

El archivo "factor_c" es una función que me almancena la ecuación de interes. para este ejemplo es la ecuación para la caida libre de un paracaidista
cuya raiz a hallar es el factor "c".

El archivo "metodo_biseccion" y "metodo_falsa_posicion" se explican por si solos. Estos métodos me exponen los resultados utilizando una tabla.
como está escrita en Octave, vaya al command window y ejecute la siguiente linea de codigo antes de todo:

npk install https://github.com/apjanke/octave-tablicious/releases/download/v0.3.6/tablicious-0.3.6.tar.gz

esto le instalara un paquete que le va a permitir mostrar los resultados utilizando una tabla muy bonita.

nota: esto es para Octave exclusivamente. Puedes implementar esto en matlab también pero deberas hacer algunos cambios, por ejemplo comente las lineas donde utiliza el metodo "table" y "pretty" que están al final de los .m de falsa posicion y biseccion. y por supuesto no instale el paquete que le sugerí previamente. 
