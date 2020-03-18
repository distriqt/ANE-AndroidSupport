
# AndroidX 

> 
> AndroidX is a major improvement to the original Android Support Library, which is no longer maintained. androidx packages fully replace the Support Library by providing feature parity and new libraries.
>


## `androidx.core`

This contains the core functionality of the androidx libraries and is the most commonly used extension. 

It replaces the `com.distriqt.androidsupport.V4` android support extension.


## `androidx.appcompat`

This ANE provides some advanced application compatibility and layout components. 

- [com.distriqt.Dialog](https://airnativeextensions.com/extension/com.distriqt.Dialog)
- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)

It replaces the `com.distriqt.androidsupport.AppCompatV7` android support extension.


## `androidx.browser`

This ANE is used by the Native Web View ANE to display custom chrome tabs on Android. 

- [com.distriqt.NativeWebView](https://airnativeextensions.com/extension/com.distriqt.NativeWebView)
- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)

It replaces the `com.distriqt.androidsupport.CustomTabs` android support extension.


## `androidx.cardview`

This ANE is used to create Material Design style display cards. 

- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)

It replaces the `com.distriqt.androidsupport.CardViewV7` android support extension.


## `androidx.recyclerview`

This ANE provides access to a RecyclerView component used in some SDKs to create views. 

- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)

It replaces the `com.distriqt.androidsupport.RecyclerView` android support extension.



## `com.android.installreferrer`

This ANE provides access to installation referral information. 

- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)

It replaces the `com.distriqt.androidsupport.InstallReferrer` android support extension.


## `com.google.android.material`

This ANE provides some advanced design, layout and transition functionality. 

- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)

It replaces the `com.distriqt.androidsupport.CardViewV7` android support extension.





## Migration

As there will be no further updates to the Android Support libraries we are migrating all our extensions to AndroidX. Importantly Android Support libraries are not compatible with AndroidX so applications have to migrate all functionality from the support libraries to AndroidX together.

**This means you cannot use older extensions that rely on the Android Support libraries with the latest builds of our extensions and you must upgrade all of our extensions simultaneously.** 

Generally migrating is fairly simple. 

Simply use the table below to swap the extensions you currently have in your application.


| Android Support | Android X |
| --- | --- |
| `com.distriqt.androidsupport.V4` | `androidx.core` |
| `com.distriqt.androidsupport.AppCompatV7` | `androidx.appcompat` |
| `com.distriqt.androidsupport.CardViewV7` | `androidx.cardview` |
| `com.distriqt.androidsupport.CustomTabs` | `androidx.browser` |
| `com.distriqt.androidsupport.Design` | `com.google.android.material` |
| `com.distriqt.androidsupport.InstallReferrer` | `com.android.installreferrer` |
| `com.distriqt.androidsupport.RecyclerView` | `androidx.recyclerview` |


We have included all these extensions in the existing Android Support repository and will continue to use this repository to hold any common Google provided Android libraries that aren't dependent on the Google Play Services. 


**When migrating we also suggest you check the manifest additions and "Add the Extension" documentation. Some of the extensions will require changes to the manifest, where references to the Android Support libraries were being used. And there may be additional extensions required.**


>
> You should remove any android support ANEs you are using and replace them with the androidx equivalents.
> Check the documentation on the extensions you are using to confirm which of the new extensions you will need.
>






# Android Support ANEs

>
> The Android Support extensions are deprecated and should not be used in new applications. This information is left here for legacy applications and people requiring to support older applications.
>

The following summarises the functionality in each of the ANEs. Most are directly related to one ANE however several are shared amongst multiple extensions and may be in used in more the future.


## V4

This is the most commonly used ANE. It contains the Support v4 library which is the most 
commonly used component of the Android Support Library and that most of the other support 
libraries rely upon.

It contains a range of backward compatibility utilities that are used in many of our 
(and other providers) extensions. 

>
> **Note**: if you have been using the older `com.distriqt.AndroidSupport.ane` you should remove that
> ANE and replace it with the equivalent `com.distriqt.androidsupport.V4.ane`. This is the new 
> version of this ANE and has been renamed to better identify the ANE with regards to its contents.
>



## CardViewV7

This ANE is used to create Material Design style display cards. 

- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)



## CustomTabs

This ANE is used by the Native Web View ANE to display custom chrome tabs on Android.

- [com.distriqt.NativeWebView](https://airnativeextensions.com/extension/com.distriqt.NativeWebView)
- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)



## AppCompatV7

This ANE provides some advanced application compatibility and layout components. 

- [com.distriqt.Dialog](https://airnativeextensions.com/extension/com.distriqt.Dialog)
- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)


## Design

This ANE provides some advanced design, layout and transition functionality. 

- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)


## RecyclerViewV7

This ANE provides access to a RecyclerView component used in some SDKs to create views. 

- [com.distriqt.FacebookAPI](https://airnativeextensions.com/extension/com.distriqt.FacebookAPI)



