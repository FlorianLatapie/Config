const storage = new LocalStorageWrapper('config');

const installBtn = document.getElementById('installBtn');
const iosText = document.getElementById('iosText');
const goHomeBtn = document.getElementById('goHomeBtn');
const goRepoBtn = document.getElementById('goRepoBtn');
const resetInstallBtn = document.getElementById('resetInstallBtn');

const userAgent = navigator.userAgent;
const isIOS =
  /iPad|iPhone|iPod/.test(userAgent) ||
  (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1);
let deferredPrompt;
let isInstallClickBound = false;

function setDisplay(element, isVisible) {
  if (!element) {
    return;
  }
  element.style.display = isVisible ? 'block' : 'none';
}

function migrateLegacyA2HS() {
  const legacyA2hsValue = localStorage.getItem('a2hs');
  if (legacyA2hsValue) {
    storage.setItem('a2hs', legacyA2hsValue);
    localStorage.removeItem('a2hs');
  }
}

function registerServiceWorker() {
  if (!('serviceWorker' in navigator)) {
    return;
  }

  navigator.serviceWorker.register('./sw.js').catch((error) => {
    console.error('Service Worker Registration Failed');
    console.error(error);
  });
}

function updateInstallUi() {
  const shouldShowInstallBtn = !isIOS && storage.getItem('a2hs') !== 'accepted';
  const shouldShowResetBtn = !isIOS && storage.getItem('a2hs') === 'accepted';
  setDisplay(installBtn, shouldShowInstallBtn);
  setDisplay(iosText, isIOS);
  setDisplay(resetInstallBtn, shouldShowResetBtn);
}

function handleInstallClick() {
  setDisplay(installBtn, false);
  setDisplay(iosText, false);

  deferredPrompt.prompt();
  deferredPrompt.userChoice.then((choiceResult) => {
    if (choiceResult.outcome === 'accepted') {
      storage.setItem('a2hs', 'accepted');
    } else {
      storage.setItem('a2hs', 'dismissed');
    }
    deferredPrompt = null;
  });
}

function handleBeforeInstallPrompt(event) {
  event.preventDefault();
  deferredPrompt = event;

  if (!isInstallClickBound) {
    installBtn.addEventListener('click', handleInstallClick);
    isInstallClickBound = true;
  }
}

function gotoHome() {
  window.open('../', '_self');
}

// --- Main execution ---

migrateLegacyA2HS();
registerServiceWorker();
updateInstallUi();

window.addEventListener('beforeinstallprompt', handleBeforeInstallPrompt);

if (window.matchMedia('(display-mode: standalone)').matches) {
  setDisplay(installBtn, false);
  const response = confirm(
    "Vous avez déjà installé Config !\nVous allez être redirigé vers la page d'accueil."
  );
  if (response === true) {
    gotoHome();
  }
}

goHomeBtn.addEventListener('click', () => {
  gotoHome();
});

goRepoBtn.addEventListener('click', () => {
  window.open('https://github.com/florianlatapie/config', '_self');
});

resetInstallBtn.addEventListener('click', (event) => {
  event.preventDefault();
  storage.removeItem('a2hs');
  updateInstallUi();
});
