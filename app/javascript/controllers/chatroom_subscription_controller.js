import { Controller } from "stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages", "form"]

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: (message) => {
        this.messagesTarget.insertAdjacentHTML('beforeend', message)
        this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
        this.formTarget.reset()
       } }
      )
  }
}
