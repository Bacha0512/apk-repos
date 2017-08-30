.class public Lorg/webrtc/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC-JC"


# instance fields
.field private PIXEL_FORMAT:I

.field private camera:Landroid/hardware/Camera;

.field private cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

.field private captureLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private context:J

.field private currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

.field private dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private expectedFrameSize:I

.field private id:I

.field private isCaptureRunning:Z

.field private isCaptureStarted:Z

.field private isSurfaceReady:Z

.field private localPreview:Landroid/view/SurfaceHolder;

.field private mCaptureFPS:I

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private final numCaptureBuffers:I

.field private orientation:I

.field pixelFormat:Landroid/graphics/PixelFormat;

.field public previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(IJLandroid/hardware/Camera;Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 4
    .param p1, "in_id"    # I
    .param p2, "in_context"    # J
    .param p4, "in_camera"    # Landroid/hardware/Camera;
    .param p5, "in_device"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    const/16 v0, 0x11

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 40
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 42
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 43
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 44
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 45
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    .line 48
    iput v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 49
    iput v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->orientation:I

    .line 50
    iput v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 53
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 56
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 57
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 58
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 74
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 75
    iput-wide p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 76
    iput-object p4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 77
    iput-object p5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 78
    invoke-static {}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->getInstance()Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    .line 79
    return-void
.end method

.method public static DeleteVideoCaptureAndroid(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 2
    .param p0, "captureAndroid"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .prologue
    .line 62
    const-string v0, "WEBRTC-JC"

    const-string v1, "DeleteVideoCaptureAndroid"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 67
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    goto :goto_0
.end method

.method private tryStartCapture(III)I
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 83
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_1

    .line 84
    const-string v3, "WEBRTC-JC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Camera not initialized %d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, -0x1

    .line 122
    :cond_0
    :goto_0
    return v3

    .line 88
    :cond_1
    const-string v4, "WEBRTC-JC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tryStartCapture: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", frameRate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    const-string v6, ", isCaptureRunning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 91
    const-string v6, ", isSurfaceReady: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 92
    const-string v6, ", isCaptureStarted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    if-eqz v4, :cond_0

    .line 99
    new-instance v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v1}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 100
    .local v1, "currentCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    iput p1, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 101
    iput p2, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 102
    iput p3, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 103
    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v4, v5}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 105
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 106
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    iget v4, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 107
    iget v5, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 106
    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 108
    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 109
    iget v4, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 110
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 112
    mul-int v4, p1, p2

    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v5, v5, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x8

    .line 113
    .local v0, "bufSize":I
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    const/4 v5, 0x3

    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p0, v5, v0, v6}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V

    .line 115
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 116
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 117
    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 118
    iput-boolean v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 119
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    iput-boolean v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    goto/16 :goto_0
.end method


# virtual methods
.method native ProvideCameraFrame([BIJ)V
.end method

.method public SetPreviewRotation(I)V
    .locals 8
    .param p1, "rotation"    # I

    .prologue
    .line 197
    const-string v5, "WEBRTC-JC"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SetPreviewRotation:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v5, :cond_2

    .line 200
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 201
    const/4 v4, 0x0

    .line 202
    .local v4, "width":I
    const/4 v1, 0x0

    .line 203
    .local v1, "height":I
    const/4 v0, 0x0

    .line 204
    .local v0, "framerate":I
    iget-boolean v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 206
    .local v3, "wasCaptureRunning":Z
    iget-boolean v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v5, :cond_0

    .line 207
    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 208
    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 209
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 210
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 213
    :cond_0
    const/4 v2, 0x0

    .line 214
    .local v2, "resultRotation":I
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v5, v5, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 215
    sget-object v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 214
    if-ne v5, v6, :cond_3

    .line 219
    rsub-int v5, p1, 0x168

    rem-int/lit16 v2, v5, 0x168

    .line 225
    :goto_0
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5, v6, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->setDisplayOrientation(Landroid/hardware/Camera;I)V

    .line 227
    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {p0, v4, v1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StartCapture(III)I

    .line 230
    :cond_1
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    .end local v0    # "framerate":I
    .end local v1    # "height":I
    .end local v2    # "resultRotation":I
    .end local v3    # "wasCaptureRunning":Z
    .end local v4    # "width":I
    :cond_2
    return-void

    .line 223
    .restart local v0    # "framerate":I
    .restart local v1    # "height":I
    .restart local v2    # "resultRotation":I
    .restart local v3    # "wasCaptureRunning":Z
    .restart local v4    # "width":I
    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method public StartCapture(III)I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 126
    const-string v1, "WEBRTC-JC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCapture width "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    const-string v3, " height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frame rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 130
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 144
    :goto_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 146
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 147
    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 148
    iput p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 150
    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v1, v2, v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->tryStartCapture(III)I

    move-result v0

    .line 152
    .local v0, "res":I
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    return v0

    .line 140
    .end local v0    # "res":I
    :cond_1
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 141
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->setDummyTexture(Landroid/hardware/Camera;)V

    .line 142
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public StopCapture()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    const-string v2, "WEBRTC-JC"

    const-string v3, "StopCapture"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 161
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 162
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 163
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->unsetCallback(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 171
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "WEBRTC-JC"

    const-string v2, "Failed to stop camera"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 182
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v0, :cond_0

    .line 185
    array-length v0, p1

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v0, v1, :cond_0

    .line 186
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIJ)V

    .line 188
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    invoke-virtual {v0, p2, p1}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->addCallbackBuffer(Landroid/hardware/Camera;[B)V

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 236
    const-string v0, "WEBRTC-JC"

    const-string v1, "VideoCaptureAndroid::surfaceChanged"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 240
    const-string v1, "WEBRTC-JC"

    const-string v2, "VideoCaptureAndroid::surfaceCreated"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WEBRTC-JC"

    const-string v2, "Failed to set preview surface!"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 251
    const-string v1, "WEBRTC-JC"

    const-string v2, "VideoCaptureAndroid::surfaceDestroyed"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WEBRTC-JC"

    const-string v2, "Failed to clear preview surface!"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WEBRTC-JC"

    const-string v2, "Clear preview surface useless"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
