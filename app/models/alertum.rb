class Alertum < ApplicationRecord
  has_one :prioridad
  belongs_to :informe
end