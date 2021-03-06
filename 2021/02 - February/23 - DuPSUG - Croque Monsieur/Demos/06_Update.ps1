$Id = 'DemoUpdate'

$DataBinding = @{
    HeadingPlaceholder = 'Demo Update'
    TextPlaceholder    = 'This is the first example line of text'
}

$Text = 'HeadingPlaceholder', 'TextPlaceholder'
New-BurntToastNotification -Text $Text -UniqueIdentifier $Id -DataBinding $DataBinding


$DataBinding['TextPlaceholder'] = 'This is the second example line of text'
Update-BTNotification -UniqueIdentifier $Id -DataBinding $DataBinding -ErrorAction SilentlyContinue


$DataBinding['TextPlaceholder'] = 'This is the third example line of text'
Update-BTNotification -UniqueIdentifier $Id -DataBinding $DataBinding -ErrorAction SilentlyContinue
