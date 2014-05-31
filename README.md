To Do:
======
1)  NavBar - Hospitals
    - Connect the doctors to the hospital when selected by checkboxes.
    - Tidy up the show view
2)  NavBar - Doctors
    - Add new doctor link does not work and needs to be fixed.
3)  NavBar - Patients
    - 
4)  NavBar - Medications
    - 
5)  Overall
    - Fix glyphicons as I want the edit and delete to use glyphicons instead of text.
      http://stackoverflow.com/questions/18369036/bootstrap-3-glyphicons-not-working
      http://bootsnipp.com/snippets/2P90
    - It would be nice if the search form in the navbar could search the entire database.
    - Paginate all 4 tables (hospitals, doctors, patients, medication)
    - Allow all pages to be viewable, expect for CRUD actions, to every visitors. Might need to add guest user, but I was not able to figure it out.
      * https://github.com/plataformatec/devise/wiki/How-To:-Set-up-devise-as-a-single-user-system
      * https://github.com/plataformatec/devise/wiki/How-To:-Create-a-guest-user



Previous Instructions

====================================
== Assignment 5/1/2014 (Hospital v5)
====================================
Turn your search functions into an AJAX call!   When you search, it shouldn't redirect to a search page. It should re-render the list of patients with the new list.

Convert workflow to AJAX.


=====================================
== Assignment 4/30/2014 (Hospital v4)
=====================================
So, you have a hospital and you're searching through patients, hell yeah. Let's add some more stuff because we just learned some jQuery.

I want you to add validation on the hospital name, patient name, and the medication name in Rails.

For jQuery, I want you to validate the forms in real-time. If the name isn't filled out, you need to disable the form and display a message somewhere on the page telling the user that the names are required. If the name is filled out, you need to remove the verbiage, and enable the button.

I also want you to have your flash messages fade out over time. For example, when you save a patient, hospital, or medication you should have a flash message. So, when this message is displayed, you need to fade it out over a few seconds.

I want you to paginate your pages as well. Group your patients/hospitals/medications up in groups of 10. Anything more then 10, create a new group. If you have 3 groups of patients, you should have 3 links at the bottom for each page: 1 | 2 | 3. Pagination!

- Hide the submit button via javascript
  - Play around with selectors until you find your submit button
    - Preferably use a class on the submit button
    - = f.submit "Submit", class: "asdf"
- Find the text boxes we want to validate
  - via javascript
- Find an event on jquery that will allow us to access the
  - data inside of the text box when the user changes it
  
- When that event occurs, check to see what the data is inside the text box
  - if it's empty
    - hide your submit button
  - if it's not empty
    - show your submit button


=====================================
== Assignment 4/24/2014 (Hospital v3)
=====================================
We are adding on to the hospital applications. I want you to create another entity on the top level of your application. Currently we have Hospitals > Patients > Medications.

I want you to turn your single hospital to patient relation into a patient being able to exist in multiple hospitals.

I also want you to create a new entity called "Doctors" that live inside of hospitals. The Doctors should have a polymorphic relationship between patients and Hospitals. They should not belong to both. Think of these doctors as independent physicians who work wherever they want, consulting for the patients who go to the hospital.


=====================================
== Assignment 4/21/2014 (Hospital v2)
=====================================
Change your relationships up a bit. You need to add Hospital and Medication. Your patients should live under your hospitals. And your medications should live under your patients. You should be able to create multiple hospitals and have many patients there. Your medications should also be related to your patients. You should be able to have many medications.

- improve on the app build over the weekend to include the following.

  - Add 2 additional models.
    -Hospital - has_many relationship to patients and medications
    -Medication - belongs_to hospital relationship
  - Revise current model of patient
    -Patient - belongs_to hospital relationship


=====================================
== Assignment 4/17/2014 (Hospital v1)
=====================================
We are creating a tracking system for a patient as he/she goes through a hospital

- Use the Workflow gem we used today to control patient statuses.
- The patient will be transferred from the waiting room, to doctor checkup, to xrays, to surgery, to paying bills, to leaving.
- The patients should be able to jump directly from the waiting room to every status except paying bills
  - This will involve multiple events for each state!
  - I also strongly suggest making 1 route that controls transferring between all states. If you do so, it should accept the previous and state wanted as parameters
- As the patient transfers to leaving the hospital, I want to be presented with a description field to write any details about said patient's trip through the hospital.
- Use HAML!
- Make it look nice.
  - You don't have ot go all out, but at least make it somewhat presentable.