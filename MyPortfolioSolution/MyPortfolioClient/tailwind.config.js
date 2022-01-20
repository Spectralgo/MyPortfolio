module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'body': '#17171F',
        'selected-text': '#a3a3ff',
        'theme': '#a57dfc',
        'nav': '#404053',
        'secondary-bis': '#9191a4',
        'badge': '#3f3f51',
        'input-border': '#565666',
        'input': '#2a2a35',
      },
      fontFamily: {
        'poppins': ["'Poppins'", 'sans-serif'],
        'poiret': ["'Poiret One'", 'serif'],
      }
    },
  },
  plugins: [
    require('daisyui'),
  ],
  daisyui: {
    themes: [//'luxury','forest',
      {
        'spectralgo-dark':
        {
          "primary": "#793ef9",
          "primary-focus": "#570df8",
          "primary-content": "#ffffff",
          "secondary": "#f000b8",
          "secondary-focus": "#bd0091",
          "secondary-content": "#ffffff",
          "accent": "#37cdbe",
          "accent-focus": "#2aa79b",
          "accent-content": "#ffffff",
          "neutral": "#2a2e37",
          "neutral-focus": "#16181d",
          "neutral-content": "#ffffff",
          // "base-100": "#17171F",
          "base-100": "#040404",
          "base-200": "#17171F",
          "base-300": "#22252c",
          "base-content": "#ebecf0",
          "info": "#66c6ff",
          "success": "#87d039",
          "warning": "#e2d562",
          "error": "#ff6f6f",
          "--border-color": "var(--b3)",
          "--rounded-box": "1rem",
          "--rounded-btn": "0.5rem",
          "--rounded-badge": "1.9rem",
          "--animation-btn": "0.25s",
          "--animation-input": ".2s",
          "--btn-text-case": "uppercase",
          "--btn-focus-scale": "0.95",
          "--navbar-padding": ".5rem",
          "--border-btn": "1px",
          "--tab-border": "1px",
          "--tab-radius": "0.5rem",
        }

      },]
  },
}