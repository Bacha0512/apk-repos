.class public final Lorg/abtollc/utils/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/AccelerometerListener$AccelerometerHandler;,
        Lorg/abtollc/utils/AccelerometerListener$OrientationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HORIZONTAL_DEBOUNCE:I = 0x1f4

.field private static final ORIENTATION_CHANGED:I = 0x4d2

.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_UNKNOWN:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccelerometerListener"

.field private static final VDEBUG:Z = false

.field private static final VERTICAL_ANGLE:D = 50.0

.field private static final VERTICAL_DEBOUNCE:I = 0x64


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lorg/abtollc/utils/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/abtollc/utils/AccelerometerListener$OrientationListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/abtollc/utils/AccelerometerListener$OrientationListener;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lorg/abtollc/utils/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lorg/abtollc/utils/AccelerometerListener$1;-><init>(Lorg/abtollc/utils/AccelerometerListener;)V

    iput-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 128
    new-instance v0, Lorg/abtollc/utils/AccelerometerListener$AccelerometerHandler;

    invoke-direct {v0, p0}, Lorg/abtollc/utils/AccelerometerListener$AccelerometerHandler;-><init>(Lorg/abtollc/utils/AccelerometerListener;)V

    iput-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lorg/abtollc/utils/AccelerometerListener;->mListener:Lorg/abtollc/utils/AccelerometerListener$OrientationListener;

    .line 53
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    iget-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/utils/AccelerometerListener;DDD)V
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/AccelerometerListener;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D

    .prologue
    .line 18
    invoke-direct/range {p0 .. p6}, Lorg/abtollc/utils/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method static synthetic access$100(Lorg/abtollc/utils/AccelerometerListener;)I
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/AccelerometerListener;

    .prologue
    .line 18
    iget v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lorg/abtollc/utils/AccelerometerListener;I)I
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/utils/AccelerometerListener;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lorg/abtollc/utils/AccelerometerListener;)I
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/AccelerometerListener;

    .prologue
    .line 18
    iget v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$300(Lorg/abtollc/utils/AccelerometerListener;)Lorg/abtollc/utils/AccelerometerListener$OrientationListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/AccelerometerListener;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mListener:Lorg/abtollc/utils/AccelerometerListener$OrientationListener;

    return-object v0
.end method

.method private onSensorEvent(DDD)V
    .locals 13
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 105
    const-wide/16 v8, 0x0

    cmpl-double v5, p1, v8

    if-eqz v5, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v5, p3, v8

    if-eqz v5, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v5, p5, v8

    if-nez v5, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    mul-double v8, p1, p1

    mul-double v10, p3, p3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 110
    .local v6, "xy":D
    move-wide/from16 v0, p5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 112
    .local v2, "angle":D
    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v2

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double v2, v8, v10

    .line 113
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpl-double v5, v2, v8

    if-lez v5, :cond_2

    const/4 v4, 0x1

    .line 115
    .local v4, "orientation":I
    :goto_1
    invoke-direct {p0, v4}, Lorg/abtollc/utils/AccelerometerListener;->setOrientation(I)V

    goto :goto_0

    .line 113
    .end local v4    # "orientation":I
    :cond_2
    const/4 v4, 0x2

    goto :goto_1
.end method

.method private setOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget v2, p0, Lorg/abtollc/utils/AccelerometerListener;->mPendingOrientation:I

    if-ne v2, p1, :cond_0

    .line 76
    monitor-exit p0

    .line 98
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/abtollc/utils/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget v2, p0, Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I

    if-eq v2, p1, :cond_2

    .line 87
    iput p1, p0, Lorg/abtollc/utils/AccelerometerListener;->mPendingOrientation:I

    .line 88
    iget-object v2, p0, Lorg/abtollc/utils/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 90
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 v0, 0x64

    .line 92
    .local v0, "delay":I
    :goto_1
    iget-object v2, p0, Lorg/abtollc/utils/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    .end local v0    # "delay":I
    .end local v1    # "m":Landroid/os/Message;
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 90
    .restart local v1    # "m":Landroid/os/Message;
    :cond_1
    const/16 v0, 0x1f4

    goto :goto_1

    .line 95
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lorg/abtollc/utils/AccelerometerListener;->mPendingOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public enable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 58
    const-string v0, "AccelerometerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    monitor-enter p0

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mPendingOrientation:I

    .line 63
    iget-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    :goto_0
    monitor-exit p0

    .line 70
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/abtollc/utils/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    iget-object v0, p0, Lorg/abtollc/utils/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
