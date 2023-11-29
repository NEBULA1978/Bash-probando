# Bash-probando

Descripción General

Este script Bash genera archivos HTML y CSS para un diseño de caja flexible (Flexbox) personalizable. Proporciona opciones interactivas para configurar propiedades como tipo de display, dirección de elementos, envoltura flexible, justificación, alineación y estilos individuales de elementos.
Instrucciones de Uso

    Ejecución del Script:
        El script se ejecuta mediante la terminal con el comando bash nombre_del_script.sh.
        Durante la ejecución, se solicitará al usuario que personalice la configuración.

    Personalización de Configuración:
        Se presentan varias opciones numeradas para configurar propiedades Flexbox y estilos CSS.
        El usuario puede seleccionar una opción ingresando el número correspondiente.
        Se puede escribir "terminar" para finalizar y generar los archivos.

    Generación de Archivos HTML y CSS:
        Después de personalizar la configuración, se generarán automáticamente los archivos HTML y CSS con los estilos especificados.
        Los archivos se nombrarán como flexbox_example.html y flexbox_example.css.

    Contenido del HTML y CSS Generado:
        El HTML contendrá un contenedor con elementos flexibles y un cuadro centrado.
        Los estilos CSS se agregarán dinámicamente según las opciones seleccionadas.

    Visualización del Resultado:
        Al finalizar, se mostrará un mensaje indicando que los archivos se generaron con éxito.
        El usuario puede abrir el archivo HTML en un navegador para visualizar el diseño Flexbox personalizado.

Descripción Detallada
Funciones del Script:

    add_html_content():
        Agrega contenido HTML al archivo flexbox_example.html.

    add_css_content():
        Agrega contenido CSS al archivo flexbox_example.css.

    show_options():
        Muestra las opciones de configuración numeradas con sus valores por defecto.

    customize_settings():
        Permite al usuario personalizar la configuración seleccionando opciones y proporcionando nuevos valores.

    generate_html():
        Genera el contenido del archivo HTML con estilos CSS personalizados.

    generate_css():
        Genera el contenido del archivo CSS con estilos personalizados.

Variables Principales:

    OPTIONS[] y DEFAULT_VALUES[]:
        Almacenan las opciones de configuración y sus valores por defecto.

    Variables con Valores por Defecto:
        Define variables iniciales con valores predeterminados para propiedades y estilos.

Ejecución Principal:

    customize_settings():
        Llama a funciones interactivas para personalizar la configuración.

    generate_css():
        Crea el archivo CSS con estilos generados por el script.

    generate_html():
        Crea el archivo HTML con estilos y contenido generados por el script.

    Mensaje de Éxito:
        Informa al usuario que los archivos HTML y CSS se generaron con éxito.

Instrucciones de Continuación

    Visualización del Resultado:
        Abre el archivo flexbox_example.html en un navegador para ver el diseño Flexbox personalizado.

    Modificación Adicional:
        Para realizar cambios adicionales, ejecuta el script nuevamente y sigue el proceso de personalización.

    Reutilización:
        Puedes reutilizar este script para generar diseños Flexbox personalizados en futuros proyectos.

    Finalización:
        Presiona Enter para continuar después de visualizar el mensaje de éxito o usa Ctrl+C para salir.

¡Disfruta del generador de Flexbox personalizado creado con Bash!
