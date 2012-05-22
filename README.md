Little iPhone app to track your phone's location.  The key with
this one is that your location isn't shared with anyone: not Google,
not Place.me.

The key thing this app does is to use Apple's Core Location
capabilities that notify apps when "significant changes" happen,
like moving from one cell tower to another.  These notifications
happen when the app isn't "running" per se, and don't cause a drain
on your battery.   For more information see the Apple documentation
[1] on this, especially startMonitoringSignificantLocationChanges.

[1] - http://developer.apple.com/library/ios/#documentation/UserExperience/Conceptual/LocationAwarenessPG/CoreLocation/CoreLocation.html

The app will be free, and the source code publically available so
you can reassure yourself that no funny business is going on with
something that has access to something as important as your physical
location.

For more information, send me mail.  Thanks.

- Sef Kloninger (sef@kloninger.com)