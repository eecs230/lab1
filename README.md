# EECS 230 Lab 1

Before we can get started we need to install our development
environment. You’ll need a C++ compiler, the CLion IDE, the SDL2
graphics libraries, and Git for version control. In this lab you will
also create a GitHub account (if you don’t already have one) and test
your toolchain setup.

[SDL2 Mac]:
    https://users.eecs.northwestern.edu/~jesse/course/eecs211/files/SDL2-all.dmg

[MinGW]:
    https://users.eecs.northwestern.edu/~jesse/course/eecs211/files/MinGW-SDL2.exe

[CLion download]:
    https://www.jetbrains.com/clion/download

[Git download]:
    https://git-scm.com/download/win

[CLT]:
    https://developer.apple.com/downloads/

[JetBrains student]:
    https://www.jetbrains.com/shop/eform/students

## Downloads

For all platforms, you will need:

  - [CLion installer][CLion download]

Additional installation varies by platform.

### Mac OS

You will need to download:

  - Our custom [SDL2 disk image][SDL2 Mac]

### Windows

You will need to download:

   - Our custom [installer for MinGW-w64 with SDL2][MinGW]

   - [Git installer][Git download]

### Linux, etc.

Make sure you have Git and a working C++14 toolchain installed. You
should also install the development packages for SDL2, SDL2_image,
SDL2_ttf, and SDL2_mixer.

## Setup

### Mac OS

Mac OS automatically installs its toolchain, including Git, when you
attempt to use it from the command line for the first time; you will
still have to install the SDL2 libraries yourself.

 1. Thus, to install developer tools, run the *Terminal* program (from
    `Applications/Utilities`) to get a command prompt. At the prompt,
    type

        clang

    and press return. If it prints `clang: error: no input files` then you
    have it installed already. Otherwise, a dialog box will pop up and offer
    to install the command-line developer tools for you. Say yes.

    (Alternatively, you can install the latest version of *Command Line
    Tools for OS X* manually [from Apple][CLT], or install *XCode* from
    the App Store.)

 2. Once you have the developer tools installed, you need to install
    the SDL2 libraries. Open the [`SDL2-all.dmg`][SDL2 Mac] disk image
    and drag the four frameworks into the linked `/Library/Frameworks`
    directory. You may have to authenticate as an administrator.

### Windows

On Windows, you need to install MinGW-w64 (the C++ compiler) and Git
separately:

 1. Run the [`MinGW-SDL2.exe` installer][MinGW] and follow the prompts
    to install MinGW—w64. You should usually install it to `C:\MinGW`,
    but wherever you install it, take note, as you will have to
    configure CLion to find it later.

 2. Run the [Git installer][Git download]. Click “Next” for each
    question until “Adjusting your PATH environment” appears. Select
    “Use Git from the Windows Command Prompt” instead of the default
    option. Then continue clicking “Next” until the installation
    completes.

### All platforms

On all platforms you will need to follow these steps to set up the CLion
IDE:

 1. Register for a student JetBrains account [on their
    website][JetBrains student].

 2. Follow the instructions in your email to activate your account.

 3. Run the [CLion installer][CLion download]—defaults should be fine.
    (Windows: Check all of the “Create associations” boxes when they
    appear.)

 4. Windows only: Set the toolchain in CLion to the location where you
    installed MinGW. The folder you select should contain subfolders
    with names like `bin` and `lib`. Ignore any warnings about version
    numbers.

## GitHub Setup

Git is a source control tool that you’ll be learning more about later in
this lab. In short, it keeps track of each version of your files, so
that you can:

  - Go back to any previous version. This is useful because it means
    that mistakes are easy to undo, and it’s safe to experiment.

  - Have multiple versions (*branches*) simultaneously. You may use
    separate branches for different features you are developing or ideas
    you are trying, so that you can switch between them without them
    interfering with one another. This also allows multiple developers
    to work on the same project concurrently without stepping on each
    other’s toes.

  - Copy changes from one version to another. For example, if you are
    happy with a feature that you developed in a *feature branch*, then
    you can copy the changes into the main (*master*) branch.

GitHub is a service that hosts Git repositories (where all the versions
are stored) online to facilitate collaboration. In particular, you will
(probably) use GitHub when handing in your homework. Thus, you will need
a GitHub account, and we will need to know your username:

1.  If you don’t already have a GitHub account, go to
    [github.com](https://github.com/) and sign up for one.

2.  Let us know your GitHub username by registering it
    [here](http://goo.gl/forms/fjlXl51Lsq).

## Testing That Everything Works

Once we have everything set up, the main task for this lab is to make
sure everything works. The code for this lab is a CLion project hosted
on GitHub. In this section, you will make your own copy (*fork*) of the
project on GitHub, make a local copy to work on using CLion, make a
small change, and then push your changes back to GitHub. (Note that for
your homework, you **will not** fork, but will be given a private
repository to use.

1. Go to the [lab repo page](https://github.com/eecs230/lab1) and click
   “Fork” in the upper right. (If it asks where to fork it, choose your
   GitHub account.) This will make a copy of the lab1 project in your
   own GitHub account. You can see my forked copy at
   [https://github.com/tov/lab1](https://github.com/tov/lab1). Yours
   should look similar, but with your username in place of “tov”.

2. Above the file listing table, you should see a row of buttons
   starting with “Branch: master ▾” and “New pull request”. On the far
   right of that row, you should see a green button labeled “Clone or
   download ▾.” Click this to open the menu; the title should be “Clone
   with HTTPS.” (If it says “Clone with SSH” instead, click the “Use
   HTTPS” link to the right to switch it.) The text in the box the below
   is your repository URL, which identifies where to locate your code
   when using other programs, such as CLion. Copy your repository URL to
   the clipboard. Mine is `https://github.com/tov/lab1.git`, and yours
   should be similar.

3. Now that you have a URL for your own lab1 repository, you will
   *clone* it in CLion, which makes a local copy that you can work with.
   If you are on the initial CLion screen, which presents recently
   opened files and four main options, choose the last option, “Check
   out from Version Control”. (If you have a project open already then
   you’ll find this option on the “VCS” menu.) Choose **Git**, **not
   GitHub**, as the kind of repository. Paste your repo URL where it
   asks for the “Git Repository URL”. The other options let you choose
   where to put your local copy of the project; change them if you like,
   and click “Clone”. This should create a new CLion project, which you
   can open.

4.  You should now be able to build and run the lab1 project. Choose
    “Run 'lab1'” or something like that from the “Run” menu. The program
    should compile and run, printing the message

    ```
    Hello, world!
    ```

5.  Now we are going to make a small change to the program. (It’s okay
    if you don’t understand what we’re doing here yet—I don’t expect you
    to.) The lab1 project should contain a subdirectory `src`, which
    contains a C++ source file `lab1.cpp`. Using the project browser
    on the left, navigate to this file and open it. The entire text
    of the file should read:

    ```
    #include <eecs230.h>

    int main()
    {
        string name = "world";
        cout << "Hello, " << name << "!\n";
    }
    ```

    Instead of greeting the world, modify the program to greet you. You
    can do this by changing `"world"` to something else. For example, I
    would change it to:

    ```
        string name = "Jesse";
    ```

    Run the program again and make sure your change worked.

6. There are two steps involved in saving your changes using Git. The
   first step is to *commit* your changes to the local repository, which
   makes a new version locally. Then you need to *push* your changes to
   the remote repository (GitHub). To do the former, select “Commit
   Changes...” from the VCS menu. It will give you a chance to review
   the changes and write a descriptive comment about the change before
   committing. Then push to GitHub using the “Push...” command from the
   “Git” submenu of the “VCS” menu.

7. Now your changes should be visible in your forked repository on
   GitHub. Go back to your repo page, navigate to `src/lab1.cpp`, and
   confirm that your name has replaced `"world"`.

## The Low-down on Git Branching

If you have time remaining, start this interactive [git branching
tutorial](http://pcottle.github.io/learnGitBranching/). If you run out
of time, it would still be valuable to do it at home.
