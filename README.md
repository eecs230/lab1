# EECS 230 Lab 1

## Installation

Before we can get started we need to install our development environment.
You’ll need a C++ compiler, the CLion IDE, and Git for version control.
You should be able to start on to the next section,
[GitHub Setup](#GitHubSetup), while files are downloading.

### C++ compiler and Git

#### Mac

OS X automatically installs toolchain, including Git, when you attempt to use it from the
command line. Thus, to install developer tools, run the *Terminal* program
(from `Applications/Utilities`) to get a command prompt. At the prompt, type

```
    clang
```

and press return. A dialog box will pop up and offer to install the command-line
developer tools for you. Say yes.

(Alternatively, you can install the latest version of *Command Line Tools for OS X*
manually [from Apple](https://developer.apple.com/downloads/), or install *XCode* from
the App Store.)

#### Windows

On Windows, you need to install MinGW (the C++ compiler) and Git separately:

  - MinGW

    1.  Download and run the installer from http://www.mingw.org/download/installer
    2.  Follow the prompts to install MinGW.
    3.  At the end, hit “Continue“ and the MinGW Installation Manager will open.
    4.  Select the “mingw32-base” and “mingw32-gcc-g++” packages
        by “marking for installation” using the check box.
    5.  Click the “Installation” menu to the top left corner and select “Apply Changes.”
    6.  Click “Apply” in the window that pops up.
    7.  You can quit after “All changes were applied successfully” appears.

  - Git

    1.  Download and run the installer from https://git-scm.com/download/win
    2.  Click “Next” for each question until “Adjusting your PATH environment” appears.
        Select “Use Git from the Windows Command Prompt” instead of the default option.
        Then continue clicking “Next” until the installation completes.
        
#### Linux, etc.

Make sure you have Git and a working C++14 toolchain installed.

### CLion (all platforms)

1.  Register for a student account at https://www.jetbrains.com/shop/eform/students

2.  Follow the instructions in your email to activate your account.

3.  Download CLion from https://www.jetbrains.com/clion/download

4.  Run the installer—defaults should be fine. (Windows: check all of the
    “Create associations” boxes when they appear.)

## GitHub Setup

Git is a source control tool that you’ll be learning more about later in this lab.
In order to share (well, hand in) code, we will use GitHub, a cloud Git service.
(Don’t worry if you don’t know what that means.) Thus, you will need a GitHub account,
and we will need to know your username:

1.  If you don’t already have a GitHub account, go to [github.com](https://github.com/) and sign up for one.

2.  Let us know your GitHub username by registering it [here](http://goo.gl/forms/fjlXl51Lsq).

## Testing That Everything Works

1. Fork on GitHub

2. Clone in CLion

3. Change name string

4. Commit & push

## The Low-down on Git Branching

If you have time remaining, start this interactive
[git branching tutorial](http://pcottle.github.io/learnGitBranching/). If you run out of time,
it would still be valuable to do it at home.
