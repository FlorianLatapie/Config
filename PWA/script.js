// Register service worker to control making site work offline

if ('serviceWorker' in navigator) {
  navigator.serviceWorker
  .register('./sw.js')
  .then(() => { console.log('Service Worker Registered'); })
  .catch((e) => { console.log('Service Worker Registration Failed'); console.error(e); });
}

const installBtn = document.getElementById('installBtn');
const iosText = document.getElementById("iosText");

console.log(localStorage.getItem('a2hs'));

if (localStorage.getItem('a2hs') === 'accepted') {
  installBtn.style.display = 'none';
}

var isIOS = /Mac|iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;

if (isIOS) {
  installBtn.style.display = "none";
  iosText.style.display = "block";
} else {
  installBtn.style.display = "block";
  iosText.style.display = "none";
}

let deferredPrompt;
window.addEventListener('beforeinstallprompt', (e) => {
  e.preventDefault();
  deferredPrompt = e;
  
  installBtn.addEventListener('click', () => {
    installBtn.style.display = 'none';
    
    deferredPrompt.prompt();
    deferredPrompt.userChoice.then((choiceResult) => {
      if (choiceResult.outcome === 'accepted') {
        console.log('User accepted the A2HS prompt');
        localStorage.setItem('a2hs', 'accepted');
      } else {
        console.log('User dismissed the A2HS prompt');
        localStorage.setItem('a2hs', 'dismissed');
      }
      deferredPrompt = null;
    });
  });
});


if (window.matchMedia('(display-mode: standalone)').matches) {
  document.getElementById("installBtn").style.display = "none";
  const response = confirm("Vous avez déjà installé Config !\nVous allez être redirigé vers la page d'accueil.");
  if (response === true){
    gotoHome();
  }
}

const goHomeBtn = document.getElementById("goHomeBtn");
const goRepoBtn = document.getElementById("goRepoBtn");

goHomeBtn.addEventListener('click', () => {
  gotoHome();
});

goRepoBtn.addEventListener('click', () => {
  window.open("https://github.com/florianlatapie/config", "_self");
});

function gotoHome() {
  window.open("../", "_self");
}
