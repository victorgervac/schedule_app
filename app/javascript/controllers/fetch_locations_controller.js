import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="fetch-locations"
export default class extends Controller {
  connect() {}
  fetch() {
    let data = secret_key;

    let xhr = new XMLHttpRequest();
    xhr.withCredentials = true;

    xhr.addEventListener("readystatechange", function () {
      if (this.readyState === 4) {
        console.log(this.responseText);
      }
    });

    xhr.open("POST", `https://api.hostaway.com/v1/${data}`);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.setRequestHeader("Cache-control", "no-cache");

    xhr.send(data);
  }
}
