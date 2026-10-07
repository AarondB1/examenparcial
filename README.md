# AutoMax - Evaluación Parcial

Proyecto académico desarrollado con Angular y Bootstrap según los requisitos de la evaluación.

## Requisitos
- Node.js instalado
- Angular CLI

## Instalación

```bash
npm install
```

## Ejecutar

```bash
npm start
```

Luego abrir:

http://localhost:4200/

## Estructura principal

- `src/app/models/` -> interfaces
- `src/app/services/` -> servicios
- `src/app/app.component.ts` -> componente principal y Signals
- `src/app/app.component.html` -> interfaz
- `src/app/app.component.css` -> estilos
- `src/styles.css` -> estilos globales

## Git

Commits sugeridos:

```bash
git init
git add .
git commit -m "feat: crear estructura inicial de AutoMax"
git add .
git commit -m "feat: agregar catálogo de vehículos"
git add .
git commit -m "feat: implementar formulario con Signals"
git add .
git commit -m "style: aplicar Bootstrap y diseño responsive"
git add .
git commit -m "feat: agregar promociones y reseñas"
```

## Importante

Las imágenes del catálogo usan URLs externas de Unsplash. Si el docente requiere imágenes locales, se pueden descargar y colocar en `src/assets/images/` y cambiar las rutas de las interfaces.
