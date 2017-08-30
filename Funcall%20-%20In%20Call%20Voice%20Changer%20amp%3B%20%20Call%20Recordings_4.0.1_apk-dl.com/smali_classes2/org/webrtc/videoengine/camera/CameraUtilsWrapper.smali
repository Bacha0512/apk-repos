.class public abstract Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;
.super Ljava/lang/Object;
.source "CameraUtilsWrapper.java"


# static fields
.field private static instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getInstance()Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    if-nez v0, :cond_0

    .line 29
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Lorg/webrtc/videoengine/camera/CameraUtils11;

    invoke-direct {v0}, Lorg/webrtc/videoengine/camera/CameraUtils11;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    .line 42
    :cond_0
    :goto_0
    sget-object v0, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    return-object v0

    .line 31
    :cond_1
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Lorg/webrtc/videoengine/camera/CameraUtils9;

    invoke-direct {v0}, Lorg/webrtc/videoengine/camera/CameraUtils9;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    goto :goto_0

    .line 33
    :cond_2
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    new-instance v0, Lorg/webrtc/videoengine/camera/CameraUtils8;

    invoke-direct {v0}, Lorg/webrtc/videoengine/camera/CameraUtils8;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    goto :goto_0

    .line 35
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    new-instance v0, Lorg/webrtc/videoengine/camera/CameraUtils5;

    invoke-direct {v0}, Lorg/webrtc/videoengine/camera/CameraUtils5;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    goto :goto_0

    .line 38
    :cond_4
    new-instance v0, Lorg/webrtc/videoengine/camera/CameraUtils3;

    invoke-direct {v0}, Lorg/webrtc/videoengine/camera/CameraUtils3;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract Init(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public abstract addCallbackBuffer(Landroid/hardware/Camera;[B)V
.end method

.method public abstract openCamera(I)Landroid/hardware/Camera;
.end method

.method public abstract setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V
.end method

.method public abstract setDisplayOrientation(Landroid/hardware/Camera;I)V
.end method

.method public abstract setDummyTexture(Landroid/hardware/Camera;)V
.end method

.method public abstract unsetCallback(Landroid/hardware/Camera;)V
.end method
