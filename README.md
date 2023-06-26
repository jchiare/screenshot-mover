# Screenshot Organizer Script

This script is a tool for MacOS users to automatically organize their screenshot files in a more structured way. It looks for screenshot files on the Desktop and moves them into folders based on the year and month the screenshot was taken.

The script assumes screenshots are named in the default MacOS format: `Screenshot YYYY-MM-DD at HH.mm.ss.png`.

## How it Works

The script works by doing the following:

1. It searches for all screenshot files on your desktop.

2. For each screenshot, it extracts the year and month from the file name.

3. It then checks if a directory corresponding to that year and month exists in the base path specified.

4. If the directory does not exist, it creates it.

5. It then moves the screenshot into the corresponding directory.

6. The operation is logged into the terminal, showing which file was moved and its new location.

## Usage

1. Download or clone this script to your local machine.

2. Open the script using a text editor, locate the line `base_path=~/Screenshots`, and replace `~/Screenshots` with the path to the directory where you want to store the screenshots.

3. Save and close the file.

4. To run the script, open the Terminal and navigate to the directory where the script is saved.

5. Type `bash scriptname.sh`, replacing `scriptname.sh` with the name of the script file, and press `Enter`.

6. The script will move all the screenshots from your desktop into folders named by year and month under the base path you specified.

**Note:** Ensure you have the necessary permissions to execute the script. You can use the command `chmod +x scriptname.sh` to make the script executable.

## Requirements

This script requires `bash` shell to run and is intended for MacOS users.

## License

This script is released under the MIT license. See LICENSE for more details.
