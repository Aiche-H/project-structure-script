On Windows, you can save the PowerShell script in a directory that is included in your system's `PATH` environment variable. This will allow you to run the script from any location without specifying the full path. Here are the detailed steps to achieve this:

### Saving the Script in a System-Wide Directory on Windows

1. **Save the Script:**

   - Open a text editor (e.g., Notepad, Visual Studio Code, or any other text editor) and paste the PowerShell script into it.
   - Save the file with a `.ps1` extension, for example, `create_structure.ps1`.

2. **Move the Script to a System-Wide Directory:**

   - A common directory to use is `C:\Windows\System32`, but it is generally not recommended to modify this directory. Instead, you can create a custom directory and add it to your `PATH`.

3. **Create a Custom Directory:**

   - Create a directory for your scripts, for example, `C:\Scripts`.

4. **Add the Custom Directory to the `PATH` Environment Variable:**

   - Open the Start Menu and search for "Environment Variables" and select "Edit the system environment variables."
   - In the System Properties window, click the "Environment Variables" button.
   - In the Environment Variables window, find the `Path` variable in the "System variables" section and select it, then click "Edit."
   - In the Edit Environment Variable window, click "New" and add the path to your custom directory, for example, `C:\Scripts`.
   - Click "OK" to close all the windows.

5. **Move the Script to the Custom Directory:**

   - Move the `create_structure.ps1` file to the `C:\Scripts` directory.

6. **Make the Script Executable:**

   - PowerShell scripts are not executable by default due to security reasons. You need to set the execution policy to allow script execution.
   - Open PowerShell as an administrator.
   - Run the following command to set the execution policy to `RemoteSigned`:
     ```powershell
     Set-ExecutionPolicy RemoteSigned
     ```

7. **Run the Script:**
   - Open PowerShell.
   - Run the script from any directory without specifying the full path:
     ```powershell
     create_structure.ps1 page1 page2 page3
     ```

### Full Script for Reference

- [here](create_structure.ps1)

### Detailed Instructions

1. **Save the Script:**

   - Save the script in a temporary directory or your current working directory as `create_structure.ps1`.

2. **Create a Custom Directory:**

   - Create a directory for your scripts, for example, `C:\Scripts`.

3. **Add the Custom Directory to the `PATH` Environment Variable:**

   - Open the Start Menu and search for "Environment Variables" and select "Edit the system environment variables."
   - In the System Properties window, click the "Environment Variables" button.
   - In the Environment Variables window, find the `Path` variable in the "System variables" section and select it, then click "Edit."
   - In the Edit Environment Variable window, click "New" and add the path to your custom directory, for example, `C:\Scripts`.
   - Click "OK" to close all the windows.

4. **Move the Script to the Custom Directory:**

   - Move the `create_structure.ps1` file to the `C:\Scripts` directory.

5. **Set the Execution Policy:**

   - Open PowerShell as an administrator.
   - Run the following command to set the execution policy to `RemoteSigned`:
     ```powershell
     Set-ExecutionPolicy RemoteSigned
     ```

6. **Run the Script:**
   - Open PowerShell.
   - Run the script from any directory without specifying the full path:
     ```powershell
     create_structure.ps1 page1 page2 page3
     ```

By following these steps, you ensure that the PowerShell script is available system-wide and can be run from any directory on your Windows machine.
