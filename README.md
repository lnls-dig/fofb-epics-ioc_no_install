# fofb-epics-ioc_no_install
Scripts for testing [lnls-dig/fofb-epics-ioc](https://github.com/lnls-dig/fofb-epics-ioc) (which depends on [lnls-dig/halcs](https://github.com/lnls-dig/halcs)) without affecting current installations.

### Setup steps

##### 1. Clone this repo

`git clone https://github.com/lnls-dig/fofb-epics-ioc_no_install.git /tmp/fofb-epics-ioc_no_install`

##### 2. Clone and compile both _halcs_ and _fofb-epics-ioc_ desired branches

`cd /tmp/fofb-epics-ioc_no_install`<br>
`./clone_compile.sh <HALCS_BRANCH> <FOFB_EPICS_IOC_BRANCH>`

### How to run FOFB IOC and HALCS FOFB instances
------
In `run` folder,

##### FOFB IOC instance (perfoms _fofb-ioc_'s role):

`./fofb_epics_ioc_run.sh <CRATE_PREFIX> <FOFB_IDX>` (exit by typing `exit` on IOC's shell)

##### HALCS FOFB instance (performs _halcs-be_'s role):

`./halcs_run.sh <FOFB_IDX>` (exit using `Ctrl + c` keybinding)
