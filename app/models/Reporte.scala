package models

import play.api.libs.json._

case class Reporte(id: Long, monto: Int, cuenta: Int, cliente: Int)

object Reporte {
  implicit val reporteFormat = Json.format[Reporte]
}