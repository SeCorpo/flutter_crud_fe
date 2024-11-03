# flutter_crud_fe

A new Flutter project.

## Install on Linux Mint
After following the official installation guide: https://docs.flutter.dev/get-started/install/linux/web

At "Add Flutter to your PATH > Step 2": don't use ~/.bash_profile, but ~/.bashrc

Add flutter PATH to bash (terminal) with:

1. check shell (terminal runner) with: "echo $SHELL" if bash continue
2. "sudo gedit ~/.bashrc" (or other text editor)
3. Add "export PATH=~/sd/.tools/flutter/bin:$PATH" (or other tar unpack location)
4. If using chrome via flatpak also add to bashrc:
"export CHROME_EXECUTABLE="/var/lib/flatpak/app/com.google.Chrome/x86_64/stable/active/files/extra/chrome""
(default install location)
5. If chrome is not yet on the system install via:
"wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   " > "sudo apt install ./google-chrome-stable_current_amd64.deb" or via the official deb package,
this probably excludes the need to add CHROME_EXECUTABLE to the terminal script

Check if chrome is connected properly with: [terminal] "flutter doctor"

Run flutter web with: "flutter run -d chrome"
