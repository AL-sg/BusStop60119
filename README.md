# 🚌 Bus Stop 60119 — Android App

Real-time arrivals for Stop **60119 (Opp Boon Keng Stn)** — buses **13, 31 & 985**.
Calls LTA DataMall directly, no proxy needed.

---

## ✅ Option A — Build via GitHub (Easiest, no setup needed)

> GitHub builds the APK for you in the cloud for free.

### Steps:

1. **Create a free GitHub account** at https://github.com if you don't have one

2. **Create a new repository**
   - Go to https://github.com/new
   - Name it `BusStop60119`, keep it Public or Private, click **Create repository**

3. **Upload the project files**
   - On your new repo page, click **uploading an existing file**
   - Drag and drop ALL the extracted project files/folders into the browser window
   - Click **Commit changes**

4. **Wait for the build** (~2-3 minutes)
   - Click the **Actions** tab at the top of your repo
   - You will see a workflow called **"Build APK"** running
   - Wait for the green tick

5. **Download your APK**
   - Click on the completed workflow run
   - Scroll down to **Artifacts**
   - Click **BusStop60119-debug** to download the APK zip
   - Extract it — inside is `app-debug.apk`

6. **Install on your phone**
   - Transfer `app-debug.apk` to your Android phone
   - On your phone: Settings → Security → Allow unknown sources (or "Install unknown apps")
   - Open the APK file on your phone and tap **Install**

---

## 🖥️ Option B — Build on Your Own PC with Android Studio

### Requirements
- Android Studio from https://developer.android.com/studio (free, ~1GB)
- Windows, Mac, or Linux

### Steps:

1. Download and install Android Studio
2. Extract this ZIP and open Android Studio
3. File → Open → select the `BusStop60119` folder
4. Click **Sync Now** in the yellow bar that appears
5. Menu: Build → Build Bundle(s) / APK(s) → Build APK(s)
6. Wait ~2 minutes, then click **locate** in the popup
7. Transfer `app-debug.apk` to your phone and install it

---

## 📱 App Features

- Buses 13, 31, 985 tracked
- Next 3 arrival times per bus
- Crowd level: Seats Available / Standing / Limited (colour coded)
- Bus type icons: single-deck, double-deck, bendy
- Pull-to-refresh or tap Refresh button
- Sorted by soonest arrival

---

## ⚙️ Customisation

Change which buses to track in `MainActivity.kt`:
```kotlin
private val WATCHED_BUSES = listOf("13", "31", "985")
```

Change the bus stop:
```kotlin
private val BUS_STOP_CODE = "60119"
```

Get your own LTA API key free at https://datamall.lta.gov.sg/
