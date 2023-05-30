class Complaint < ApplicationRecord
  belongs_to :platform
  belongs_to :standard
  belongs_to :country
  belongs_to :reason

  enum delay: [
    'Todavía no recibí respuesta',
    'Menos de una semana',
    'Menos de un mes',
    'Entre uno y seis meses',
    'No me respondieron aún'
  ]
  enum usability: [
    'Fácil e intuitivo',
    'Confuso pero logré hacerlo gracias a Apelatron',
    'Muy difícil y no sé si lo hice bien',
  ]
  enum satisfaction: [
    'Sí, pude explicar en forma completa y clara mi posición',
    'Más o menos. No pude argumentar bien mi posición',
    'Más o menos. Las opciones de la plataforma eran muy limitadas',
    'No, siento que lo que presenté no representa bien mi caso',
  ]
  enum useful: [
    'Muy útil',
    'Me resultó práctico para algunas cosas',
    'No fue de mucha utilidad',
    'No me resultó útil en absoluto',
    'Aún no puedo contestar la pregunta'
  ]

  after_create do
    AdminMailer.with(complaint: self).new_complaint.deliver
  end
end
