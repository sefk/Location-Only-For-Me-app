Little iPhone app to track your phone's location.  The key with
this one is that your location isn't shared with anyone: not Google,
not Place.me.

The key thing this app does is to use Apple's Core Location
capabilities that notify apps when "significant changes" happen,
like moving from one cell tower to another.  These notifications
happen when the app isn't "running" per se, and don't cause a drain
on your battery.   For more information see the [Apple documentation][CL-doc]
on this, especially `startMonitoringSignificantLocationChanges`.

   [CL-doc]: http://developer.apple.com/library/ios/#documentation/UserExperience/Conceptual/LocationAwarenessPG/CoreLocation/CoreLocation.html

The app will be free, and the source code publically available so
you can reassure yourself that no funny business is going on here.
You're letting this app track your physical location, and it doesn't
get much more important than that.

For more information, send me mail.  Thanks.

\- Sef Kloninger ([sef@kloninger.com](mailto:sef@kloninger.com))
