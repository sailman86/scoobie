import { Controller } from "stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { chatroomId: Number}
  connect() {
    consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: (message) => {
        this.element.insertAdjacentHTML('beforeend', message)
        this.element.scrollTop = this.element.scrollHeight
       } }
      )
  }
}
