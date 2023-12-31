# Robot Framework Casper Experiments

Pre-requisite before installing Robot Framework
- Install Python in your machine first and set the PATH: [Python Installer](https://www.python.org/downloads/). Recommended to use stable version
- **Refer to the installation guide here**: [Python Installation Guide](https://docs.python.org/3/using/windows.html#the-full-installer)

Installing Robot Framework
- To install, type in terminal(in your IDE) or Python and type "pip install robotframework"
- Once installation is complete, you can use the following methods to verify:
  - Type robot --version" in your terminal, else
  - Type "pip show robotframework"
- You should see the following:
    ```
   Name: robotframework
   Version: 3.0.2
   Summary: A generic test automation framework
   Home-page: http://robotframework.org
   Author: Robot Framework Developers
   Author-email: robotframework@gmail.com
   License: Apache License 2.0
   Location: /Library/Python/2.7/site-packages
   Requires:
    ```
- **[Installation Guide](https://robotframework.org/?tab=1#getting-started)**

Installing SeleniumLibrary
- You will need SeleniumLibrary to run all Selenium functions for Robot Framework.
- To install type the following command: 'pip install --upgrade robotframework-seleniumlibrary'
- GitHub Repo: [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/)

How to Run Robot Framework

Running the entire scenarios in your robot file
- To run a line of code, type 'python -m robot -d output <robot file location>'
- Example: 'python -m robot -d output test\site_opening.robot'
- Alternative method to run Robot: 'robot -d Results Tests/Login_test_scenarios.robot'

Running a specific tag in your robot file
- To run a line of code, type 'python -m robot -i <tag name> <robot file location>'
- Example: 'python -m robot -d smoke test\site_opening.robot'

Plugins:

1) IntelliJ
- For IntelliJ users, you will need to install the following:
  - Python Community Edition by JetBrains
  - Robot Framework Language Server by Robocorp

Libraries
- FakerLibrary: https://github.com/guykisel/robotframework-faker
- CryptoLibrary: https://snooz82.github.io/robotframework-crypto/CryptoLibrary.html

Robot Framework Links:
- [Robot Framework Tutorial](https://www.youtube.com/playlist?list=PL4GZKvvcjS3u9FP3F9zW4ZbZB8pti2k37)
- [Selenium Library API Doc](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)