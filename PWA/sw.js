self.addEventListener('install', (e) => {
    e.waitUntil(
      caches.open('my-cache').then((cache) => cache.addAll([
        './',
        './app_icon.png',
        './config.webmanifest',
        './index.html',
        './script.js',
        './style.css',
      ])),
    );
  });
  
self.addEventListener('fetch', (e) => {
  e.respondWith(
    caches.match(e.request).then((response) => {
      if (response) {
        return response;
      } else {
        return fetch(e.request);
      }
    }),
  );
});