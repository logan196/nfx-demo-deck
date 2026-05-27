/* Client-side password gate · nfx Demo Deck
   SHA-256 of the password stored, not the password itself.
   Soft gate — deterrence only. */
(function () {
  "use strict";
  // password hash (SHA-256)
  var PASSWORD_HASH =
    "61954fb0db71b6ab9bc88cbb8c5f8549c019920c8ec13070f02bf48f6c6ae43d";
  var KEY = "nfx-demo-deck-unlocked";

  try { if (sessionStorage.getItem(KEY) === "1") return; } catch (e) {}

  var lockStyle = document.createElement("style");
  lockStyle.id = "gate-lockstyle";
  lockStyle.textContent =
    "html.gate-locked body > *:not(#gate){display:none !important}" +
    "html.gate-locked{overflow:hidden}";
  document.documentElement.appendChild(lockStyle);
  document.documentElement.classList.add("gate-locked");

  function buildGate() {
    var wrap = document.createElement("div");
    wrap.id = "gate";
    wrap.innerHTML = [
      '<div class="gate-card">',
      '  <div class="gate-eyebrow">Novaflow Labs · nfx</div>',
      '  <h1>nfx Demo Deck</h1>',
      '  <p>This presentation contains pre-release product demos and internal roadmap details. Enter the access phrase to continue.</p>',
      '  <form id="gate-form" autocomplete="off">',
      '    <input id="gate-input" type="password" placeholder="Access phrase"',
      '           autocapitalize="off" autocorrect="off" spellcheck="false" required>',
      '    <button type="submit">Unlock</button>',
      '  </form>',
      '  <div id="gate-error" role="alert" aria-live="polite"></div>',
      '  <div class="gate-foot">',
      '    Contact <a href="mailto:logan@novaflowapp.com">logan@novaflowapp.com</a> for access.',
      '  </div>',
      '</div>'
    ].join("");
    document.body.appendChild(wrap);

    var form  = document.getElementById("gate-form");
    var input = document.getElementById("gate-input");
    var err   = document.getElementById("gate-error");
    input.focus();

    form.addEventListener("submit", function (ev) {
      ev.preventDefault();
      err.textContent = "";
      var val = input.value || "";
      sha256(val).then(function (hash) {
        if (hash === PASSWORD_HASH) {
          try { sessionStorage.setItem(KEY, "1"); } catch (e) {}
          unlock();
        } else {
          err.textContent = "Incorrect phrase.";
          wrap.classList.remove("shake");
          void wrap.offsetWidth;
          wrap.classList.add("shake");
          input.select();
        }
      }).catch(function () {
        err.textContent = "Crypto unavailable — try HTTPS.";
      });
    });
  }

  function unlock() {
    document.documentElement.classList.remove("gate-locked");
    var g = document.getElementById("gate");
    if (g) {
      g.style.transition = "opacity .25s ease";
      g.style.opacity = "0";
      setTimeout(function () { g.remove(); }, 280);
    }
    var s = document.getElementById("gate-lockstyle");
    if (s) s.remove();
  }

  function sha256(str) {
    var buf = new TextEncoder().encode(str);
    return crypto.subtle.digest("SHA-256", buf).then(function (hashBuf) {
      var bytes = new Uint8Array(hashBuf);
      var hex = "";
      for (var i = 0; i < bytes.length; i++) {
        var h = bytes[i].toString(16);
        hex += h.length === 1 ? "0" + h : h;
      }
      return hex;
    });
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", buildGate);
  } else {
    buildGate();
  }
})();
