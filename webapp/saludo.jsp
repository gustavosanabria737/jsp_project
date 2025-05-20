<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página Web</title>
    <link rel="stylesheet" href="estilos.css"> <!-- Opcional: tu archivo de estilos -->
</head>
<body>

    <header>
        <h1>Bienvenido a Mi Página JSP</h1>
        <nav>
            <ul>
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Servicios</a></li>
                <li><a href="#">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section>
            <h2>Sección Principal</h2>
            <p>Este es un párrafo de ejemplo dentro de la sección principal.</p>
            <p>La fecha del sistema es <%= new java.util.Date() %></p>
            
        </section>

        <article>
            <h3>Artículo destacado</h3>
            <p>Contenido del artículo.</p>
        </article>
    </main>

    <footer>
        <p>&copy; 2025 Mi Página Web. Todos los derechos reservados.</p>
    </footer>

  <!--  <script src="script.js"></script>  Opcional: tu archivo de JavaScript -->
</body>
</html>
