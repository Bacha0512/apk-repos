.class public Lcom/weirdvoice/ui/incall/CallProximityManager;
.super Ljava/lang/Object;
.source "CallProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/weirdvoice/ui/incall/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;
    }
.end annotation


# static fields
.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final SCREEN_LOCKER_ACQUIRE_DELAY:I

.field private static final THIS_FILE:Ljava/lang/String; = "CallProximityManager"

.field private static powerLockReleaseIntMethod:Ljava/lang/reflect/Method;


# instance fields
.field private WAIT_FOR_PROXIMITY_NEGATIVE:I

.field private accelerometerEnabled:Z

.field private accelerometerManager:Lcom/weirdvoice/ui/incall/AccelerometerListener;

.field private invertProximitySensor:Z

.field private isFirstRun:Z

.field private isProximityWakeHeld:Z

.field private mContext:Landroid/content/Context;

.field private mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

.field private mOrientation:I

.field private mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

.field private powerManager:Landroid/os/PowerManager;

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximitySensorTracked:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private useTimeoutOverlay:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    sput v0, Lcom/weirdvoice/ui/incall/CallProximityManager;->SCREEN_LOCKER_ACQUIRE_DELAY:I

    .line 82
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;Lcom/weirdvoice/ui/incall/locker/ScreenLocker;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "director"    # Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;
    .param p3, "screenLocker"    # Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    .line 65
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->invertProximitySensor:Z

    .line 66
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    .line 67
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isFirstRun:Z

    .line 68
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    .line 76
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    .line 78
    const/4 v9, 0x1

    iput v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I

    .line 221
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    .line 90
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mContext:Landroid/content/Context;

    .line 91
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    .line 92
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    .line 94
    const-string v9, "sensor"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 95
    const-string v9, "power"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    iput-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    .line 96
    new-instance v9, Lcom/weirdvoice/ui/incall/AccelerometerListener;

    invoke-direct {v9, p1, p0}, Lcom/weirdvoice/ui/incall/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/weirdvoice/ui/incall/AccelerometerListener$OrientationListener;)V

    iput-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerManager:Lcom/weirdvoice/ui/incall/AccelerometerListener;

    .line 99
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    if-eqz v9, :cond_2

    .line 100
    const-string v9, "wifi"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 101
    .local v8, "wman":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 102
    .local v7, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_0

    .line 103
    const-string v9, "keep_awake_incall"

    invoke-static {p1, v9}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 106
    :cond_0
    const/4 v5, 0x0

    .line 107
    .local v5, "supportProximity":Z
    :try_start_0
    const-class v9, Landroid/os/PowerManager;

    const-string v10, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 108
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 109
    .local v4, "proximityScreenOffWakeLock":I
    const/16 v9, 0x11

    invoke-static {v9}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 111
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "isWakeLockLevelSupported"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 112
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 113
    const-string v9, "CallProximityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Use 4.2 detection way for proximity sensor detection. Result is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    if-eqz v5, :cond_1

    .line 121
    const-string v9, "CallProximityManager"

    const-string v10, "We can use native screen locker !!"

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    .line 123
    const-string v10, "com.weirdvoice.CallProximity"

    .line 122
    invoke-virtual {v9, v4, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proximityScreenOffWakeLock":I
    :cond_1
    :goto_1
    sget-object v9, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    if-nez v9, :cond_2

    .line 132
    :try_start_1
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 133
    const-string v10, "release"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    .line 132
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .end local v5    # "supportProximity":Z
    .end local v7    # "winfo":Landroid/net/wifi/WifiInfo;
    .end local v8    # "wman":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v9, :cond_3

    .line 144
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    .line 145
    const-string v9, "invert_proximity_sensor"

    invoke-static {p1, v9}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->invertProximitySensor:Z

    .line 148
    :cond_3
    return-void

    .line 115
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v4    # "proximityScreenOffWakeLock":I
    .restart local v5    # "supportProximity":Z
    .restart local v7    # "winfo":Landroid/net/wifi/WifiInfo;
    .restart local v8    # "wman":Landroid/net/wifi/WifiManager;
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getSupportedWakeLockFlags"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 116
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 117
    .local v6, "supportedFlags":I
    const-string v9, "CallProximityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Proxmity flags supported : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    and-int v9, v6, v4

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    :goto_3
    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 127
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proximityScreenOffWakeLock":I
    .end local v6    # "supportedFlags":I
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "CallProximityManager"

    const-string v10, "Impossible to get power manager supported wake lock flags "

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "CallProximityManager"

    const-string v10, "Impossible to get power manager release with it"

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private shouldUseTimeoutOverlay()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 305
    iput-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 2

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    sget v1, Lcom/weirdvoice/ui/incall/CallProximityManager;->SCREEN_LOCKER_ACQUIRE_DELAY:I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->delayedLock(I)V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_2
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 189
    iget-boolean v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isFirstRun:Z

    if-nez v5, :cond_2

    .line 190
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v5, v4

    .line 191
    .local v1, "distance":F
    float-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 192
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    .line 191
    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    move v0, v3

    .line 193
    .local v0, "active":Z
    :goto_0
    iget-boolean v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->invertProximitySensor:Z

    if-eqz v5, :cond_0

    .line 194
    if-eqz v0, :cond_5

    move v0, v4

    .line 196
    :cond_0
    :goto_1
    const-string v5, "CallProximityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Distance is now "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "isValidCallState":Z
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v5}, Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v2

    .line 203
    :cond_1
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 204
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->show()V

    .line 205
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v5, :cond_2

    .line 206
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v5, v3}, Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    .line 216
    .end local v0    # "active":Z
    .end local v1    # "distance":F
    .end local v2    # "isValidCallState":Z
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isFirstRun:Z

    if-eqz v3, :cond_3

    .line 217
    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isFirstRun:Z

    .line 219
    :cond_3
    return-void

    .restart local v1    # "distance":F
    :cond_4
    move v0, v4

    .line 191
    goto :goto_0

    .restart local v0    # "active":Z
    :cond_5
    move v0, v3

    .line 194
    goto :goto_1

    .line 209
    .restart local v2    # "isValidCallState":Z
    :cond_6
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->hide()V

    .line 210
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v3, v4}, Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    goto :goto_2
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mOrientation:I

    .line 321
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->updateProximitySensorMode()V

    .line 322
    return-void
.end method

.method public declared-synchronized release(I)V
    .locals 7
    .param p1, "flag"    # I

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    if-eqz v2, :cond_2

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "usedNewRelease":Z
    sget-object v2, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 230
    :try_start_1
    sget-object v2, Lcom/weirdvoice/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const/4 v1, 0x1

    .line 237
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 238
    :try_start_2
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    .line 243
    .end local v1    # "usedNewRelease":Z
    :cond_2
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->hide()V

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :cond_4
    monitor-exit p0

    return-void

    .line 233
    .restart local v1    # "usedNewRelease":Z
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "CallProximityManager"

    const-string v3, "Error calling new release method "

    invoke-static {v2, v3, v0}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "usedNewRelease":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public restartTimer()V
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->delayedLock(I)V

    .line 316
    :cond_0
    return-void
.end method

.method public declared-synchronized startTracking()V
    .locals 3

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->isFirstRun:Z

    .line 155
    const-string v0, "CallProximityManager"

    const-string v1, "Register sensor"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 157
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    .line 158
    const/4 v2, 0x3

    .line 156
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerManager:Lcom/weirdvoice/ui/incall/AccelerometerListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/AccelerometerListener;->enable(Z)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTracking()V
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    .line 171
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 172
    const-string v0, "CallProximityManager"

    const-string v1, "Unregister to sensor is done !!!"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerManager:Lcom/weirdvoice/ui/incall/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/AccelerometerListener;->enable(Z)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mScreenLocker:Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->tearDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProximitySensorMode()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 277
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 279
    .local v2, "horizontal":Z
    :goto_0
    const/4 v0, 0x0

    .line 280
    .local v0, "activeRegardingCalls":Z
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->mDirector:Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v3}, Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v0

    .line 284
    :cond_0
    const-string v3, "CallProximityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Horizontal : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and activate for calls "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_1
    monitor-exit p0

    return-void

    .end local v0    # "activeRegardingCalls":Z
    .end local v2    # "horizontal":Z
    :cond_1
    move v2, v1

    .line 277
    goto :goto_0

    .line 293
    .restart local v0    # "activeRegardingCalls":Z
    .restart local v2    # "horizontal":Z
    :cond_2
    if-nez v2, :cond_3

    .line 294
    .local v1, "flags":I
    :goto_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/CallProximityManager;->release(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 277
    .end local v0    # "activeRegardingCalls":Z
    .end local v1    # "flags":I
    .end local v2    # "horizontal":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 293
    .restart local v0    # "activeRegardingCalls":Z
    .restart local v2    # "horizontal":Z
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/weirdvoice/ui/incall/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
