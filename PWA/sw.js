console.log('hello from sw.js');
self.addEventListener('install', function(event) {console.log('SW installed', event);});
self.addEventListener('fetch', function(event) {console.log('SW fetched', event);});
self.addEventListener('activate', function(event) {console.log('SW activated', event);});