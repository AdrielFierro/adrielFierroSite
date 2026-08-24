---
title: 'Tema Zahit: personalización avanzada y colores'
description: 'Guía para modificar variables de configuración, ajustar el diseño y actualizar los colores del tema.'
pubDate: '2026-05-23'
tags: ['guía-zahit', 'personalización', 'css']
translationKey: 'zahit-customization'
---

¡Te damos la bienvenida a la guía de personalización avanzada de Zahit! Como el tema sigue una estética minimalista, su código es claro y fácil de adaptar. Aquí verás cómo actualizar el perfil del autor, modificar las propiedades CSS principales y personalizar los diccionarios de traducción.

---

## 👤 1. Editar los datos principales: `src/config.ts`

Para cambiar tu nombre, rol, biografía y enlaces sociales, abre `src/config.ts`. Este archivo exporta tres configuraciones principales:

### SITE_CONFIG

Define los parámetros generales del sitio:

- `title`: aparece en las pestañas del navegador y en los encabezados.
- `description`: se usa como descripción SEO predeterminada.
- `url`: dominio raíz donde está publicado el blog.

### AUTHOR

Contiene los datos de la tarjeta de perfil:

- `name`: tu nombre completo.
- `role`: tu rol profesional.
- `bio`: biografías localizadas para español (`es`) e inglés (`en`).
- `avatar`: ruta de la imagen de perfil, ubicada en `/src/assets`.

### SOCIALS

Es la lista de cuentas sociales que se muestran como iconos:

```typescript
export const SOCIALS = [
  {
    label: 'GitHub',
    href: 'https://github.com/johndoe',
    icon: 'mdi:github',
  },
  // Agrega más enlaces con la misma estructura
];
```

Puedes usar directamente los identificadores de [Iconify MDI](https://icon-sets.iconify.design/mdi/) para mostrar otros iconos.

---

## 🎨 2. Personalizar el tema y los colores

El diseño de Zahit se controla mediante variables CSS en `src/styles/global.css`. Puedes cambiar la paleta y la tipografía editando los valores de `:root`:

```css
:root {
  /* Colores principales */
  --bg-color: #00022b;
  --dark: #010e54;
  --accent: #0855b1;
  --light: #4fa5d8;
  --text-color: #daeaff;

  /* Tipografía */
  --font-family-body: 'Source Sans 3', sans-serif;
  --font-family-heading: 'Source Sans 3', sans-serif;

  /* Dimensiones */
  --site-width: 80%;
  --content-padding: 2rem;
}
```

### Ejemplo: tema verde bosque

Para pasar de los tonos azules a un tema de bosque oscuro, sustituye las variables de color:

```css
:root {
  --bg-color: #0d1a0d;
  --dark: #1b331b;
  --accent: #2e662e;
  --light: #66cc66;
  --text-color: #e2f2e2;
}
```

---

## 🗣️ 3. Modificar las traducciones: `src/i18n/ui.ts`

Los textos estáticos de la interfaz, como la navegación, “Publicado el” o el título del índice, se guardan en `src/i18n/ui.ts`.

Para agregar o cambiar una traducción, edita el objeto `ui`:

```typescript
export const ui = {
  es: {
    'nav.home': 'Inicio',
    'toc.title': 'Contenido',
  },
  en: {
    'nav.home': 'Home',
    'toc.title': 'Contents',
  },
} as const;
```

Al guardar los cambios, la navegación y los botones se actualizarán automáticamente.

---

## Conclusión

Zahit está diseñado para que puedas concentrarte en escribir. Gracias a sus variables CSS, la configuración separada y el diccionario de traducciones, puedes convertirlo rápidamente en un espacio propio.

¡Que disfrutes programando y escribiendo!
