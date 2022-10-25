# Reflection9

### 1. Is there a default username/password that needs to be changed after installation? What are the password requirements? Is adding password protection optional? In which scenarios should it be enabled?

- Default username and passwords are intended to be placeholders and used only for the initial. in most database there is a default "root" username and we would be asked for entering the password but if there is any default password we should change right-away after installation. Default account root is often the source of unauthorized access by a malicious user. When possible, they should be disabled completely. If the account cannot be disabled, the default passwords should be changed immediately upon installation and configuration of the system or application.

- What are the password requirements?
  at least 8 characters long;
  a mix of upper and lowercase letters, numbers and symbols;
  not a dictionary word or a word that's easily guessed;
  changed regularly; and
  not reused on other accounts.

- Password protection allows you to protect your data set by assigning it a password. other users cannot read, change, or delete your data set without knowing that password. Password encryption is essential to store user credentials stored in a database securely. Without password encryption, your database would exploitable and its a high vulnerability!

- In which scenarios should it be enabled?
  protect your database against code injection attacks. Ex: Enterprise user management - The Enterprise user management feature enables an Oracle database to use the Oracle Identity Management Infrastructure by securely storing and managing user information.

https://www.vaadata.com/blog/how-to-securely-store-passwords-in-database/
