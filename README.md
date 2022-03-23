# README

# Track and Give (TAG)

## Project Description

This website will track donors and donations to allow nonprofits to better streamline their process of reallocating donations to other distribution centers, who in turn give these donations to the homeless or those who are unable to afford them.

## Project Intent 

My project is innovative because the [charity in focus/my inspiration](https://www.theunforgottenhaven.org/) currently does not have a computerized process of tracking donors or donations, so this would help make their nonprofit more efficient. My website will address the problem of neglecting individuals in poverty because if donations can be tracked more efficiently, then they can be distributed more efficiently. This should increase the chance that more individuals will receive donations compared to the current process of manually maintaining these donation supplies. Also, I would like to record the location in which specific items are available. By implementing this, distribution centers can find the closest locations to give their resources.

## Example Usage 

The three main functions of my program are searching within the data, adding data, and deleting data. My program will take user input and, based on the selected operation, perform one of the three functions on that piece of data. In the instance that a donation was received and workers want to add to the supply, then can select the data from a dropdown menu and the quantity of items to easily add that information. Administrators should be able to add or delete data, whereas general users might benefit the most from viewing the data rather than performing these functions. I will focus on New Jersey as the scope of charities and donation centers for this project. The reason I am focusing the operations performed on the data is because the main goal of my program is to allow workers in nonprofit organizations to track their supply of donations to better redistribute them. 

## Use Case Diagram

![UseCaseDiagram](https://github.com/lalimabhola/TAG/blob/prototype2/diagrams/Use_case_diagram.png)

## Use Case Descriptions
 - **Use case: Log in** (**note: Devise handles the log in process)
 - **Primary actor:** Admin User
 - **Goal in context:** To provide access to the system’s capability of modifying data.
 - **Preconditions:** The user must be registered in the system with an assigned password.
 - **Trigger:** The user submits their username and password into a login form.
 - **Scenario:**
	1. The user wants to enter the system to be allowed to change the data.
	2. The user opens the website and sees the home page with the login form.
	3. The user enters their username and password.
	4. The information is entered correctly and they can access their account.
 - **Exceptions:**
	1. The username is incorrect: upon hitting “login” an error message of “invalid username” is displayed. The system prompts the user to try again.
	2. The password is incorrect: upon hitting “login” an error message of “invalid password” is displayed. The system prompts the user to try again.
----------
 - **Use case:** Search
 - **Primary actor:** General or Admin user
 - **Goal in context:** The user wants to see the number of donations currently stored in the database.
 - **Preconditions:** The database is populated with donations as well as other relevant information about the donation.
 - **Trigger:** The user selects their desired criteria then hits “submit” to view search results.
 - **Scenario:**
	1.  The user wants to view all of the data that has been logged.
	2. The user goes to the site and navigates to the “Search” page.
	3. The option to search in the data is displayed on the screen.
	4. The user chooses the tags they want to retrieve then hits “submit” and a record of the relevant donations loads onto the page.
- **Exceptions:**
	1.  There is no data in the system to be viewed.
----------
- **Use case:** Add data
- **Primary actor:** Admin user
- **Goal in context:** To populate the donations database with entries as well as who donated (or if the donor prefers to be anonymous), types of donations, and quantity of donations.
- **Preconditions:** The organization has a paper record of what they would like to store electronically.
- **Trigger:** The user enters data in the appropriate boxes and submits the entry.
- **Scenario:**
	1.  The admin user wants to add data to the catalog of donation entries.
	2. The user goes to the site and navigates to the page to add entries to the site.
	3. The user enters the data in the required fields and clicks “Submit.”
	4. If the data entered were valid types, then it displays the message “successfully added.” If the data is invalid, then a message is displayed to “enter valid data.”
- **Exceptions:**
	1.  If the same entry was entered twice, then do not let the user add it and state “duplicate data, unable to add.”
----------
- **Use case:** Delete data
- **Primary actor:** Admin user
- **Goal in context:** To remove an entry from the donation catalog.
- **Preconditions:** The database is populated with valid data that can potentially be removed.
- **Trigger:** The user navigates to a specific row in the displayed data and selects “delete.”
- **Scenario:**
	1.  The user wants to delete an entry from the catalog as that donation might have been given away.
	2.  The user goes to the site and navigates to the delete page.
	3.  The screen displays all of the entries in the database (similar to view entries).
	4.  The display shows up with an option to delete an entry at the end of each column.
	5.  The user clicks on the “delete” button which will display a message “Successfully removed from catalog.”
- **Exceptions:**
	1.  There is no data in the system to be deleted.

## Design Class Diagram

![Design Class Diagram](https://github.com/lalimabhola/TAG/blob/prototype2/diagrams/Design_class_diagram.png)

## System Sequence Diagrams

![SystemSequenceDiagrams](https://github.com/lalimabhola/TAG/blob/prototype2/diagrams/System_seuqnce_diagrams.png)

## Statechart

![Statechart](https://github.com/lalimabhola/TAG/blob/prototype2/diagrams/State_chart.png)

### Welcome! To learn how to get started with contributing to this project, visit the resources below. These files can also be found in the `docs/` directory:

* [Installation Guide](docs/Installation_Guide.md)
  * [Setting up SSH keys with GitHub](docs/Setting_up_SSH_keys_GitHub.md)
  * [Setting up the correct database](docs/SQLite3_to_Postgres_on_Rails.md)
* [More helpful information](docs/More_helpful_info.md)
* [Guide to the .gitignore file](docs/.gitignore_Guide.md)