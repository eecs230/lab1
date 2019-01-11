# EECS 230 Lab 1

This lab will guide you in setting up your working environment for the
quarter. By the end you should be able to modify and run a simple Python
program that outputs “Hello, world!” to the screen; more importantly,
you will be ready for future assignments.

We need to install and configure several pieces of software:

  - Python **3.7** (a programming language implementation needed to run
    your programs)

  - PyCharm (an integrated development environment, which you will use
    to edit your programs)

  - The Pip package manager

  - Python packages `pipenv` and `mypy`

The steps are detailed below.

[PyCharm download]:
    https://www.jetbrains.com/pycharm/download/

[PyCharm install]:
    https://www.jetbrains.com/help/pycharm/install-and-set-up-pycharm.html#install-PyCharm

[github.com]:
    https://github.com/

[JetBrains student]:
    https://www.jetbrains.com/shop/eform/students

[CLT]:
    https://developer.apple.com/downloads/

[Homebrew]:
    https://brew.sh/

[Chocolatey]:
    https://chocolatey.org/install

[Git download]:
    https://git-scm.com/download/win

## Installation & Setup

### First Steps (All Platforms)

 1. Start downloading the [PyCharm installer][PyCharm download].

 2. If you don’t already have a GitHub account, go to [github.com] and
    sign up for one. (You will use GitHub to submit your homework.)

 3. Let us know your GitHub username by registering it
    [here](http://goo.gl/forms/fjlXl51Lsq). (I need to know your GitHub
    username so I know whose homework is whose.)

 4. Register for a student JetBrains account [on their
    website][JetBrains student]. Once the email arrives, follow the
    instructions to activate your account.

### Platform-specific Steps

#### Mac OS

 1. Mac OS automatically installs its developer tools, including Git,
    when you attempt to use it from the command line for the first time.
    Thus, to install developer tools, run the *Terminal* program (from
    `/Applications/Utilities`) to get a command prompt. At the prompt,
    run this command:

        $ clang

    (To run a command, don't type the `$`, and do press return
    afterward. By convention, `$` stands for the prompt, which will
    actually be something like `tov@mannequin:~$`.)

    If it prints `clang: error: no input files` then you have it
    installed already. Otherwise, a dialog box will pop up and offer to
    install the command-line developer tools for you. Say yes.

    (Alternatively, you can install the latest version of *Command Line
    Tools for OS X* manually [from Apple][CLT], or install *XCode* from
    the App Store.)

 2. The next step is to install [Homebrew], which is a package manager
    for installing a variety of Unix programs on OS X. To do so, run
    this command into your terminal:

        $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    To check that Homebrew is installed, run

        $ brew --version

    at the command prompt. Mine reports version 1.8.6; yours should be
    similar.

 3. Now we can use Homebrew to install Python. The command is:

        $ brew install python

    To confirm that the correct version of Python is now installed, run

        $ python3 --version

    Mine reports Python 3.7.2, and yours should be similar.

    (Note Mac OS X comes with a `python` executable already installed,
    but that’s Python **2.7**, and we need **3.7**.)

 4. Once Python is installed, use Python’s package manager, Pip, to
    install some packages:

        $ pip3 install pipenv mypy

    Once that has completed, confirm that it installed by running

        $ pipenv --version
        $ mypy --version

    Mine reports version 2018.11.26 for pipenv and version 0.650 for
    mypy; yours should be similar.

 5. Install PyCharm from the .dmg that you downloaded earlier.
    Double-click the .dmg to open it, and then drag the PyCharm app
    into the Applications folder. Then you can eject and delete the
    .dmg.

#### Windows

 1. The first step is to install Chocolatey, which is a package manager
    for Windows that knows how to install Python (among other things).
    Follow the instructions [here][Chocolatey].

 2. Once Chocolatey is installed, we can use it to install Python and
    Git. As for installing Chocolatey, you will need to use an
    administrator command shell, but you should close and reopen it
    first. Then run the command:

        > choco install -y python git

    (To run a shell command, don't type the `>`, and do press return
    afterward. By convention, `>` stands for the prompt, which will
    actually be something like `C:\Windows\system32>`.)

    To confirm that the correct versions of Python and Git are now
    installed, close your adminstrator command prompt and open a new
    (non-adminstrator) command prompt. Run:

        > py --version

    Mine reports Python 3.7.2, and yours should be similar.

    Then run:

        > git --version

    Mine says 2.20.1.windows.1, and your should be similar.

 3. Once Python is installed, use Python’s package manager, Pip, to
    install some packages:

        $ py -m pip install pipenv mypy

    During installation, Pip will print some warnings that some
    directory (`C:\Python37\Scripts`, in my case) is “not on PATH.”
    This means that the installed programs cannot be run just by typing
    their names alone, but that you have to specify the exact location.
    In any case, take note of the installation path, as you may need it
    later when configuring PyCharm.

    Once the installation has completed, confirm that it installed by
    running

        $ py -m pipenv --version
        $ py -m mypy --version

    Mine reports version 2018.11.26 for pipenv and version 0.650 for
    mypy; yours should be similar.

 4. Install PyCharm from the .exe installer that you downloaded earlier.
    The installer will give you several options to configure. You may
    want to select these three:

      - 64-bit launcher: to create an icon to start PyCharm

      - Add “Open Folder as Project”: to allow you to open project
        directories easily

      - .py: to allow you to open Python files in PyCharm by double
        clicking them

    There is no need to change the Start Menu folder.

#### Linux

 1. Using your distribution’s package manager, install the packages for
    the latest avaiable releases of Git, GCC/G++, Make, Python 3.x, and
    Pip. On Ubuntu, this might look something like:

        $ sudo apt-get update
        $ sudo apt-get install build-essential git python3 python3-pip python3-dev

    There should be instructions for your distribution.

    To confirm that the correct version of Python is now installed, run:

        $ python3 --version

    Mine reports Python 3.7.2, and yours should be similar.

 2. Once Python is installed, use Python’s package manager, Pip, to
    install some packages:

        $ pip3 install pipenv mypy

    Once that has completed, confirm that it installed by running

        $ python3 -m pipenv --version
        $ python3 -m mypy --version

    Mine reports version 2018.11.26 for pipenv and version 0.650 for
    mypy; yours should be similar.

 3. Install PyCharm. There are some instructions [here][PyCharm
    install].

### Last Steps (All Platforms)

 1. Launch PyCharm for the first time. You probably won't have settings
    to import, and for the settings it asks you about, the defaults are
    fine.

 2. There are a few PyCharm plugins that will make some things easier
    for us later. On initial the PyCharm screen (which you'll see when
    you don't have a project open), there is a “Configure” drop-down
    at the bottom; click that, and choose the “Plugins” option.

    On the Marketplace tab (which is open initially), search for and
    install these plugins:

      - .ignore
      - Mypy
      - Toml

    Then, go to the Installed tab, and confirm that the Git Integration
    plugin is installed. (If not, install it on the Marketplace tab.)

    Click OK to exit the plugins configuration, and then restart PyCharm
    so that the plugins can take effect.

## Testing That Everything Works

Once we have everything set up, the main task for this lab is to make
sure it actually works for you. The code for this lab is a Python
project hosted on GitHub. In this section, you will make your own copy
(*fork*) of the project on GitHub, make a local copy to work on using
PyCharm, make a small change, and then push your changes back to GitHub.
(Note that for your homework, you **will not** fork, but will be given a
private repository to use.)

 1. Go to the [lab repo page](https://github.com/eecs230/lab1) and click
    “Fork” in the upper right. (If it asks where to fork it, choose your
    GitHub account.) This will make a copy of the lab1 project in your
    own GitHub account. You can see my forked copy at
    [https://github.com/tov/lab1](https://github.com/tov/lab1). Yours
    should look similar, but with your username in place of “tov”.

 2. Above the file listing table, you should see a row of buttons
    starting with “Branch: master ▾” and “New pull request”. On the far
    right of that row, you should see a green button labeled “Clone or
    download ▾”. Click this to open the menu; the title should be “Clone
    with HTTPS”. (If it says “Clone with SSH” instead, click the “Use
    HTTPS” link to the right to switch it.) The text in the box the
    below is your repository URL, which identifies where to locate your
    code when using other programs, such as PyCharm or the Git
    command-line tool. Copy your repository URL to the clipboard. Mine
    is `https://github.com/tov/lab1.git`, and yours should be similar.

 3. Now that you have a URL for your own lab1 repository, you will
    *clone* it in PyCharm, which makes a local copy that you can work
    with. If you are on the initial PyCharm screen, which presents
    recently opened files and three main options, choose the last
    option, “Check out from Version Control ▾”. (If you have a project
    open already then you’ll find this option on the “VCS” menu.) Choose
    **Git**, **not GitHub**, as the kind of repository. Paste your repo
    URL where it asks for the “Git Repository URL”. The other options
    let you choose where to put your local copy of the project; change
    them if you like, and click “Clone”. This should create a new
    PyCharm project and offer to open it for you. Say yes.

 4. You should now be able to run Python programs. PyCharm should
    display a list of files in the Project pane on the left side of the
    window by default. (If the Project pane isn’t there, you’ll have to
    open it. Press Ctrl-Tab to get a list of available windows and
    panes; then repeatedly release and press Tab, while keeping Ctrl
    down, to cycle through the options.) Using the Project pane,
    navigate to the file `hello.py` (you may have to uncollapse the
    `lab1` directory first) and double click to open it in PyCharm's
    editor. You should see a Python program that looks like this:

        #!/usr/bin/env python3

        name = 'world'

        print('Hello, ' + name + '!')

    When you open the file for the first time, PyCharm will complain
    that some things aren't set up properly and offer to fix them for
    you. In particular:

      - It may say “No Python interpreter configured for the project“,
        and give you the option to “Use Pipenv interpreter”. Go with
        that.

        (If it doesn't give you that option then it may be having
        trouble finding the `pipenv` executable. In that case, ask your
        TA.)

      - Or, it may say “Pipenv interpreter is associated with another
        project: …” and offer to “Fix Pipenv interpreter”. Do that.

      - After that, it is quite likely to say something like “Package
        requirements … are not satisfied” and offer to “Install
        requirements from Pipfile.lock”. Do that too.

      - Along the way, it may complain “Mypy Plugin: Mypy missing” and
        offer to install it for you, or it may say something about an
        “IDE Error”. In either case, ignore it! Once all requirements
        are installed from `Pipfile.lock` (the previous bullet) then
        these problems should go away.

    To run the program, right-click anywhere in the editor window and
    choose the “Run 'hello'” option. (If that option doesn't appear, it
    means that PyCharm is still thinking, which is indicated by some
    text in the status bar at the bottom of the Window. Wait it out and
    try again.)

    When you finally manage to run the program, a pane will open to show
    the results. It should look something like this:

        /Users/tov/.local/share/virtualenvs/lab1--Ml6AzKP/bin/python /Users/tov/Desktop/lab1/hello.py
        Hello, world!

        Process finished with exit code 0

    Once you've run the program once, it should appear in a menu of
    program configurations in the upper-right. To re-run a program, you
    can select it from that menu and then click the “play”
    (green, right-pointing triangle) button.

 5. Now we are going to make a small change to the program. (It’s okay
    if you don’t understand what we’re doing here yet—I don’t expect you
    to.)

    Instead of greeting the world, modify the program to greet you. You
    can do this by changing `'world'` to something else. For example, I
    would change that line to:

        name = 'Jesse'

    Run the program again and make sure your change worked.

 6. Next, we are going to test Mypy, which can checks your Python for
    some kinds of errors without running it. Open the `hello_typed.py`
    file, which is the same as `hello.py` except for a *type annotation*
    on the `name` variable:

        name: str = 'world'

    Change the type, `str`, to `int` (which is wrong):

        name: int = 'world'

    It may take a few seconds after you make the change, but if Mypy is
    set up correctly, some parts of the program will soon become
    highlighted to indicate warnings. Hovering over those highlights
    will display the warning in a tooltip. For example, hovering over
    the first occurence of `name` gives me this warning: “Mypy:
    Incompatible types in assignment (expression has type "str",
    variable has type "int")”. You should see something similar.

 7. There are two steps involved in saving your changes using Git. The
    first step is to *commit* your changes to the local repository,
    which makes a new version locally. Then you need to *push* your
    changes to the remote repository (GitHub). To do the former, select
    “Commit Changes...” from the VCS menu. It will give you a chance to
    review the changes and write a descriptive comment about the change
    before committing. Then push to GitHub using the “Push...” command
    from the “Git” submenu of the “VCS” menu.

 8. Now your changes should be visible in your forked repository on
    GitHub. Go back to your repo page, navigate to `hello.py`, and
    confirm that your name has replaced `'world'`.

## Understanding Git

Git is a *source control* tool. You may be unfamiliar with this concept,
but most programmers consider source control to be essential to their
work. In short, source control keeps track of each version of your
files, so that you can:

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
are stored) online to facilitate collaboration. We will be using GitHub
for partner collaboration, homework submission, and possibly code
reviews.

If you have time remaining, start this interactive [git branching
tutorial](http://pcottle.github.io/learnGitBranching/). If you run out
of time, it would still be valuable to do it at home.
