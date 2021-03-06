# CarParking

## Project Title: Car Parking Slot Booking Web Application

## Project Description:
Nowadays while traveling to a new place or traveling for shopping or traveling to crowded places the main problem people face is where to park their four-wheeler safely. So assume there is a company Car Parking Solutions which came up with an idea to solve this problem by booking the parking slots beforehand while traveling to the concerned place. They also have workers who provide additional benefits to users who park their four-wheelers in their parking slots by dry cleaning, car-washing and also do check for any repairs in the concerned parking time.
They need you to create a beautiful online car parking slot booking web application. This application should enable the users to book the parking slot beforehand while traveling to any shopping malls, tourist spots, markets, pilgrim centers especially crowded places. The following functionalities should be supported by the application.
### Module 1: Log in/ Sign-up
Admin User can log in with their concerned username and password.Car owner user may register with the application by providing details such as First Name, Last Name, Username, Password, Confirm Password, Residential Address, Email ID, Mobile number, and Car Registration number. It is to be noted that the registration should be allowed only after verifying either phone number or Email with One-Time-password (OTP). The application should allow the registered users to get access to various functionalities of the application after successful login. If not registered, the users can also login with any of the social-media accounts like Facebook/ Gmail/ Instagram/ LinkedIn, etc. The registration details should be stored in a database appropriately and be maintained on a regular basis.
### Module 2: Creating Dashboard
There are various people who use this application for various needs. You are required to develop the customized dashboard for each of these users that allow them to perform their functions. For example, the admin who maintain and manage all the users and has complete control on the entire application data. The dashboard should allow the admin to do all his/her activities (e.g., adding workers, removing workers, etc.) . In the same way, a dashboard needs to be developed for the workers that allows them to provide car services such as dry cleaning, car-washing and repair checks, etc., during the parking hours.
Similarly, a customized dashboard for the users, who own the cars, should be allowed to do the
following activities after he/she successfully logged into:
- He/she should be able to view the available parking slots by specifying the location, date,
check-in time, and check-out time (shall include the number of hours he/she will park
their four-wheeler).
- Depending upon the availability, the relevant parking slots in that location and the
corresponding prices will be displayed to the user. If some parking slots are full it has to
show after how much time the respective parking slot will become free.
- The total cost of the parking slots for the specified number of hours should also be
displayed. Out of the parking slots displayed, when the user clicks on a particular slot, the
details like the maximum time a four-wheeler can park in this slot and the associated
amenities (like complimentary car dry cleaning, additional cost for car washing, additional
cost for air filling, additional cost for checking the health of tyres and repair them if
necessary, etc.) also be shown.
- And also for a particular slot concerned worker’s name with user rating should be
displayed. The rating will help the user in making a choice. If suppose for a particular
location, no parking slots are available, then the user should be given an option to enroll in
a waiting list. The waiting list is intended to allow an interested user to go ahead with the
booking in case any cancellations happen. In the event of any cancellation, the first user on
the waiting list will get a chance to book
### Module 3: Manage Parking Spaces and Parking Slots
These are the functionalities performed by the admin users.
####### For Admin User:
- Manage Parking Spaces for adding new parking spaces and can edit/view/list of all parking
spaces.
- Manage Parking Slots with each user for adding new parking spaces and can edit/view/list
of all parking spaces.
- Manage cars in parking for adding new parking spaces and can edit/view/list of all cars in
parking.
- Privilege to delete any worker from the list and also to add any worker to the list.
- Report of all workers working in respective parking slots, their user ratings, and the number
of hours they have worked from joining the company to till now beside their names.
##### For Car owner:
- User should be able to raise request for car parking space, parking slots of his/her choice as per his/her vehicle model.
- User can view his assigned car parking spaces, parking slots, duration and total cost.
### Module 4: Booking Confirmation/Modification/Cancellation
#### For Car Owners:
- If the user wants to confirm his/her booking, they will be charged first with a minimum amount i.e. Rs 100. Upon successful booking, the user will be provided with a booking reference number along with the parking slot details and the minimum amount will be deducted from either the corresponding fast tag account or the money wallet. It is to be noted that the users may add some money to their wallet account at any time after registration and this amount can be used for making payments at the time of checkout.
- A user can modify an existing booking up to 2 hours before the specified check-in time. Such cancellation can be done free of cost. If a user wants to modify the check-in and/or check-out times, the modification will be subject to the availability of the parking slots on that particular date. Beyond 2 hours, no modification will be allowed. If a user wants to cancel 1 hour or less than 1 hour before the check-in time the minimal advance amount which he/she paid at the time of booking will not be refunded.
- After booking or during any step of booking, the user should be provided with the facility to cancel his/her booking.
#### For Admin:
- Upon successful booking of a particular slot, the particular slot should not be visible for the next user.
- Similarly, if the booking is cancelled, the parking slot should be made available to the next user.
- When the user requests for the modification of booking, i.e., number of hours, slot with additional facilities like dry wash, etc., admin can accept/reject the user request based on the availability of such slots.
### Module 5: Bill payment and Feedback
#### For Car owner:
- During Checkout, the amount to be paid will be calculated as per the number of hours the vehicle is parked in the booked slot. The amount to be paid for 1 hour in the parking slot is Rs 25. Total amount to be paid is calculated as number of hours in the parking slot*Rs. 25. The remaining amount (minimum amount paid- total amount to be paid) +/- will be credited/debited from the fast tag account or the wallet accordingly.
- After the amount is deducted, the same will be notified to the user through a SMS. Here, notification can be sent to his/her registered mail or the mobile number.
- At the time of checkout, a link should be sent to the user for rating. The rating should either be a star rating or number rating with an additional comment section.
#### For Admin:
- After getting the rating for a particular slot, the new rating for that slot should be calculated based on this and the new rating should be reflected in the website immediately.
### Advanced Features:
- Prior to 30 minutes of their assigned time, the user can be notified of their time completion through a SMS.
- Depending on the car model and size, suggestions can be given to the user about the most suitable slots among the available slots.
- Incorporating GPS into the application to know the location of the nearest available slot.
- For a frequent customer (if he/she visited more than 5 times), Promocode can be generated to avail discount when he/she visits next time.
- Integrating with the real-world payment gateways or wallets such Paytm, Phonepe and Amazon Pay, etc., that allows the car owners to make payments towards parking charges and other service charges.
###Implementation Guidelines:
- The project has to be developed using any Java based Web Application Technologies such as Servlets, JSPs. The students are free to use any existing related APIs for implementation.
- You may use any IDEs/tools or other java frameworks (Spring, Struts, etc.) to develop the application. But you must be in a position to explain details if asked during the project evaluation.
- HTML, CSS and JavaScript, etc., may also be used for developing user interfaces in an more elegant way along with Java based technologies.
- It is to be noted that the graphical user interface should be made user-friendly and should be usable by a user belonging to any age group. Also, a user should be able to navigate across all the web pages from one page to another in an efficient manner.
- For storing the application data in persistent storage, you can use any type of database (MySQL, Oracle, etc.,). For example, JDBC API can be used to implement database connectivity to the application.
- You may use Apache Tomcat Server or Microsoft Internet Information Server for hosting the web application locally or even it can be hosted online using any free Web Host Server (if they offer free web space).
