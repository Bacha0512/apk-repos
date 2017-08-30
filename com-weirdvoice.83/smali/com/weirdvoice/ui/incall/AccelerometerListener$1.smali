.class Lcom/weirdvoice/ui/incall/AccelerometerListener$1;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/AccelerometerListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/AccelerometerListener$1;->this$0:Lcom/weirdvoice/ui/incall/AccelerometerListener;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/AccelerometerListener$1;->this$0:Lcom/weirdvoice/ui/incall/AccelerometerListener;

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

    # invokes: Lcom/weirdvoice/ui/incall/AccelerometerListener;->onSensorEvent(DDD)V
    invoke-static/range {v1 .. v7}, Lcom/weirdvoice/ui/incall/AccelerometerListener;->access$0(Lcom/weirdvoice/ui/incall/AccelerometerListener;DDD)V

    .line 139
    return-void
.end method
