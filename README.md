## How to Run Project
I added 2 options, with Docker and with Robot Framework.

# First Option (only runs on MacOS):

1. Prerequisites
* You need to have Python 3.9
```sh
brew install python@3.9
```

* Create Virtual Environment
```sh
python3.9 -m venv .env
```

* Activate Virtual Environment
```sh
. .env/bin/activate
```

2. Install 
*  [Robot Framework](https://pypi.org/project/robotframework/)
*  [robotframework-selenium2library](https://pypi.org/project/robotframework-selenium2library/)

  ```sh
  pip install -r ./requirements.txt
  ```

3. Run  ```sh
  robot tests
  ``` command to run tests.


# Second Option:

1. Prerequisites
Install 
*  [Docker](https://docs.docker.com/engine/install/)

2. Create Docker container
Run ```sh
   docker build -t <container_name> .
    ```
3. Run Docker container
Run ```sh
   docker run -d -it <container_name> /bin/bash
    ```


# SQA-Automation-Test
The purpose of this project is to test your automation coding skills.
## Project Requirements

1. Python >= 3.5.0
2. PyP
3. Robot framework Version 4.1.3
4. Visual Studio Code
5. Chromedriver

## Instructions

1. Make sure to have Python 3 installed in order to install the pyp packages. 
2. With Pyp install: robotframework and robotframework-selenium2library.
3. Download the latest stable version of chromedriver.
4. Create a new branch with your name on this Repository and start a new project.
5. Create the robot framework test case explained below.
6. Submit a pull request to master.

## Test case steps
You can follow [Robotframwork Selenium Documentation](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) for guidance and develop the test case in robotframework.
1. Browse to [React shopping cart demo](https://react-shopping-cart-67954.firebaseapp.com/).
2. Use the size filter to select size M and add to cart 1 shirt.
3. Use the size filter to unselect M size and select L size.
4. Compulsively add 6 shirts to your cart.
5. Come back to your senses and delete 4 shirts from your cart.
6. Click checkout button.
