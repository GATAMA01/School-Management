import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application
import "@popperjs/core";
import "bootstrap";


export { application }
