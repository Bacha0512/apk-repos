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

.field private bitmap:Landroid/graphics/Bitmap;

.field private camera:Landroid/hardware/Camera;

.field private cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

.field private captureLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private context:J

.field private currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

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

.field private outStr:Ljava/io/ByteArrayOutputStream;

.field private ownsBuffers:Z

.field pixelFormat:Landroid/graphics/PixelFormat;

.field public previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private rotatedBitmap:Landroid/graphics/Bitmap;

.field private rotation:I

.field private srcImg:Landroid/graphics/YuvImage;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(IJLandroid/hardware/Camera;Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 6
    .param p1, "in_id"    # I
    .param p2, "in_context"    # J
    .param p4, "in_camera"    # Landroid/hardware/Camera;
    .param p5, "in_device"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    const/16 v0, 0x11

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 43
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 45
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 46
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 47
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 48
    iput-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    .line 51
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 52
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->orientation:I

    .line 53
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 56
    iput-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 58
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 60
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 61
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 62
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 64
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    .line 78
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 79
    iput-wide p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 80
    iput-object p4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 81
    iput-object p5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 82
    invoke-static {}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->getInstance()Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    .line 84
    return-void
.end method

.method public static DeleteVideoCaptureAndroid(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 2
    .param p0, "captureAndroid"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .prologue
    .line 68
    const-string v0, "WEBRTC-JC"

    const-string v1, "DeleteVideoCaptureAndroid"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 71
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 74
    return-void
.end method

.method private encodeYUV420SP([B[III)V
    .locals 18
    .param p1, "yuv420sp"    # [B
    .param p2, "argb"    # [I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 341
    mul-int v8, p3, p4

    .line 343
    .local v8, "frameSize":I
    const/4 v14, 0x0

    .line 344
    .local v14, "yIndex":I
    move v12, v8

    .line 347
    .local v12, "uvIndex":I
    const/4 v10, 0x0

    .line 348
    .local v10, "index":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    move/from16 v0, p4

    if-ge v11, v0, :cond_8

    .line 349
    const/4 v9, 0x0

    .local v9, "i":I
    move v13, v12

    .end local v12    # "uvIndex":I
    .local v13, "uvIndex":I
    move v15, v14

    .end local v14    # "yIndex":I
    .local v15, "yIndex":I
    :goto_1
    move/from16 v0, p3

    if-ge v9, v0, :cond_7

    .line 351
    aget v16, p2, v10

    const/high16 v17, -0x1000000

    and-int v16, v16, v17

    shr-int/lit8 v7, v16, 0x18

    .line 352
    .local v7, "a":I
    aget v16, p2, v10

    const/high16 v17, 0xff0000

    and-int v16, v16, v17

    shr-int/lit8 v3, v16, 0x10

    .line 353
    .local v3, "R":I
    aget v16, p2, v10

    const v17, 0xff00

    and-int v16, v16, v17

    shr-int/lit8 v2, v16, 0x8

    .line 354
    .local v2, "G":I
    aget v16, p2, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shr-int/lit8 v1, v16, 0x0

    .line 357
    .local v1, "B":I
    mul-int/lit8 v16, v3, 0x42

    mul-int/lit16 v0, v2, 0x81

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x19

    add-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    add-int/lit8 v6, v16, 0x10

    .line 358
    .local v6, "Y":I
    mul-int/lit8 v16, v3, -0x26

    mul-int/lit8 v17, v2, 0x4a

    sub-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x70

    add-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    add-int/lit16 v4, v0, 0x80

    .line 359
    .local v4, "U":I
    mul-int/lit8 v16, v3, 0x70

    mul-int/lit8 v17, v2, 0x5e

    sub-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x12

    sub-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    add-int/lit16 v5, v0, 0x80

    .line 364
    .local v5, "V":I
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "yIndex":I
    .restart local v14    # "yIndex":I
    if-gez v6, :cond_4

    const/4 v6, 0x0

    .end local v6    # "Y":I
    :cond_0
    :goto_2
    int-to-byte v0, v6

    move/from16 v16, v0

    aput-byte v16, p1, v15

    .line 365
    rem-int/lit8 v16, v11, 0x2

    if-nez v16, :cond_3

    rem-int/lit8 v16, v10, 0x2

    if-nez v16, :cond_3

    .line 366
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    if-gez v5, :cond_5

    const/4 v5, 0x0

    .end local v5    # "V":I
    :cond_1
    :goto_3
    int-to-byte v0, v5

    move/from16 v16, v0

    aput-byte v16, p1, v13

    .line 367
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    if-gez v4, :cond_6

    const/4 v4, 0x0

    .end local v4    # "U":I
    :cond_2
    :goto_4
    int-to-byte v0, v4

    move/from16 v16, v0

    aput-byte v16, p1, v12

    :cond_3
    move v12, v13

    .line 370
    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    add-int/lit8 v10, v10, 0x1

    .line 349
    add-int/lit8 v9, v9, 0x1

    move v13, v12

    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    move v15, v14

    .end local v14    # "yIndex":I
    .restart local v15    # "yIndex":I
    goto/16 :goto_1

    .line 364
    .end local v15    # "yIndex":I
    .restart local v4    # "U":I
    .restart local v5    # "V":I
    .restart local v6    # "Y":I
    .restart local v14    # "yIndex":I
    :cond_4
    const/16 v16, 0xff

    move/from16 v0, v16

    if-le v6, v0, :cond_0

    const/16 v6, 0xff

    goto :goto_2

    .line 366
    .end local v6    # "Y":I
    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    :cond_5
    const/16 v16, 0xff

    move/from16 v0, v16

    if-le v5, v0, :cond_1

    const/16 v5, 0xff

    goto :goto_3

    .line 367
    .end local v5    # "V":I
    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    :cond_6
    const/16 v16, 0xff

    move/from16 v0, v16

    if-le v4, v0, :cond_2

    const/16 v4, 0xff

    goto :goto_4

    .line 348
    .end local v1    # "B":I
    .end local v2    # "G":I
    .end local v3    # "R":I
    .end local v4    # "U":I
    .end local v7    # "a":I
    .end local v14    # "yIndex":I
    .restart local v15    # "yIndex":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    move v14, v15

    .end local v15    # "yIndex":I
    .restart local v14    # "yIndex":I
    goto/16 :goto_0

    .line 373
    .end local v9    # "i":I
    :cond_8
    return-void
.end method

.method private getNV21(IILandroid/graphics/Bitmap;)[B
    .locals 9
    .param p1, "inputWidth"    # I
    .param p2, "inputHeight"    # I
    .param p3, "scaled"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 328
    mul-int v0, p1, p2

    new-array v1, v0, [I

    .local v1, "argb":[I
    move-object v0, p3

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 330
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 332
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    .line 333
    .local v8, "yuv":[B
    invoke-direct {p0, v8, v1, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->encodeYUV420SP([B[III)V

    .line 335
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    return-object v8
.end method

.method private rotateImage([IIII)[I
    .locals 6
    .param p1, "img"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "angle"    # I

    .prologue
    .line 294
    mul-int v4, p2, p3

    new-array v0, v4, [I

    .line 296
    .local v0, "dstArray":[I
    sparse-switch p4, :sswitch_data_0

    .line 323
    :cond_0
    return-object v0

    .line 298
    :sswitch_0
    sub-int v4, p2, p3

    div-int/lit8 v1, v4, 0x2

    .line 300
    .local v1, "emptyPoint":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    mul-int v4, p3, p3

    if-ge v3, v4, :cond_0

    .line 301
    aget v4, p1, v3

    aput v4, v0, v3

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "emptyPoint":I
    .end local v3    # "j":I
    :sswitch_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 313
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2
    if-ge v3, p2, :cond_1

    .line 314
    mul-int/lit8 v4, v2, 0x2

    mul-int/2addr v4, p3

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, p3

    add-int/2addr v5, v3

    aget v5, p1, v5

    aput v5, v0, v4

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 312
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
    .end sparse-switch
.end method

.method private tryStartCapture(III)I
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 88
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 89
    const-string v5, "WEBRTC-JC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera not initialized "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return v4

    .line 93
    :cond_0
    const-string v6, "WEBRTC-JC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tryStartCapture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " frame rate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isCaptureRunning "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSurfaceReady "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isCaptureStarted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    if-nez v6, :cond_3

    .line 101
    :cond_1
    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    if-nez v6, :cond_4

    .line 102
    const-string v6, "WEBRTC-JC"

    const-string v7, "Surface not redy"

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v6

    iput-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 104
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v6, :cond_2

    .line 105
    const-string v4, "WEBRTC-JC"

    const-string v6, "Surface is null"

    invoke-static {v4, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    iput-boolean v9, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 117
    :cond_3
    :goto_1
    :try_start_0
    const-string v6, "WEBRTC-JC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Surface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    iget-object v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 120
    new-instance v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v1}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 122
    .local v1, "currentCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    iput p1, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 123
    iput p2, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 124
    iput p3, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 125
    iget v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v6, v7}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 127
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 128
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    iget v6, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    iget v7, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    invoke-virtual {v3, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 130
    iget v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 131
    iget v6, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 132
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 134
    mul-int v6, p1, p2

    iget-object v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v7, v7, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x8

    .line 135
    .local v0, "bufSize":I
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, p0, v7, v0, v8}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V

    .line 136
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 138
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 139
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 140
    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 141
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 142
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    iput-boolean v9, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    move v4, v5

    .line 152
    goto/16 :goto_0

    .line 109
    .end local v0    # "bufSize":I
    .end local v1    # "currentCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_4
    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v6, :cond_5

    .line 110
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    goto/16 :goto_1

    :cond_5
    move v4, v5

    .line 112
    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "WEBRTC-JC"

    const-string v6, "Failed to start camera"

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method native ProvideCameraFrame([BIJ)V
.end method

.method public SetPreviewRotation(I)V
    .locals 7
    .param p1, "rotation"    # I

    .prologue
    .line 416
    const-string v4, "WEBRTC-JC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetPreviewRotation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 419
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 420
    const/4 v3, 0x0

    .line 421
    .local v3, "width":I
    const/4 v1, 0x0

    .line 422
    .local v1, "height":I
    const/4 v0, 0x0

    .line 424
    .local v0, "framerate":I
    iget-boolean v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v4, :cond_0

    .line 425
    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 426
    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 427
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 428
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 431
    :cond_0
    const/4 v2, 0x0

    .line 432
    .local v2, "resultRotation":I
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v4, v4, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v5, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v4, v5, :cond_2

    .line 437
    rsub-int v4, p1, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 443
    :goto_0
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v5, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->setDisplayOrientation(Landroid/hardware/Camera;I)V

    .line 446
    invoke-virtual {p0, v3, v1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StartCapture(III)I

    .line 448
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 450
    .end local v0    # "framerate":I
    .end local v1    # "height":I
    .end local v2    # "resultRotation":I
    .end local v3    # "width":I
    :cond_1
    return-void

    .line 441
    .restart local v0    # "framerate":I
    .restart local v1    # "height":I
    .restart local v2    # "resultRotation":I
    .restart local v3    # "width":I
    :cond_2
    move v2, p1

    goto :goto_0
.end method

.method public SetVideoRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 376
    const-string v0, "WEBRTC-JC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetVideoRotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    .line 412
    return-void
.end method

.method public StartCapture(III)I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 156
    const-string v1, "WEBRTC-JC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartCapture width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 160
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 166
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 167
    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 168
    iput p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 170
    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v1, v2, v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->tryStartCapture(III)I

    move-result v0

    .line 172
    .local v0, "res":I
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    return v0
.end method

.method public StopCapture()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 177
    const-string v2, "WEBRTC-JC"

    const-string v3, "StopCapture"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 180
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 181
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 182
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 183
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->unsetCallback(Landroid/hardware/Camera;)V

    .line 185
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 193
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "WEBRTC-JC"

    const-string v2, "Failed to stop camera"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x0

    const/16 v11, 0x32

    const/16 v2, 0x11

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 204
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 209
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v0, :cond_1

    .line 212
    array-length v0, p1

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v0, v1, :cond_1

    .line 213
    array-length v0, p1

    new-array v8, v0, [B

    .line 215
    .local v8, "dstData":[B
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    if-eqz v0, :cond_3

    .line 236
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    .line 238
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 239
    :cond_0
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 241
    .local v9, "startPoint":I
    new-instance v0, Landroid/graphics/YuvImage;

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->srcImg:Landroid/graphics/YuvImage;

    .line 242
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->srcImg:Landroid/graphics/YuvImage;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    sub-int/2addr v2, v9

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    invoke-direct {v1, v9, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1, v11, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 243
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 244
    .local v7, "bytes":[B
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v7

    invoke-static {v0, v10, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    .line 254
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 255
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 257
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    move v1, v10

    move v2, v10

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotatedBitmap:Landroid/graphics/Bitmap;

    .line 259
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotatedBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    .line 260
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 275
    .end local v9    # "startPoint":I
    :goto_0
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getNV21(IILandroid/graphics/Bitmap;)[B

    move-result-object v8

    .line 277
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "bytes":[B
    :goto_1
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, v8, v0, v2, v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIJ)V

    .line 283
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    invoke-virtual {v0, p2, p1}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->addCallbackBuffer(Landroid/hardware/Camera;[B)V

    .line 289
    .end local v8    # "dstData":[B
    :cond_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    return-void

    .line 263
    .restart local v8    # "dstData":[B
    :cond_2
    new-instance v0, Landroid/graphics/YuvImage;

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->srcImg:Landroid/graphics/YuvImage;

    .line 264
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->srcImg:Landroid/graphics/YuvImage;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    invoke-direct {v1, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1, v11, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 265
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 266
    .restart local v7    # "bytes":[B
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v7

    invoke-static {v0, v10, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    .line 268
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 269
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->rotation:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 271
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    move v1, v10

    move v2, v10

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->bitmap:Landroid/graphics/Bitmap;

    .line 272
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outStr:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 279
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "bytes":[B
    :cond_3
    move-object v8, p1

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 454
    const-string v0, "WEBRTC-JC"

    const-string v1, "VideoCaptureAndroid::surfaceChanged"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 458
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 460
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->tryStartCapture(III)I

    .line 461
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 462
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 466
    const-string v0, "WEBRTC-JC"

    const-string v1, "VideoCaptureAndroid::surfaceCreated"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 470
    const-string v0, "WEBRTC-JC"

    const-string v1, "VideoCaptureAndroid::surfaceDestroyed"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 473
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 474
    return-void
.end method
