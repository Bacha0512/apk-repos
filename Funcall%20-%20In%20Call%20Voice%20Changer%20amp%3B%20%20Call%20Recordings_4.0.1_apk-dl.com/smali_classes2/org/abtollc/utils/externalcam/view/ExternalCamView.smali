.class public Lorg/abtollc/utils/externalcam/view/ExternalCamView;
.super Landroid/view/SurfaceView;
.source "ExternalCamView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = true

.field static final IMG_HEIGHT:I = 0x1e0

.field static final IMG_WIDTH:I = 0x280

.field private static final TAG:Ljava/lang/String; = "WebCam"


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private cameraBase:I

.field private cameraExists:Z

.field private cameraId:I

.field protected context:Landroid/content/Context;

.field private dh:I

.field private dw:I

.field private holder:Landroid/view/SurfaceHolder;

.field mainLoop:Ljava/lang/Thread;

.field private rate:F

.field private rect:Landroid/graphics/Rect;

.field private shouldStop:Z

.field private winHeight:I

.field private winWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->mainLoop:Ljava/lang/Thread;

    .line 20
    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->bmp:Landroid/graphics/Bitmap;

    .line 22
    iput-boolean v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraExists:Z

    .line 23
    iput-boolean v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->shouldStop:Z

    .line 25
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraId:I

    .line 26
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraBase:I

    .line 31
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    .line 32
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    .line 49
    iput-object p1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->context:Landroid/content/Context;

    .line 51
    const-string v0, "WebCam"

    const-string v1, "CameraPreview constructed"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->holder:Landroid/view/SurfaceHolder;

    .line 55
    iget-object v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->mainLoop:Ljava/lang/Thread;

    .line 20
    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->bmp:Landroid/graphics/Bitmap;

    .line 22
    iput-boolean v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraExists:Z

    .line 23
    iput-boolean v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->shouldStop:Z

    .line 25
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraId:I

    .line 26
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraBase:I

    .line 31
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    .line 32
    iput v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    .line 60
    iput-object p1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->context:Landroid/content/Context;

    .line 62
    const-string v0, "WebCam"

    const-string v1, "CameraPreview constructed"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->setFocusable(Z)V

    .line 65
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->holder:Landroid/view/SurfaceHolder;

    .line 66
    iget-object v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 67
    return-void
.end method


# virtual methods
.method public native pixeltobmp(Landroid/graphics/Bitmap;)V
.end method

.method public native prepareCamera(I)I
.end method

.method public native prepareCameraWithBase(II)I
.end method

.method public native processCamera()V
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 71
    :cond_0
    iget-boolean v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraExists:Z

    if-eqz v1, :cond_3

    .line 73
    iget v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    .line 75
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    .line 77
    iget v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    if-gt v1, v2, :cond_4

    .line 78
    iput v7, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dw:I

    .line 79
    iget v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    iget v2, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dh:I

    .line 80
    iget v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x44200000    # 640.0f

    div-float/2addr v1, v2

    iput v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->rate:F

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dw:I

    iget v3, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dh:I

    iget v4, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dw:I

    iget v5, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dh:I

    iget v6, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->rect:Landroid/graphics/Rect;

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->processCamera()V

    .line 91
    iget-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->pixeltobmp(Landroid/graphics/Bitmap;)V

    .line 93
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 94
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->bmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 100
    :cond_2
    iget-boolean v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->shouldStop:Z

    if-eqz v1, :cond_0

    .line 101
    iput-boolean v7, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->shouldStop:Z

    .line 106
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    return-void

    .line 83
    :cond_4
    iget v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winWidth:I

    iget v2, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dw:I

    .line 84
    iput v7, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dh:I

    .line 85
    iget v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x43f00000    # 480.0f

    div-float/2addr v1, v2

    iput v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->rate:F

    .line 86
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dw:I

    iget v3, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dh:I

    iget v4, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dw:I

    iget v5, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->dh:I

    iget v6, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->winHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->rect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public native stopCamera()V
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 111
    const-string v0, "WebCam"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 117
    const-string v1, "WebCam"

    const-string v2, "surfaceCreated"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 119
    const/16 v1, 0x280

    const/16 v2, 0x1e0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->bmp:Landroid/graphics/Bitmap;

    .line 122
    :cond_0
    iget v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraId:I

    iget v2, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraBase:I

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->prepareCameraWithBase(II)I

    move-result v0

    .line 124
    .local v0, "ret":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraExists:Z

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->mainLoop:Ljava/lang/Thread;

    .line 128
    iget-object v1, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->mainLoop:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 134
    const-string v0, "WebCam"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->cameraExists:Z

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->shouldStop:Z

    .line 137
    :goto_0
    iget-boolean v0, p0, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->shouldStop:Z

    if-eqz v0, :cond_0

    .line 139
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/abtollc/utils/externalcam/view/ExternalCamView;->stopCamera()V

    .line 145
    return-void
.end method
