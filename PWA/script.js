// Register service worker to control making site work offline

if ('serviceWorker' in navigator) {
  navigator.serviceWorker
    .register('./sw.js')
    .then(() => { console.log('Service Worker Registered'); })
    .catch((e) => { console.log('Service Worker Registration Failed'); console.error(e); });
}


let deferredPrompt;
const installBtn = document.querySelector('#installBtn');
console.log(localStorage.getItem('a2hs'));

if (localStorage.getItem('a2hs') === 'accepted') {
  installBtn.style.display = 'none';
}

window.addEventListener('beforeinstallprompt', (e) => {
  e.preventDefault();
  deferredPrompt = e;

  installBtn.style.display = 'block';

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
    window.location.href = "https://github.com/florianlatapie/config";
});


function gotoHome() {
    window.location.href = "../";
}