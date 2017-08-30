.class public Lorg/webrtc/videoengine/camera/CameraUtils11;
.super Lorg/webrtc/videoengine/camera/CameraUtils9;
.source "CameraUtils11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private dummySurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/webrtc/videoengine/camera/CameraUtils9;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/camera/CameraUtils11;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public setDummyTexture(Landroid/hardware/Camera;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/camera/CameraUtils11;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lorg/webrtc/videoengine/camera/CameraUtils11;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 36
    :cond_0
    iget-object v1, p0, Lorg/webrtc/videoengine/camera/CameraUtils11;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
