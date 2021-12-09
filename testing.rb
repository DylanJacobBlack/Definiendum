require "google/cloud/translate/v2"

translate = Google::Cloud::Translate::V2.new(
  project_id: "glossy-motif-334504",
  credentials: "glossy-motif-334504-819413955031.json"
)

translation = translate.translate "Hello world!", to: "la"
puts translation.text #=> "Salve mundi!"
