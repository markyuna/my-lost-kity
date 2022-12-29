class Pet < ApplicationRecord
  SPECIES = %w[ dog cat lama hamster kangaroo ]

  validates :species, inclusion: { in: SPECIES }
  before_validation :downcase_species

  private

  def downcase_species
    species.downcase!
  end
end
