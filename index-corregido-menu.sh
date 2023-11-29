#!/bin/bash

# Función para agregar contenido HTML
add_html_content() {
  echo "<$1 id=\"$2\" class=\"$3\">$4</$1>" >> flexbox_example.html
}

# Función para agregar contenido CSS
add_css_content() {
  echo "  $1: $2;" >> flexbox_example.css
}

# Función para mostrar todas las opciones con valores por defecto numerados
show_default_options() {
  for i in "${!OPTIONS[@]}"; do
    echo "$((i+1)). ${OPTIONS[i]} Valor por defecto: ${DEFAULT_VALUES[i]}"
  done
}

# Función para personalizar la configuración
customize_settings() {
  show_default_options
  echo "Seleccione una opción para cambiar (1-${#OPTIONS[@]}):"
  read -r selected_option

  if [[ "$selected_option" -ge 1 && "$selected_option" -le ${#OPTIONS[@]} ]]; then
    selected_index=$((selected_option-1))
    default_value=${DEFAULT_VALUES[selected_index]}
    echo "Introduce un nuevo valor para la opción (actual: '$default_value'):"
    read -r user_input
    DEFAULT_VALUES[selected_index]=$user_input
  else
    echo "Opción no válida. Por favor, seleccione un número entre 1 y ${#OPTIONS[@]}."
  fi
}

# Función para generar el archivo HTML con CSS personalizado
generate_html() {
  cat <<EOF >flexbox_example.html
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Flexbox Example</title>
  <style id="customStyles">
    /* Estilos generados por el script Bash */
  </style>
</head>
<body>
  <script>
    // JavaScript generado por el script Bash
    document.addEventListener('DOMContentLoaded', function () {
      const container = document.createElement('${CONTAINER_TAG}');
      container.classList.add('${CONTAINER_CLASS}');

      const item1 = document.createElement('${ITEM_TAG}');
      item1.classList.add('${ITEM_CLASS}');
      item1.textContent = '${ITEM_1_CONTENT}';

      const item2 = document.createElement('${ITEM_TAG}');
      item2.classList.add('${ITEM_CLASS}');
      item2.textContent = '${ITEM_2_CONTENT}';

      const centeredBox = document.createElement('${CENTERED_BOX_TAG}');
      centeredBox.classList.add('${CENTERED_BOX_CLASS}');
      centeredBox.textContent = '${CENTERED_CONTENT}';

      container.appendChild(item1);
      container.appendChild(item2);
      container.appendChild(centeredBox);

      document.body.appendChild(container);

      // Aplicar estilos adicionales desde el script
      const customStyles = document.getElementById('customStyles');
      customStyles.innerHTML = \`
        .\${container.classList[0]} {
          display: ${GRID_DISPLAY};
          flex-direction: ${FLEX_DIRECTION};
          flex-wrap: ${FLEX_WRAP};
          justify-content: ${JUSTIFY_CONTENT};
          align-items: ${ALIGN_ITEMS};
          align-content: ${ALIGN_CONTENT};
          height: 300px;
          border: 1px solid black;
        }

        .${ITEM_CLASS} {
          width: ${ITEM_WIDTH};
          height: ${ITEM_HEIGHT};
          margin: ${ITEM_MARGIN};
          background-color: ${ITEM_BG_COLOR};
        }

        .${CENTERED_BOX_CLASS} {
          width: ${CENTERED_BOX_WIDTH};
          height: ${CENTERED_BOX_HEIGHT};
          background-color: ${CENTERED_BOX_BG_COLOR};
          display: flex;
          align-items: center;
          justify-content: center;
        }
      \`;
    });
  </script>
</body>
</html>
EOF
}

# Función para generar el archivo CSS con estilos personalizados
generate_css() {
  cat <<EOF >flexbox_example.css
/* Estilos generados por el script Bash */
.${CENTERED_BOX_CLASS} {
  width: ${CENTERED_BOX_WIDTH};
  height: ${CENTERED_BOX_HEIGHT};
  background-color: ${CENTERED_BOX_BG_COLOR};
  display: flex;
  align-items: center;
  justify-content: center;
}
EOF
}

# Definir opciones y valores por defecto
OPTIONS=(
  "Introduce el tipo de display para el contenedor (por ejemplo, 'flex', 'block', 'inline-flex', etc.):"
  "Introduce la dirección de los elementos flexibles ('row', 'row-reverse', 'column', 'column-reverse'):"
  "Introduce la propiedad flex-wrap ('no-wrap', 'wrap', 'wrap-reverse'):"
  "Introduce la propiedad justify-content ('flex-start', 'flex-end', 'center', 'space-between', 'space-around'):"
  "Introduce la propiedad align-items ('flex-start', 'flex-end', 'center', 'stretch', 'baseline'):"
  "Introduce la propiedad align-content ('flex-start', 'flex-end', 'center', 'space-between', 'space-around', 'stretch'):"
  "Introduce el ancho de los elementos flexibles (por ejemplo, '100px', '50%', etc.):"
  "Introduce la altura de los elementos flexibles (por ejemplo, '100px', '50%', etc.):"
  "Introduce el margen entre los elementos flexibles (por ejemplo, '10px', '1em', etc.):"
  "Introduce el color de fondo de los elementos flexibles (por ejemplo, 'lightgray', '#f0f0f0', 'rgba(200, 200, 200, 0.5)', etc.):"
  "Introduce el ancho del elemento centrado (por ejemplo, '100px', '50%', etc.):"
  "Introduce la altura del elemento centrado (por ejemplo, '100px', '50%', etc.):"
  "Introduce el color de fondo del elemento centrado (por ejemplo, 'lightblue', '#ccc', etc.):"
  "Introduce la etiqueta del contenedor ('div', 'section', 'main', etc.):"
  "Introduce la clase del contenedor:"
  "Introduce la etiqueta de los elementos ('div', 'span', 'p', etc.):"
  "Introduce la clase de los elementos:"
  "Introduce el contenido del primer elemento:"
  "Introduce el contenido del segundo elemento:"
  "Introduce el contenido del elemento centrado:"
)

DEFAULT_VALUES=(
  "flex" "row" "nowrap" "flex-start" "stretch" "flex-start"
  "100px" "100px" "10px" "lightgray"
  "100px" "100px" "lightblue"
  "div" "flex-container"
  "div" "flex-item"
  "1" "2" "Centered"
)

# Variables inicializadas con valores por defecto
GRID_DISPLAY="flex"
FLEX_DIRECTION="row"
FLEX_WRAP="nowrap"
JUSTIFY_CONTENT="flex-start"
ALIGN_ITEMS="stretch"
ALIGN_CONTENT="flex-start"
ITEM_WIDTH="100px"
ITEM_HEIGHT="100px"
ITEM_MARGIN="10px"
ITEM_BG_COLOR="lightgray"
CENTERED_BOX_WIDTH="100px"
CENTERED_BOX_HEIGHT="100px"
CENTERED_BOX_BG_COLOR="lightblue"
CONTAINER_TAG="div"
CONTAINER_CLASS="flex-container"
ITEM_TAG="div"
ITEM_CLASS="flex-item"
CENTERED_BOX_TAG="div"
CENTERED_BOX_CLASS="centered-box"
ITEM_1_CONTENT="1"
ITEM_2_CONTENT="2"
CENTERED_CONTENT="Centered"

# Ejecutar el script principal
customize_settings
generate_css
generate_html
echo "Archivos HTML y CSS generados con éxito. Presiona Enter para continuar o Ctrl+C para salir."
read -r
