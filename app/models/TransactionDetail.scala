package models

import play.api.libs.json._

case class TransactionDetail(id: Long, transactionId: Long, accountId: Long, debit: Double, credit: Double)

object TransactionDetail {
  implicit val TransactionDetailFormat = Json.format[TransactionDetail]
}