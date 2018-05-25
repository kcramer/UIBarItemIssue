# UIBarItemIssue

Demo of an NSInternalInconsistencyException with UIBarItem/UIBarButtonItem's UIAppearance.

This is a sample project to demonstrate an NSInternalInconsistencyException from the UIAppearance proxy 
on a UIBarButtonItem.  The issue was discovered while adding UIBarItem.theme_setTitleTextAttributes() to [SwiftTheme](https://github.com/jiecao-fm/SwiftTheme) to allow theming of the attributes of UIBarButtonItems.

Running the app will result in the exception being thrown.  Commenting out the last line in AppDelegate will prevent the error.  The actual exception appears to occur when a UIBarButtonItem is created and the UIAppearance applied.  The code that applies it has an issue with the selector for the theme.
