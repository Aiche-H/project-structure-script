# Script for bash

## Saving the Script in a System-Wide Directory

1. **Save the Script:**

   - Open a text editor (e.g., `nano`, `vim`, or `TextEdit` in plain text mode) and paste the script into it.
   - Save the file as `create_structure`.

2. **Move the Script to a System-Wide Directory:**

   - You can place the script in a directory that is included in your `PATH`, such as `/usr/local/bin` or `/usr/bin`. For this example, we'll use `/usr/local/bin`.

3. **Make the Script Executable:**

   - Open Terminal.
   - Move the script to `/usr/local/bin`:
     ```sh
     sudo mv create_structure /usr/local/bin/
     ```
   - Make the script executable:
     ```sh
     sudo chmod +x /usr/local/bin/create_structure
     ```

4. **Run the Script:**
   - You can now run the script from any directory without specifying the full path:
     ```sh
     create_structure page1 page2 page3
     ```

## Full script

- [here](create_structure.sh)

## Detailed Instructions

1. **Save the Script:**

   - Save the script in a temporary directory or your current working directory as `create_structure`.

2. **Move the Script to `/usr/local/bin`:**

   - Open Terminal.
   - Navigate to the directory where you saved `create_structure`:
     ```sh
     cd /path/to/your/directory
     ```
   - Move the script to `/usr/local/bin`:
     ```sh
     sudo mv create_structure /usr/local/bin/
     ```

3. **Make the Script Executable:**

   - Make the script executable:
     ```sh
     sudo chmod +x /usr/local/bin/create_structure
     ```

4. **Run the Script:**
   - You can now run the script from any directory without specifying the full path:
     ```sh
     create_structure page1 page2 page3
     ```

By following these steps, you ensure that the script is available system-wide and can be run from any directory.
