---
title: 'Tema Zahit: guía de instalación paso a paso'
description: 'Aprende a instalar, configurar y ejecutar fácilmente el tema Zahit en tu equipo.'
pubDate: '2026-05-17'
tags: ['guía-zahit', 'instalación', 'astro']
translationKey: 'zahit-installation'
---

¡Te damos la bienvenida a la guía de instalación de **Zahit**! Zahit es un tema minimalista para Astro v6 basado en la idea de que la simplicidad es profundidad. En esta guía veremos cómo clonar el repositorio, instalar las dependencias necesarias e iniciar el entorno de desarrollo local.

## Requisitos previos

Antes de comenzar, comprueba que tu sistema tenga instaladas estas herramientas:

- **Node.js:** se recomienda la versión `22.12.0` o posterior. Puedes comprobarla con:
  ```bash
  node --version
  ```
- **Git:** necesario para clonar el repositorio y gestionar las versiones del código fuente.

---

## Paso 1: clonar el repositorio

Para instalar Zahit, primero clona el repositorio en tu equipo. Abre una terminal y ejecuta:

```bash
git clone https://github.com/kuscadev/Zahit.git
```

Cuando termine, entra en el directorio del proyecto:

```bash
cd Zahit
```

---

## Paso 2: instalar las dependencias

Zahit usa dependencias ligeras como `@astrojs/mdx` para procesar contenido y `astro-icon` para gestionar iconos SVG. Desde la raíz del proyecto, ejecuta:

```bash
npm install
```

Este comando leerá `package.json` y creará la carpeta local `node_modules`.

---

## Paso 3: iniciar el servidor de desarrollo

Una vez instalados los paquetes, inicia el servidor local de Astro:

```bash
npm run dev
```

La terminal mostrará la dirección local del proyecto, normalmente:

```text
  ┃ Local    http://localhost:4321/
```

Abre `http://localhost:4321/` en el navegador para ver el sitio. Los cambios que hagas en el código se actualizarán automáticamente.

---

## Próximos pasos

¡Ya tienes el tema Zahit instalado y en funcionamiento! Ahora puedes personalizar la biografía del autor y escribir tu primera publicación bilingüe.

Continúa con la siguiente guía: **[Tema Zahit: cómo escribir y organizar contenido](/blog/uso/)**.
