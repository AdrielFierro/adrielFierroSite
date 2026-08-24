---
title: 'Tema Zahit: cómo escribir y organizar contenido'
description: 'Descubre cómo crear publicaciones bilingües, usar colecciones de contenido y aprovechar el selector inteligente de idioma de Zahit.'
pubDate: '2026-05-21'
tags: ['guía-zahit', 'uso', 'i18n']
translationKey: 'zahit-usage'
---

Una de las funciones más útiles de Zahit es su compatibilidad integrada con la gestión de contenido bilingüe en español e inglés. Esta guía explica cómo organizar las carpetas, dar formato a los metadatos de cada publicación y usar el selector de idioma para enlazar sus traducciones.

---

## 📂 Estructura del directorio de contenido

Todas las publicaciones se encuentran en `src/content/blog/`. Dentro de este directorio, los artículos se organizan en carpetas según el idioma:

- `src/content/blog/es/` — Contiene los artículos en español.
- `src/content/blog/en/` — Contiene los artículos en inglés.

Astro procesa automáticamente los archivos `.md` y `.mdx` de estas carpetas mediante el cargador de colecciones definido en `src/content.config.ts`.

---

## 📋 Metadatos de una publicación

Cada publicación debe comenzar con un bloque de metadatos delimitado por tres guiones `---`. El esquema de contenido de Zahit utiliza estos campos:

```markdown
---
title: 'Título del artículo'
description: 'Una breve descripción del artículo.'
pubDate: '2026-05-17'
tags: ['etiqueta1', 'etiqueta2']
translationKey: 'identificador-unico'
---
```

### Descripción de los campos

- **`title` y `description`:** aparecen en el artículo y se insertan en el `<head>` para mejorar el SEO.
- **`pubDate`:** fecha de publicación, usada para ordenar los artículos y agruparlos por año en `/archive/`.
- **`tags`:** lista de etiquetas del artículo.
- **`translationKey`:** clave única compartida por las versiones en español e inglés de una misma publicación.

---

## 🌐 Selector inteligente de idioma

Cuando una persona lee una publicación en español y pulsa **“EN”**, Zahit no la envía simplemente a la página de inicio en inglés. Busca en la colección una publicación en inglés con el mismo valor de `translationKey`.

- **Si encuentra la misma clave:** abre directamente la traducción del artículo.
- **Si no encuentra una coincidencia:** abre el archivo del idioma elegido.

### Ejemplo

Para publicar un artículo sobre diseño minimalista en ambos idiomas:

1. Crea `src/content/blog/es/simplicidad.md` con `translationKey: 'simplicity-post'`.
2. Crea `src/content/blog/en/simplicity.md` con `translationKey: 'simplicity-post'`.

Así, los lectores pueden alternar entre español e inglés sin perder el artículo que están leyendo.

---

## Próximos pasos

Ahora que sabes organizar y redactar publicaciones, puedes ajustar las variables de diseño, los colores y los enlaces sociales.

Lee la guía final: **[Tema Zahit: personalización avanzada y colores](/blog/personalizacion/)**.
