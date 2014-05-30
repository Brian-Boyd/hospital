# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Hospital.create!(
  name:       'University of Texas MD',
  location:   'Houston, TX',
  specialty:  'Cancer'
  )

Hospital.create!(
  name:       'Cleveland Clinic',
  location:   'Cleveland, OH',
  specialty:  'Cardiology'
  )

Hospital.create!(
  name:       'Mayo Clinic',
  location:   'Rochester, MN',
  specialty:  'Diabetes & Endocrinology'
  )

Hospital.create!(
  name:       'Johns Hopkins Hospital',
  location:   'Baltimore, MD',
  specialty:  'Ear, Nose & Throat'
  )

Hospital.create!(
  name:       'Gastroenterology',
  location:   'Massachusetts General Hospital',
  specialty:  'Boston, MA'
  )

Hospital.create!(
  name:       'UCLA Medical Center',
  location:   'Los Angeles, CA',
  specialty:  'Geriatrics'
  )

Hospital.create!(
  name:       'Magee-Womens Hospital of UPMC',
  location:   'Pittsburgh, PA',
  specialty:  'Gynecology'
  )

Hospital.create!(
  name:       'UCSF Medical Center',
  location:   'San Francisco, CA',
  specialty:  'Nephrology'
  )

Hospital.create!(
  name:       'Northwestern Memorial Hospital',
  location:   'Chicago, IL',
  specialty:  'Neurology'
  )

Hospital.create!(
  name:       'Bascom Palmer Eye Institute',
  location:   'Miami, FL',
  specialty:  'Ophthalmology'
  )

Hospital.create!(
  name:       'Hospital for Joint Diseases',
  location:   'New York, NY',
  specialty:  'Orthopedics'
  )

Hospital.create!(
  name:       'McLean Hospital',
  location:   'Belmont, MA',
  specialty:  'Psychiatry'
  )

Hospital.create!(
  name:       'Duke University Medical Center',
  location:   'Durham, NC',
  specialty:  'Urology'
  )

Doctor.create!(
  name:       'Dr. James Kildare, M.D.',
  specialty:  'Internal Medicine'
  )

Doctor.create!(
  name:       'Dr. Marcus Welby, M.D.',
  specialty:  'Internal Medicine'
  )

Doctor.create!(
  name:       'Dr. Ben Casey, M.D.',
  specialty:  'Neurosurgery'
  )

Doctor.create!(
  name:       'Dr. Leonard McCoy, M.D.',
  specialty:  'Internal Medicine'
  )

Doctor.create!(
  name:       'Dr. Trapper John, M.D.',
  specialty:  'Surgery'
  )

Doctor.create!(
  name:       'Dr. Phillip Chandler, M.D.',
  specialty:  'Internal Medicine'
  )

Doctor.create!(
  name:       'Dr. Heathcliff Huxtable, M.D.',
  specialty:  'OB-GYN'
  )

Doctor.create!(
  name:       'Dr. Doogie Howser, M.D.',
  specialty:  'Surgery'
  )

Doctor.create!(
  name:       'Dr. Michaela Quinn, M.D.',
  specialty:  'Internal Medicine'
  )

Doctor.create!(
  name:       'Dr. Doug Ross, M.D.',
  specialty:  'Pediatrics'
  )

Doctor.create!(
  name:       'Dr. Elizabeth Corday, M.D.',
  specialty:  'Surgery'
  )

Doctor.create!(
  name:       'Dr. Christian Troy, M.D.',
  specialty:  'Plastic surgery'
  )

Doctor.create!(
  name:       'Dr. Jack Shephard, M.D.',
  specialty:  'Spinal Surgery'
  )

Doctor.create!(
  name:       'Dr. Greg House, M.D.',
  specialty:  'Nephrology'
  )

Doctor.create!(
  name:       'Dr. Derek Shepherd, M.D.',
  specialty:  'Neurosurgery'
  )

Patient.create!(
  name:           'Lucy Ricardo',
  email:          'lucy@gmail.com',
  disorder:       'Tree Bark Skin - Known as Epidermodysplasia Verruciformis, this hereditary skin disorder is caused by HPV (human papilloma virus) and causes wart-like growths on your skin to spread out of control. One of the worst cases on record is that of Dede Koswara from Indonesia. He recently had 95% of his warts removed but within the year almost all of them had grown back.'
  )

Patient.create!(
  name:           'Arthur Fonzarelli',
  email:          'fonz@gmail.com',
  disorder:       'Blue Skin Disorder - As a result of something called methemoglobinemia, which causes decreased blood oxygen levels, some people develop a very deep bluish tint to their skin. The cause of this hereditary disorder was recently discovered, however, and those who it afflicted have since received treatment, their skin reverting back to normal.'
  )

Patient.create!(
  name:           'Homer Simpson',
  email:          'homer@gmail.com',
  disorder:       'Fish Odor Syndrome - Struggling with something called trimethylaminuria literally stinks. As a result of the body’s inability to break down a certain organic compound found in numerous foods an afflicted individual tends to give off an overwhelmingly strong fish-smelling odor. Unfortunately there is no cure but thus far people have managed to control it by employing various diets.'
  )

Patient.create!(
  name:           'Tony Soprano',
  email:          'tony@gmail.com',
  disorder:       'Perpetual Shuteye - In what has been baffling doctors all over the world, Natalie Adler of Australia has a problem with her eyes, more specifically her eyelids. Every now and then they will close tightly and not reopen for up to three days. Doctors believe it may be a type of conversion disorder, something that happens when a person internalizes various psychological issues which then manifest themselves physically.'
  )

Patient.create!(
  name:           'Edith Bunker',
  email:          'edith@gmail.com',
  disorder:       'Dystonia - A rare disorder, individuals suffer abrupt twisting motions whenever their muscles sustain any contraction. The most well-publicised case in recent history involved that of Deseree Jennings, the 25 year old girl who was aspiring to be a professional football cheerleader when she acquired the disease from a flu shot. Although she can’t walk forwards, stand in one spot, or talk normally while doing either of the two, she can walk backwards and even run during which her convulsions and strained speech temporarily revert to normal.'
  )

Patient.create!(
  name:           'Archie Bunker',
  email:          'archie@gmail.com',
  disorder:       'Exploding Head Syndrome - Don’t worry, this isn’t what you think. Often attributed to stress, people will be startled out of their sleep in the middle of the night as a result of hearing a loud banging sound. As of yet doctors have been unable to isolate any negative effects of this phenomenon other than people developing an extreme aversion to falling asleep. Fortunately, however, the bangs typically subside after several days.'
  )

Patient.create!(
  name:           'Fox Mulder',
  email:          'fox@gmail.com',
  disorder:       'Kleine-Levin Syndrome - A strange and little understood disorder that can potentially lead to people sleeping for weeks on end. Fortunately most children that are afflicted will see the symptoms gradually disappear by the time they reach their twenties.'
  )

Patient.create!(
  name:           'Eric Cartman',
  email:          'eric@gmail.com',
  disorder:       'Trichotillomania - A disorder that leads to people compulsively pulling out their hair, the peak of onset is between the ages of 9 to 13 and in extreme cases the hair is actually ingested as well.'
  )

Patient.create!(
  name:           'Joe Friday',
  email:          'joe@gmail.com',
  disorder:       'Pica - Characterized by eating substances with no nutritional value the reasons behind it may vary. Although sometimes it can be the result of cultural traditions it is often found in children with developmental disabilities or iron deficiency.'
  )

Patient.create!(
  name:           'James T. Kirk',
  email:          'captian@gmail.com',
  disorder:       'Vampire Syndrome - While there are people out there who crave blood, this is not the disorder we are addressing here. Porphyria is an incurable and inherited disease that causes not only blisters but also cramps and paralysis whenever the afflicted individual is exposed to sunlight. This shouldn’t be confused with polymorphic light eruption, however. The latter is actually a fairly common disorder afflicting approximately 15% of North Americans (mainly in the north) and only leads to mild rashes upon initial springtime exposure to sunlight.'
  )

Patient.create!(
  name:           'Jerry Seinfeld',
  email:          'seifeld@gmail.com',
  disorder:       'Perpetual Hiccups - Although normally you would just grab a drink of water and wait it out, for the past two years this hasn’t helped Christopher Sands in the slightest. Having tried numerous therapies, doctors around the world are stumped. While hiccups are typically caused by spontaneous contractions of the diaphragm they still haven’t been able to find a cause in Chris’s case.'
  )

Patient.create!(
  name:           'Alex P. Keaton',
  email:          'alex@gmail.com',
  disorder:       'Cold Urticaria - On the other side of the spectrum are those of us who are actually allergic to the cold. To someone afflicted with this condition even a snowflake in the face could cause uncontrollable itching and a major exposure could lead to shock and eventually death.'
  )

Patient.create!(
  name:           'George Jefferson',
  email:          'george@gmail.com',
  disorder:       'Cold Immunity - Wim Hof of the Netherlands is giving the medical community yet another reason to be baffled as he climbs Mount Everest with nothing but his shorts on and dives beneath arctic ice for record periods of time. Evidently the cold has no effect on him,or at least not to the normal extent.'
  )

Patient.create!(
  name:           'Thomas Magnum',
  email:          'thomas@gmail.com',
  disorder:       'Forgetlessness - Although this may sound like a really cool superhero power, it’s not. Not being able to forget anything can be extremely distracting and there is a reason brains are not typically wired this way. While rare, there are several people in the world who possess this superhuman memory capable of remembering seemingly unimportant details such as the weather every day for the past decade.'
  )

Patient.create!(
  name:           'Frasier Crane',
  email:          'frasier@gmail.com',
  disorder:       'Pain Insensitivity - It sounds great right? Never feeling any pain. The truth is, however, that it is probably one of the most dangerous things that could happen to a human. Often children that are affected by this disorder acquire terribly debilitating injuries as a result of scratching themselves, biting off their tongue, or walking around on broken bones.'
  )

Patient.create!(
  name:           'Bob Hartley',
  email:          'bob@gmail.com',
  disorder:       'Blaschkos Lines - Humans actually do have stripes, well not really, but certain skin conditions will expose a series of lines on the skin that otherwise are invisible. The most remarkable thing about them though, is that in every patient they always follow nearly the same pattern.'
  )

Patient.create!(
  name:           'Theodore Cleaver',
  email:          'beaver@gmail.com',
  disorder:       'Allergies to Food - Although many people are allergic to food on some level, imagine being allergic to food period. Joshua, a young boy who recently made headlines, suffers from a form of eosonophilic esophagitis so extreme that even the scent of food could kill him. Until more is known about the disease people in Josua’s shoes have to be fed via a direct tube to their stomach.'
  )

Patient.create!(
  name:           'Carla Tortelli',
  email:          'carla@gmail.com',
  disorder:       'Allergy to Water - The technical name being Aquagenic Urticaria, this disorder causes the individual to be allergic to water in any form, including tears. Recently, a British woman named Micaela Dutton explained to a local newspaper how she couldn’t even hold her boy because if he started sweating she would break out with an incredibly painful rash.'
  )

Patient.create!(
  name:           'David Addison',
  email:          'david@gmail.com',
  disorder:       'Foreign Accent Syndrome - Typically the result of a stroke or severe migraine, this extremely rare disorder affects they way an individuals forms his or her words thus giving the perception that they are speaking with a foreign accent. One of the most recent cases was that of Sarah Coldwill in the Uk. After suffering from an exteme migraine she woke up in the hospital hours later speaking with what sounded like a Chinese accent although she had never once in her life been to China.'
  )

Patient.create!(
  name:           'Rowdy Yates',
  email:          'rowdy@gmail.com',
  disorder:       'Walking Corpse Syndrome - Officially known as Cotard’s Syndrome, this mental disorder involves an individual who believes they are either already dead or have lost all of their vital organs. Oftentimes it is brought about by a brain injury and can result in people believing themselves to be immortal, which can very easily lead to unintentional suicides.'
  )

Patient.create!(
  name:           'Sonny Crockett',
  email:          'sonny@gmail.com',
  disorder:       'Alice in Wonderland Syndrome - Probably as a result of something malfunctioning in the brain’s occipital lobe, this disorder causes people to percieve objects as being either much larger or smaller than they really are. Moreover, the individual will also mispercieve the passage of time and possibly have their sense of hearing and touch affected as well.'
  )

Medication.create!(
  name:         'Lipitor',
  description:  'Cholesterol-lowering statin drug'
  )

Medication.create!(
  name:         'Nexium',
  description:  'Antacid drug'
  )

Medication.create!(
  name:         'Plavix',
  description:  'Blood thinner'
  )

Medication.create!(
  name:         'Advair Diskus',
  description:  'Asthma inhaler'
  )

Medication.create!(
  name:         'Abilify',
  description:  'Antipsychotic drug'
  )

Medication.create!(
  name:         'Seroquel',
  description:  'Antipsychotic drug'
  )

Medication.create!(
  name:         'Singulair',
  description:  'Oral asthma drug'
  )

Medication.create!(
  name:         'Crestor',
  description:  'Cholesterol-lowering statin drug'
  )

Medication.create!(
  name:         'Actos',
  description:  'Diabetes drug'
  )

Medication.create!(
  name:         'Epogen',
  description:  'Injectable anemia drug'
  )

DoctorHospitalJoin.create!( doctor_id: '1', hospital_id: '1' )
DoctorHospitalJoin.create!( doctor_id: '1', hospital_id: '2' )
DoctorHospitalJoin.create!( doctor_id: '1', hospital_id: '3' )
DoctorHospitalJoin.create!( doctor_id: '1', hospital_id: '4' )
DoctorHospitalJoin.create!( doctor_id: '1', hospital_id: '5' )
DoctorHospitalJoin.create!( doctor_id: '1', hospital_id: '6' )
DoctorHospitalJoin.create!( doctor_id: '1', hospital_id: '7' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '8' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '9' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '10' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '11' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '12' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '13' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '14' )
DoctorHospitalJoin.create!( doctor_id: '2', hospital_id: '15' )
DoctorHospitalJoin.create!( doctor_id: '3', hospital_id: '2' )
DoctorHospitalJoin.create!( doctor_id: '3', hospital_id: '4' )
DoctorHospitalJoin.create!( doctor_id: '3', hospital_id: '6' )
DoctorHospitalJoin.create!( doctor_id: '3', hospital_id: '8' )
DoctorHospitalJoin.create!( doctor_id: '3', hospital_id: '11' )
DoctorHospitalJoin.create!( doctor_id: '3', hospital_id: '14' )
DoctorHospitalJoin.create!( doctor_id: '3', hospital_id: '15' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '1' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '4' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '7' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '8' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '10' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '13' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '14' )
DoctorHospitalJoin.create!( doctor_id: '4', hospital_id: '15' )

HospitalPatientJoin.create!( hospital_id: '1', patient_id: '1' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '2' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '3' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '4' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '5' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '6' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '7' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '8' )
HospitalPatientJoin.create!( hospital_id: '1', patient_id: '9' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '10' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '11' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '12' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '13' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '14' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '15' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '16' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '17' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '18' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '19' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '20' )
HospitalPatientJoin.create!( hospital_id: '2', patient_id: '21' )
HospitalPatientJoin.create!( hospital_id: '3', patient_id: '2' )
HospitalPatientJoin.create!( hospital_id: '3', patient_id: '3' )
HospitalPatientJoin.create!( hospital_id: '3', patient_id: '4' )
HospitalPatientJoin.create!( hospital_id: '3', patient_id: '6' )
HospitalPatientJoin.create!( hospital_id: '3', patient_id: '7' )
HospitalPatientJoin.create!( hospital_id: '3', patient_id: '8' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '10' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '11' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '14' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '15' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '17' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '18' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '40' )
HospitalPatientJoin.create!( hospital_id: '4', patient_id: '21' )

MedicationPatientJoin.delete_all
MedicationPatientJoin.create!( medication_id: '1', patient_id: '1' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '2' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '3' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '4' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '5' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '6' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '7' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '8' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '9' )
MedicationPatientJoin.create!( medication_id: '1', patient_id: '10' )
MedicationPatientJoin.create!( medication_id: '2', patient_id: '1' )
MedicationPatientJoin.create!( medication_id: '3', patient_id: '2' )
MedicationPatientJoin.create!( medication_id: '4', patient_id: '3' )
MedicationPatientJoin.create!( medication_id: '5', patient_id: '4' )
MedicationPatientJoin.create!( medication_id: '6', patient_id: '5' )
MedicationPatientJoin.create!( medication_id: '7', patient_id: '6' )
MedicationPatientJoin.create!( medication_id: '8', patient_id: '7' )
MedicationPatientJoin.create!( medication_id: '9', patient_id: '8' )
MedicationPatientJoin.create!( medication_id: '10', patient_id: '9' )
MedicationPatientJoin.create!( medication_id: '13', patient_id: '10' )