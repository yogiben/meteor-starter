# Bootstrap 3 easily customisable variables

**The code has to be manually added to your packages folder. The core concept is [not supported by the packaging system](https://github.com/meteor/meteor/issues/2796).**

### Set up ###
1. `cd` to your `packages` folder
2. `git clone https://github.com/yogiben/meteor-bootstrap/edit/master/README.md yogiben:bootstrap`
3. `rm -R -f yogiben:bootstrap/.git` (so you can commit the code)
2. Choose a starting theme from [Bootswatch](http://bootswatch.com/) like [Flatly](http://bootswatch.com/flatly/)
3. Download the `variables.less` file into your client folder or a subfolder e.g. `/client/variables.less`
4. Create a less file in your client folder referencing the `variables.less` file

e.g. `/client/bootstrap.less`
```
@import "/client/variables.less";
@import "/packages/yogiben:bootstrap/bootstrap.import.less";
```
### Fonts ###
Copy the font import line from the `bootswatch.less` download from Bootswatch.com into your `bootstrap.less` file.

### Result ###
A bootstrap that is completely in your control.
