# RV Health Center Management System
 RV Health Center Management System using MySQL, Php and Bootstrap



## Need to work on:

1. Ability to accept the appointment by the doctor to acknowledge the patient that their appointment has been approved.
2. User should not be allowed to register if he/she tries to provide the already registered email ID.
3. The password should be encrypted and the password field shouldn't be displayed in the admin panel.
4. Implementation of pagination for all the list view across the application.
5. Prescription generation and patient can take print of that.
6. Addition of more fields in the prescription statement to make it more specific one.

## Prerequisites
1. Install XAMPP web server
2. Any Editor (Preferably VS Code)
3. Any web browser with latest version

## Languages and Technologies used
1. HTML5/CSS3
2. JavaScript (to create dynamically updating content)
3. Bootstrap (An HTML, CSS, and JS library)
4. XAMPP (A web server by Apache Friends)
5. Php
6. MySQL (An RDBMS that uses SQL)
7. TCPDF (to generate PDFs)

## Steps to run the project in your machine
1. Download and install XAMPP in your machine
2. Clone or download the repository
3. Extract all the files and move it to the 'htdocs' folder of your XAMPP directory.
4. Start the Apache and Mysql in your XAMPP control panel.
5. Open your web browser and type 'localhost/phpmyadmin'
6. In phpmyadmin page, create a new database from the left panel and name it as 'myhmsdb'
7. Import the file 'myhmsdb.sql' inside your newly created database and click ok.
8. Open a new tab and type 'localhost/foldername' in the url of your browser
9. Hurray! That's it!
    
### SOFTWARES USED
  - XAMPP was installed on the window 11 machine and APACHE2 Server and MySQL were initialized. And, files were built inside opt/lampp/htdocs/myhmsp
  - Sublime Text 3.2 was used as a text editor.
  - Google Chrome Version 77.0.3865.90 was used to run the project (localhost/myhmsp was used as the url).
  

### Starting Apache And MySQL in XAMPP:
  The XAMPP Control Panel allows you to manually start and stop Apache and MySQL. To start Apache or MySQL manually, click the ‘Start’ button under ‘Actions’.
  
  
## GETTING INTO THE PROJECT:
RV Health Center Management System in php and mysql. This system has a ‘Home’ page from where the patient, doctor & admin can login into their accounts by toggling the tabs accordingly. Fig shows the ‘Home’ page of our project.

![image](https://user-images.githubusercontent.com/102849877/236819342-4843e3fd-a0e2-4d6c-bbf8-250b78708a46.png)

'About Us' page allows us to get some more information about the quality and the services of the hospital.

![Screenshot (23)](https://user-images.githubusercontent.com/102849877/236840468-3a849eaf-4732-475d-94d0-2b4d4680446f.png)
![Screenshot (24)](https://user-images.githubusercontent.com/102849877/236840994-17779cf5-0cd7-4f6a-b471-8e7c3bf6eca8.png)


‘Contact’ page allows users to provide feedback or queries about the services of the hospital. Fig shows the ‘Contact’ page.

![Screenshot (25)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/e4365b74-a074-4fde-ab5e-a628bd9cad3e)

The ‘Home’ page consists of 4 modules:
1. Patient Module
2. Doctor Module
3. Admin Module

### Patient Module:

  &nbsp; &nbsp; &nbsp; This module allows patients to create their account, book an appointment to see a doctor, see their appointment history, prescription list and they can take printout of that .
  The registration page(in the home page itself) asks patients to enter their First Name, Last Name, Email ID, Contact Number, USN, Date of Birth, Password and radio buttons to select their gender.
  
 ![Screenshot (27)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/6d597b01-2af7-4f96-9db1-313f3afcec65)

Once the patient has created his/her own account after clicking the ‘Register’ button, then he will be redirected to his/her Dashboard(Fig 1.5).

![Screenshot (28)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/f1064227-789c-45f9-8dee-c8b6041237fc)

The Dashboard page allows patients to perform two operations:

**1. Book his/her appointment:**

  &nbsp; &nbsp; &nbsp; Here, the patients can able to book their appointments to see a doctor. The appointment form requires patients to select the doctor that they want to see, Date and Time that they want to meet with the doctor. 

![Screenshot (29)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/e7158f90-43cb-4aeb-a338-3e3cf5d1a81f)

After clicking on the ‘Create new entry’ button, the patient will receive an alert that acknowledges the successful appointment of the patient.

![Screenshot (30)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/e27f9e75-593a-4f9b-957c-bd034222d2b3)

**2. View patients’ Appointment History:**

  &nbsp; &nbsp; &nbsp; Here, the patient can see their appointment history which contains Doctor Name, Appointment Date and Time, Current status.
	
![Screenshot (31)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/a045c28d-0d06-47d7-9fb2-7747c7a14dbe)

**3. View patients’ Prescriptions:**

  &nbsp; &nbsp; &nbsp; Here, the patient can see their prescription which contains Doctor Name, Appointment ID, Date and Time, Diseases, Allergies, Prescriptions.

![Screenshot (32)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/785086cc-1538-4a87-bdfb-1bf4362d8e50)

 There print button also there patient can take printout of prescription. Or they can downloade PDF of prescription.
![Screenshot (46)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/a8fd6e72-d88a-4834-b881-711587b8477c)

Once the patient has logged out of his account, if he wants to go into his account again, he can login his account, instead of register his account again. Fig  shows the login page.
Clicking on ‘Login’ button will redirect the patient to his dashboard page which we have seen earlier (Fig 1.5)

![Screenshot (33)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/7f372368-7407-4a7e-b63b-4d41728c3770)

This is how the patient module works. On the whole, this module allows patients to register their account or login their account(if he/she has one), book an appointment, view his/her appointment history and Prescriptions.

### Doctor Module:

  &nbsp; &nbsp; &nbsp; The doctors can login into their account which can be done by toggling the tab from ‘Patient’ to ‘Doctor’. Fig  shows the login form for a doctor. Registration of a doctor account can be done only by admin. We will discuss more about this in Admin Module.
  
![Screenshot (34)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/58ae6b95-3614-46df-a127-9911f545d2bf)
Once the doctor clicking the ‘Login’ button, they will be redirected to their own dashboard which is shown in Fig

![Screenshot (36)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/92d3e544-65e5-41bd-8ef0-a6e33e5608bd)

In this page, doctor can able to see their appointments which has been booked by the patients. Fig  shows the appointment of the doctor  which has been booked by the patient.  

![Screenshot (37)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/bcc0afbb-b2a8-423c-bbf7-c3ee15c42671)

In real-time, the doctors will have thousands of appointments. It will be easier for a doctor to search for appointment in the case of more appointments. To make it easier, I have a ‘Search’ box in the navigation bar  which allows doctors to search for a patient by their USN.
&nbsp; &nbsp; &nbsp; Once everything is done, the doctor can logout of their account. Thus, in general, a doctor can login into his/her account, view their appointments and search for a patient. This is all about Doctor Module.

### Admin Module:
   
   &nbsp; &nbsp; &nbsp; This module is the heart of our project where an admin can see the list of all patients. Doctors and appointments and the feedback/queries received from the ‘Contact’ page. Also admin can add and delet doctor too. 
  &nbsp; &nbsp; &nbsp; Login into admin account can be done by toggling into admin tab of the Home page. Fig  shows the login page for admin.
  &nbsp; &nbsp; &nbsp; `username`: admin, `password`: admin123

![Screenshot (35)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/5743699e-c1fe-46f6-bc51-93564bf597b6)

On clicking the ‘Login’ button, the admin will be redirected to his/her dashboard as shown in 
Fig.

![Screenshot (38)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/5d3d2e1d-263b-4959-a2db-08c524b31c56)

This module allows admin to perform five major operations:

**1. View the list of all patients registered:**

  &nbsp; &nbsp; &nbsp; Admin can able to view all the patients registered. This includes the patients’ First Name, Last Name, USn, Gender, Email ID, Contact Number and Password. (See Fig 1.15).As like in doctor module, admin can also search for a patient by their USN in the search box.
  
  ![Screenshot (39)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/0c96a4dd-669a-4f8b-a611-81e4a893f9f4)
  
**2. View the list of all doctors registered:**

  &nbsp; &nbsp; &nbsp; Details of the doctors can also be viewed by the admin. This details include the Name of the doctor, Specilization, Password and Email shown in Fig. Searching for a doctor can be done by using the doctor’s Email ID in the search box.

![Screenshot (41)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/ad131d98-7ae4-459e-8488-2919720cb7be)

**3. View the Appointment lists:**

  &nbsp; &nbsp; &nbsp; Admin can also able to see the entire details of the appointment that shows the appointment details of the patients with their respective doctors. This includes the USN, First Name, Last Name, Email and Contact Number of patients, doctor’s name, Appointment Date and Time. 
  
 ![Screenshot (43)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/c448cd46-ac2b-416b-866e-6da4bc374aa9)
  
**4. Add Doctor:**

  &nbsp; &nbsp; &nbsp; Admin alone can add a new doctor since anyone can register as a doctor if we put this section on the home page. This form asks Doctor’s Name, Email ID, Password.
  
  ![Screenshot (44)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/eabcf1f0-2f11-4aac-b959-2e0e8d9c6be6)
  
**5. View User’s feedback/Queries:**

  &nbsp; &nbsp; &nbsp; Admin is allowed to view the feedback/Query that has been given by the user in the ‘Contact’ page (Refer Fig 1.3). This includes User’s Name, Email Id, Contact Number and the message(Feedback/ Query).
  
  &nbsp; &nbsp; &nbsp; Taking everything into consideration, admin can able to view the details of patients and doctors, appointment details, Feedback by the user and can add a new doctor. Once everything is done, the admin can logout from his account.


###  Cancel Appointments
	
   &nbsp; &nbsp; &nbsp; Patients and doctors can able to cancel their appointments.
    
  If the patient deletes the last record, then a label "deleted by you" will be displayed in the column 'Current Status' and the action will change to cancel state.
  
  Similarly doctors can also delete their appointments and patients can view their updated appointment details.
  
### Implementation : ChatBot

&nbsp; &nbsp; &nbsp;In Home page of RV Health Center Management System, added ChatBot toggle tab, Which is the robot it will give the information about RV Health Center and medical assis.

![Screenshot (26)](https://github.com/YuvarajRayamane/RV-Health-Center/assets/102849877/e06aacd2-26d8-4876-af9e-a3135e1dd168)

  
