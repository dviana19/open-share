import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="copy"
export default class extends Controller {
  static targets = ['content', 'button']

  togglePassword() {
    this.contentTarget.type = this.contentTarget.type === 'password' ? 'text' : 'password';
  }

  toClipboard() {
    let contentText;
    let buttonText = this.buttonTarget.textContent;
    if (this.contentTarget.type === 'password') {
      contentText = this.contentTarget.value;
    } else {
      contentText = this.contentTarget.textContent;
    }

    navigator.clipboard.writeText(contentText).then(() => {
      this.buttonTarget.textContent = 'Copied!';
      setTimeout(() => {
        this.buttonTarget.textContent = buttonText;
      }, 2000);
    }).catch(err => {
      console.error('Failed to copy: ', err);
    });
  }
}
