# READ ME

This repo has all the resources you need to automate an email and is specifically designed for federal employees. The script executes an outgoing email to the user specified recipients. The content of the email will be n bullet points (user specified) of text strings that are randomly sampled m times (user specified) without replacement.

# Instructions

1. Adjust the file 'auto_email_template.R' by changing recipients and cc email address and by changing the list of options to be used in the randomly generated sample that populates your bulleted list in email body.

2. Adjust the file 'execute_email_template.bat' by changing the relevant file paths.

3. After you customize necessary files, you can navigate to your start menu and search "task scheduler". From here, you want to follow the directions found [here](https://www.carlosivanrodriguez.com/guides/workflow/automating-r-scripts-windows/) under the section titled "Use task Schedule R".