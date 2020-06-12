Doctor.destroy_all
Hospital.destroy_all
Patient.destroy_all

sacred_heart = Hospital.find_or_create_by(name: "Sacred Heart")

jd = Doctor.find_or_create_by(name: "John Dorian", hospital_id: sacred_heart.id)
turk = Doctor.find_or_create_by(name: "Chris Turk", hospital: sacred_heart)
elliot = Doctor.find_or_create_by(name: "Elliot Reid", hospital: sacred_heart)

wilke = Patient.find_or_create_by(name: "Mrs Wilke")
johnny = Patient.find_or_create_by(name: "Johnny the Tackling Alzheimer's Patient")
miss_judy = Patient.find_or_create_by(name: "Miss Judy")

jd.patients << wilke 
jd.patients << johnny 
turk.patients << wilke 

miss_judy.doctors << elliot