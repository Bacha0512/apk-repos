.class Lfr/acetelecom/vc/CallActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/CallActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity$10;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$10;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proximity Sensor Reading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "Call"

    const-string v1, "??vvvvvv"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity$10;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-virtual {v1}, Lfr/acetelecom/vc/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity$10;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-virtual {v2}, Lfr/acetelecom/vc/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_3
    const-string v0, "Call"

    const-string v1, "??vvvvvvv"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
