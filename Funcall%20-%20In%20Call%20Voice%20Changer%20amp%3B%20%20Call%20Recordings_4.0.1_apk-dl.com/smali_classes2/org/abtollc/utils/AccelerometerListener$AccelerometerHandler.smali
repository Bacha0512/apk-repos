.class Lorg/abtollc/utils/AccelerometerListener$AccelerometerHandler;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccelerometerHandler"
.end annotation


# instance fields
.field l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/abtollc/utils/AccelerometerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/abtollc/utils/AccelerometerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/abtollc/utils/AccelerometerListener;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/abtollc/utils/AccelerometerListener$AccelerometerHandler;->l:Ljava/lang/ref/WeakReference;

    .line 134
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    iget-object v1, p0, Lorg/abtollc/utils/AccelerometerListener$AccelerometerHandler;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/utils/AccelerometerListener;

    .line 138
    .local v0, "listener":Lorg/abtollc/utils/AccelerometerListener;
    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 141
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    monitor-enter v0

    .line 144
    :try_start_0
    # getter for: Lorg/abtollc/utils/AccelerometerListener;->mPendingOrientation:I
    invoke-static {v0}, Lorg/abtollc/utils/AccelerometerListener;->access$200(Lorg/abtollc/utils/AccelerometerListener;)I

    move-result v1

    # setter for: Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I
    invoke-static {v0, v1}, Lorg/abtollc/utils/AccelerometerListener;->access$102(Lorg/abtollc/utils/AccelerometerListener;I)I

    .line 146
    const-string v2, "AccelerometerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    # getter for: Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I
    invoke-static {v0}, Lorg/abtollc/utils/AccelerometerListener;->access$100(Lorg/abtollc/utils/AccelerometerListener;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const-string v1, "horizontal"

    .line 148
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v2, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    # getter for: Lorg/abtollc/utils/AccelerometerListener;->mListener:Lorg/abtollc/utils/AccelerometerListener$OrientationListener;
    invoke-static {v0}, Lorg/abtollc/utils/AccelerometerListener;->access$300(Lorg/abtollc/utils/AccelerometerListener;)Lorg/abtollc/utils/AccelerometerListener$OrientationListener;

    move-result-object v1

    # getter for: Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I
    invoke-static {v0}, Lorg/abtollc/utils/AccelerometerListener;->access$100(Lorg/abtollc/utils/AccelerometerListener;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/abtollc/utils/AccelerometerListener$OrientationListener;->orientationChanged(I)V

    .line 152
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 148
    :cond_1
    :try_start_1
    # getter for: Lorg/abtollc/utils/AccelerometerListener;->mOrientation:I
    invoke-static {v0}, Lorg/abtollc/utils/AccelerometerListener;->access$100(Lorg/abtollc/utils/AccelerometerListener;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    const-string v1, "vertical"

    goto :goto_1

    :cond_2
    const-string v1, "unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x4d2
        :pswitch_0
    .end packed-switch
.end method
