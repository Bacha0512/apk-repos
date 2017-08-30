.class Lorg/abtollc/utils/AccelerometerListener$1;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/utils/AccelerometerListener;


# direct methods
.method constructor <init>(Lorg/abtollc/utils/AccelerometerListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/utils/AccelerometerListener;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/abtollc/utils/AccelerometerListener$1;->this$0:Lorg/abtollc/utils/AccelerometerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 120
    iget-object v1, p0, Lorg/abtollc/utils/AccelerometerListener$1;->this$0:Lorg/abtollc/utils/AccelerometerListener;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v0, v0, v6

    float-to-double v6, v0

    # invokes: Lorg/abtollc/utils/AccelerometerListener;->onSensorEvent(DDD)V
    invoke-static/range {v1 .. v7}, Lorg/abtollc/utils/AccelerometerListener;->access$000(Lorg/abtollc/utils/AccelerometerListener;DDD)V

    .line 121
    return-void
.end method
