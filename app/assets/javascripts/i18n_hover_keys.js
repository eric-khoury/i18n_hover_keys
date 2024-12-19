document.addEventListener("DOMContentLoaded", function () {
  console.log("i18n hover keys loaded");

  var toggleButton = document.getElementById("i18n-hover-toggle");
  var enabled = false;

  if (toggleButton) {
    toggleButton.addEventListener("click", function () {
      console.log("clicked");
      enabled = !enabled;
      if (enabled) {
        enableHoverKeys();
        toggleButton.textContent = "Disable Translation Keys";
      } else {
        disableHoverKeys();
        toggleButton.textContent = "Enable Translation Keys";
      }
    });
  }

  function enableHoverKeys() {
    var elements = document.querySelectorAll("[data-i18n-key]");
    elements.forEach(function (el) {
      el.addEventListener("mouseenter", showKey);
      el.addEventListener("mouseleave", hideKey);
    });
  }

  function disableHoverKeys() {
    var elements = document.querySelectorAll("[data-i18n-key]");
    elements.forEach(function (el) {
      el.removeEventListener("mouseenter", showKey);
      el.removeEventListener("mouseleave", hideKey);
      hideKey.call(el);
    });
  }

  function showKey() {
    var key = this.getAttribute("data-i18n-key");
    var tooltip = document.createElement("span");
    tooltip.className = "i18n-tooltip";
    tooltip.textContent = key;

    this.style.position = "relative";

    // Position the tooltip on top and left-aligned
    tooltip.style.position = "absolute";
    tooltip.style.left = "0";
    tooltip.style.bottom = "100%";
    tooltip.style.backgroundColor = "yellow";
    tooltip.style.border = "1px solid black";
    tooltip.style.padding = "4px";
    tooltip.style.zIndex = "10000";

    this.appendChild(tooltip);
  }

  function hideKey() {
    var tooltip = this.querySelector(".i18n-tooltip");
    if (tooltip) {
      this.removeChild(tooltip);
    }
  }
});
