# Bootstrap 3 easily customisable variables

### Set up ###
1. `meteor add yogiben:bootstrap`
2. Choose a starting theme from [Bootswatch](http://bootswatch.com/) like [Flatly](http://bootswatch.com/flatly/)
3. Download the variables.less file into your client folder or a subfolder e.g. `/client/variables.less`
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
