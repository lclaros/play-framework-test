package models

import play.api.libs.json._

case class Transaction(id: Long, date: String, type_1: String, description: String) {
	var details: Seq[TransactionDetail] = Seq[TransactionDetail]()
}

object Transaction {
  implicit val transactionFormat = Json.format[Transaction]
}