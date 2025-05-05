# READ ME

This repo has all the resources you need to automate an email and is specifically designed for federal employees. The script executes an outgoing email to the user specified recipients. The content of the email will be *n* bullet points (user specified) of text strings that are randomly sampled *n* times (user specified) without replacement from a list of options.

# Instructions

1. First, you need to make sure you have the necessary R package by running the following code in R
```devtools::install_github("omegahat/RDCOMClient")```

2. Adjust the file 'auto_email_template.R' by changing recipients and cc email address and by changing the list of options to be used in the randomly generated sample that populates your bulleted list in email body.

3. Adjust the file 'execute_email_template.bat' by changing the relevant file paths.

4. After you customize necessary files, you can navigate to your start menu and search "task scheduler". From here, you want to follow the directions found [here](https://carlosivanrodriguez.com/how-to/automate_r_scripts.html) under the section titled "Configure Task Scheduler". Note: since the creation of this repo, the link as been updated and instructions are not the same as what the author of this current repo saw when creating this repo. However, the instructions on how to use Task Scheduler should not be much different.
