.class public Lorg/abtollc/utils/CallProximityManager;
.super Ljava/lang/Object;
.source "CallProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lorg/abtollc/utils/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/CallProximityManager$ProximityDirector;
    }
.end annotation


# static fields
.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final THIS_FILE:Ljava/lang/String; = "CallProximityManager"

.field private static powerLockReleaseIntMethod:Ljava/lang/reflect/Method;


# instance fields
.field private WAIT_FOR_PROXIMITY_NEGATIVE:I

.field private accelerometerEnabled:Z

.field private accelerometerManager:Lorg/abtollc/utils/AccelerometerListener;

.field private invertProximitySensor:Z

.field private isFirstRun:Z

.field private isProximityWakeHeld:Z

.field private mContext:Landroid/content/Context;

.field private mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

.field private mOrientation:I

.field private powerManager:Landroid/os/PowerManager;

.field private providerWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximitySensorTracked:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private useTimeoutOverlay:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/abtollc/utils/CallProximityManager$ProximityDirector;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "director"    # Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    .line 40
    iput-boolean v10, p0, Lorg/abtollc/utils/CallProximityManager;->invertProximitySensor:Z

    .line 41
    iput-boolean v10, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensorTracked:Z

    .line 42
    iput-boolean v9, p0, Lorg/abtollc/utils/CallProximityManager;->isFirstRun:Z

    .line 43
    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    .line 51
    iput-boolean v10, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerEnabled:Z

    .line 53
    iput v9, p0, Lorg/abtollc/utils/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I

    .line 195
    iput-boolean v10, p0, Lorg/abtollc/utils/CallProximityManager;->isProximityWakeHeld:Z

    .line 65
    iput-object p1, p0, Lorg/abtollc/utils/CallProximityManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    .line 68
    const-string v8, "sensor"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 69
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    .line 70
    new-instance v8, Lorg/abtollc/utils/AccelerometerListener;

    invoke-direct {v8, p1, p0}, Lorg/abtollc/utils/AccelerometerListener;-><init>(Landroid/content/Context;Lorg/abtollc/utils/AccelerometerListener$OrientationListener;)V

    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerManager:Lorg/abtollc/utils/AccelerometerListener;

    .line 71
    new-instance v8, Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-direct {v8, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->providerWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 74
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    if-eqz v8, :cond_2

    .line 75
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 76
    .local v7, "wman":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 77
    .local v6, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_0

    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->providerWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v11, "keep_awake_incall"

    .line 78
    invoke-virtual {v8, v11}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 81
    :cond_0
    const/4 v4, 0x0

    .line 82
    .local v4, "supportProximity":Z
    :try_start_0
    const-class v8, Landroid/os/PowerManager;

    const-string v11, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    .local v3, "proximityScreenOffWakeLock":I
    const/16 v8, 0x11

    invoke-static {v8}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "isWakeLockLevelSupported"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 87
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 88
    const-string v8, "CallProximityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Use 4.2 detection way for proximity sensor detection. Result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    if-eqz v4, :cond_1

    .line 96
    const-string v8, "CallProximityManager"

    const-string v9, "We can use native screen locker !!"

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    const-string v9, "com.csipsimple.CallProximity"

    invoke-virtual {v8, v3, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "proximityScreenOffWakeLock":I
    :cond_1
    :goto_1
    sget-object v8, Lorg/abtollc/utils/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    if-nez v8, :cond_2

    .line 107
    :try_start_1
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "release"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Lorg/abtollc/utils/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .end local v4    # "supportProximity":Z
    .end local v6    # "winfo":Landroid/net/wifi/WifiInfo;
    .end local v7    # "wman":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_2
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v8, :cond_3

    .line 119
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    iput-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    .line 120
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->providerWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v9, "invert_proximity_sensor"

    invoke-virtual {v8, v9}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lorg/abtollc/utils/CallProximityManager;->invertProximitySensor:Z

    .line 123
    :cond_3
    return-void

    .line 90
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "proximityScreenOffWakeLock":I
    .restart local v4    # "supportProximity":Z
    .restart local v6    # "winfo":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "wman":Landroid/net/wifi/WifiManager;
    :cond_4
    :try_start_2
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v11, "getSupportedWakeLockFlags"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lorg/abtollc/utils/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 92
    .local v5, "supportedFlags":I
    const-string v8, "CallProximityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Proxmity flags supported : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    and-int v8, v5, v3

    if-eqz v8, :cond_5

    move v4, v9

    :goto_3
    goto/16 :goto_0

    :cond_5
    move v4, v10

    goto :goto_3

    .line 102
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "proximityScreenOffWakeLock":I
    .end local v5    # "supportedFlags":I
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CallProximityManager"

    const-string v9, "Impossible to get power manager supported wake lock flags "

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "CallProximityManager"

    const-string v9, "Impossible to get power manager release with it"

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private shouldUseTimeoutOverlay()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->mContext:Landroid/content/Context;

    .line 281
    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 279
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->isProximityWakeHeld:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->isProximityWakeHeld:Z

    .line 231
    :cond_0
    invoke-direct {p0}, Lorg/abtollc/utils/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_1
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/abtollc/utils/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_2
    monitor-exit p0

    return-void

    .line 227
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
    .line 157
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    iget-boolean v5, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensorTracked:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/abtollc/utils/CallProximityManager;->isFirstRun:Z

    if-nez v5, :cond_2

    .line 164
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v5, v4

    .line 165
    .local v1, "distance":F
    float-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 166
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    move v0, v3

    .line 167
    .local v0, "active":Z
    :goto_0
    iget-boolean v5, p0, Lorg/abtollc/utils/CallProximityManager;->invertProximitySensor:Z

    if-eqz v5, :cond_0

    .line 168
    if-nez v0, :cond_5

    move v0, v3

    .line 170
    :cond_0
    :goto_1
    const-string v5, "CallProximityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Distance is now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "isValidCallState":Z
    iget-object v5, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    if-eqz v5, :cond_1

    .line 174
    iget-object v5, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    invoke-interface {v5}, Lorg/abtollc/utils/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v2

    .line 177
    :cond_1
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 179
    iget-object v5, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    if-eqz v5, :cond_2

    .line 180
    iget-object v5, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    invoke-interface {v5, v3}, Lorg/abtollc/utils/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    .line 190
    .end local v0    # "active":Z
    .end local v1    # "distance":F
    .end local v2    # "isValidCallState":Z
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lorg/abtollc/utils/CallProximityManager;->isFirstRun:Z

    if-eqz v3, :cond_3

    .line 191
    iput-boolean v4, p0, Lorg/abtollc/utils/CallProximityManager;->isFirstRun:Z

    .line 193
    :cond_3
    return-void

    .restart local v1    # "distance":F
    :cond_4
    move v0, v4

    .line 166
    goto :goto_0

    .restart local v0    # "active":Z
    :cond_5
    move v0, v4

    .line 168
    goto :goto_1

    .line 184
    .restart local v2    # "isValidCallState":Z
    :cond_6
    iget-object v3, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    if-eqz v3, :cond_2

    .line 185
    iget-object v3, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    invoke-interface {v3, v4}, Lorg/abtollc/utils/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    goto :goto_2
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 294
    iput p1, p0, Lorg/abtollc/utils/CallProximityManager;->mOrientation:I

    .line 295
    invoke-virtual {p0}, Lorg/abtollc/utils/CallProximityManager;->updateProximitySensorMode()V

    .line 296
    return-void
.end method

.method public declared-synchronized release(I)V
    .locals 7
    .param p1, "flag"    # I

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/abtollc/utils/CallProximityManager;->isProximityWakeHeld:Z

    if-eqz v2, :cond_2

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "usedNewRelease":Z
    sget-object v2, Lorg/abtollc/utils/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 204
    :try_start_1
    sget-object v2, Lorg/abtollc/utils/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

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

    .line 205
    const/4 v1, 0x1

    .line 211
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 212
    :try_start_2
    iget-object v2, p0, Lorg/abtollc/utils/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/abtollc/utils/CallProximityManager;->isProximityWakeHeld:Z

    .line 217
    .end local v1    # "usedNewRelease":Z
    :cond_2
    invoke-direct {p0}, Lorg/abtollc/utils/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    :cond_3
    iget-object v2, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    if-eqz v2, :cond_4

    .line 222
    iget-object v2, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/abtollc/utils/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :cond_4
    monitor-exit p0

    return-void

    .line 207
    .restart local v1    # "usedNewRelease":Z
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "CallProximityManager"

    const-string v3, "Error calling new release method "

    invoke-static {v2, v3, v0}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "usedNewRelease":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public restartTimer()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/abtollc/utils/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :cond_0
    return-void
.end method

.method public declared-synchronized startTracking()V
    .locals 3

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensorTracked:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->isFirstRun:Z

    .line 130
    const-string v0, "CallProximityManager"

    const-string v1, "Register sensor"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensorTracked:Z

    .line 136
    :cond_0
    iget-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerEnabled:Z

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerManager:Lorg/abtollc/utils/AccelerometerListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/AccelerometerListener;->enable(Z)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTracking()V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensorTracked:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->proximitySensorTracked:Z

    .line 146
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 147
    const-string v0, "CallProximityManager"

    const-string v1, "Unregister to sensor is done !!!"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerEnabled:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerManager:Lorg/abtollc/utils/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/AccelerometerListener;->enable(Z)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/utils/CallProximityManager;->accelerometerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProximitySensorMode()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 250
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/abtollc/utils/CallProximityManager;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 253
    .local v2, "horizontal":Z
    :goto_0
    const/4 v0, 0x0

    .line 254
    .local v0, "activeRegardingCalls":Z
    iget-object v3, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lorg/abtollc/utils/CallProximityManager;->mDirector:Lorg/abtollc/utils/CallProximityManager$ProximityDirector;

    invoke-interface {v3}, Lorg/abtollc/utils/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v0

    .line 258
    :cond_0
    const-string v3, "CallProximityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Horizontal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and activate for calls "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 262
    invoke-virtual {p0}, Lorg/abtollc/utils/CallProximityManager;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :goto_1
    monitor-exit p0

    return-void

    .end local v0    # "activeRegardingCalls":Z
    .end local v2    # "horizontal":Z
    :cond_1
    move v2, v1

    .line 250
    goto :goto_0

    .line 266
    .restart local v0    # "activeRegardingCalls":Z
    .restart local v2    # "horizontal":Z
    :cond_2
    if-nez v2, :cond_3

    .line 268
    .local v1, "flags":I
    :goto_2
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/abtollc/utils/CallProximityManager;->release(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 250
    .end local v0    # "activeRegardingCalls":Z
    .end local v1    # "flags":I
    .end local v2    # "horizontal":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 266
    .restart local v0    # "activeRegardingCalls":Z
    .restart local v2    # "horizontal":Z
    :cond_3
    :try_start_2
    iget v1, p0, Lorg/abtollc/utils/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
