.class public Lorg/webrtc/videoengine/camera/CameraUtils3;
.super Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;
.source "CameraUtils3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Init(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;Ljava/util/List;)V
    .locals 0
    .param p1, "deviceInfoAndroid"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
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

    .prologue
    .line 42
    .local p2, "listToPopulate":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;>;"
    return-void
.end method

.method public addCallbackBuffer(Landroid/hardware/Camera;[B)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "data"    # [B

    .prologue
    .line 67
    return-void
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V
    .locals 0
    .param p1, "captureAndroid"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .param p2, "numCaptureBuffers"    # I
    .param p3, "bufSize"    # I
    .param p4, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 55
    return-void
.end method

.method public setDisplayOrientation(Landroid/hardware/Camera;I)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "resultRotation"    # I

    .prologue
    .line 73
    return-void
.end method

.method public setDummyTexture(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 81
    return-void
.end method

.method public unsetCallback(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 61
    return-void
.end method
