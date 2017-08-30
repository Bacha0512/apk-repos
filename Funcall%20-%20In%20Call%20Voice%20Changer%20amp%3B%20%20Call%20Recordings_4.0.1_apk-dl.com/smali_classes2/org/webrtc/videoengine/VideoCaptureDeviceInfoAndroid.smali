.class public Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;,
        Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC"


# instance fields
.field private cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

.field context:Landroid/content/Context;

.field currentDeviceUniqueId:Ljava/lang/String;

.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation
.end field

.field id:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "in_id"    # I
    .param p2, "in_context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    .line 91
    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 93
    invoke-static {}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->getInstance()Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    .line 94
    return-void
.end method

.method private AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V
    .locals 12
    .param p1, "specificCapability"    # Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .prologue
    const/4 v6, 0x0

    .line 216
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 217
    .local v1, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    const/4 v2, 0x0

    .line 218
    .local v2, "foundCapability":Z
    iget-object v8, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v9, v8

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v0, v8, v5

    .line 219
    .local v0, "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    iget v10, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    iget v11, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    if-ne v10, v11, :cond_4

    iget v10, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    iget v11, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    if-ne v10, v11, :cond_4

    .line 221
    const/4 v2, 0x1

    .line 227
    .end local v0    # "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_1
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "GT-I9000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v8, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-eq v5, v8, :cond_2

    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v8, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v5, v8, :cond_3

    :cond_2
    iget v5, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    const/16 v8, 0x160

    if-ne v5, v8, :cond_3

    iget v5, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    const/16 v8, 0x120

    if-ne v5, v8, :cond_3

    .line 232
    const/4 v2, 0x1

    .line 235
    :cond_3
    if-nez v2, :cond_0

    .line 236
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 238
    .local v4, "newCaptureCapabilies":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 239
    add-int/lit8 v5, v3, 0x1

    iget-object v8, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v8, v8, v3

    aput-object v8, v4, v5

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 218
    .end local v3    # "i":I
    .end local v4    # "newCaptureCapabilies":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .restart local v0    # "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .restart local v3    # "i":I
    .restart local v4    # "newCaptureCapabilies":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_5
    aput-object p1, v4, v6

    .line 242
    iput-object v4, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    goto :goto_0

    .line 245
    .end local v1    # "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v2    # "foundCapability":Z
    .end local v3    # "i":I
    .end local v4    # "newCaptureCapabilies":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_6
    return-void
.end method

.method private AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "classPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v8, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v4, "file":Ljava/io/File;
    const-string v1, "com.htc.hardware.twinCamDevice.FrontFacingCamera"

    .line 394
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 395
    .local v3, "exists":Z
    if-nez v3, :cond_0

    .line 396
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    const-string v8, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v4    # "file":Ljava/io/File;
    const-string v1, "com.sprint.hardware.twinCamDevice.FrontFacingCamera"

    .line 399
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 401
    :cond_0
    if-nez v3, :cond_1

    .line 426
    :goto_0
    return-object v9

    .line 405
    :cond_1
    const-string v2, ""

    .line 406
    .local v2, "dexOutputDir":Ljava/lang/String;
    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    if-eqz v8, :cond_2

    .line 407
    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v6, Ljava/io/File;

    const-string v8, "dexfiles"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .local v6, "mFilesDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 411
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    .line 417
    .end local v6    # "mFilesDir":Ljava/io/File;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/dexfiles"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    new-instance v5, Ldalvik/system/DexClassLoader;

    .line 420
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 421
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v5, v8, v2, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 423
    .local v5, "loader":Ldalvik/system/DexClassLoader;
    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getFrontFacingCamera"

    move-object v8, v9

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .local v7, "method":Ljava/lang/reflect/Method;
    move-object v8, v9

    .line 425
    check-cast v8, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .local v0, "camera":Landroid/hardware/Camera;
    move-object v9, v0

    .line 426
    goto :goto_0
.end method

.method private AllocateGalaxySFrontCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 432
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 433
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 434
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 435
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 436
    return-object v0
.end method

.method public static CreateVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    .locals 5
    .param p0, "in_id"    # I
    .param p1, "in_context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v1, "WEBRTC"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "VideoCaptureDeviceInfoAndroid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 75
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 79
    .local v0, "self":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->Init()I

    move-result v1

    if-nez v1, :cond_0

    .line 85
    .end local v0    # "self":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    :goto_0
    return-object v0

    .line 83
    .restart local v0    # "self":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    :cond_0
    const-string v1, "WEBRTC"

    const-string v2, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Init()I
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->Init(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->VerifyCapabilities()V

    .line 107
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "WEBRTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to init VideoCaptureDeviceInfo ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private VerifyCapabilities()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    .line 181
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "GT-I9000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "crespo"

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    :cond_0
    new-instance v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v2}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 185
    .local v2, "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/16 v3, 0x160

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 186
    const/16 v3, 0x120

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 187
    iput v7, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 188
    invoke-direct {p0, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 190
    new-instance v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .end local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    invoke-direct {v2}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 191
    .restart local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/16 v3, 0xb0

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 192
    const/16 v3, 0x90

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 193
    iput v7, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 194
    invoke-direct {p0, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 196
    new-instance v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .end local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    invoke-direct {v2}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 197
    .restart local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/16 v3, 0x140

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 198
    const/16 v3, 0xf0

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 199
    iput v7, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 200
    invoke-direct {p0, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 204
    .end local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_1
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "motorola"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "umts_sholes"

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 207
    .local v1, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v6, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v0, v5, v3

    .line 208
    .local v0, "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    iput v7, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .end local v1    # "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_3
    return-void
.end method


# virtual methods
.method public AddDeviceInfo(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .locals 14
    .param p1, "newDevice"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    .line 115
    .local v8, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 117
    .local v6, "maxFPS":I
    if-nez v8, :cond_0

    .line 118
    const/4 v9, 0x0

    new-array v9, v9, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 172
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz v3, :cond_2

    .line 122
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 123
    .local v2, "frameRate":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v6, :cond_1

    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 128
    .end local v2    # "frameRate":Ljava/lang/Integer;
    :cond_2
    const/16 v6, 0xf

    .line 131
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 132
    new-instance v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v9}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    iput-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "bestBandwidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 136
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 137
    .local v7, "s":Landroid/hardware/Camera$Size;
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    new-instance v10, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v10}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v10, v9, v4

    .line 138
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v9, v9, v4

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 139
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v9, v9, v4

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 140
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v9, v9, v4

    iput v6, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 141
    const-string v9, "WEBRTC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VideoCaptureDeviceInfo maxFPS:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    mul-int/2addr v9, v6

    int-to-double v10, v9

    const-wide v12, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v10, v12

    double-to-int v1, v10

    .line 147
    .local v1, "currentBandwidth":I
    const v5, 0xf4240

    .line 149
    .local v5, "maxBestBandwidth":I
    if-eqz v0, :cond_4

    if-ge v1, v0, :cond_6

    if-lt v1, v5, :cond_6

    .line 151
    :cond_4
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 152
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 153
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput v6, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 154
    move v0, v1

    .line 135
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 155
    :cond_6
    if-ge v1, v5, :cond_5

    .line 156
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    iget-object v10, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v10, v10, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    if-gt v9, v10, :cond_7

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    iget-object v10, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v10, v10, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    if-gt v9, v10, :cond_7

    if-le v0, v5, :cond_5

    .line 159
    :cond_7
    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    if-eq v9, v10, :cond_5

    .line 160
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 161
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 162
    iget-object v9, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput v6, v9, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 163
    move v0, v1

    goto :goto_3

    .line 170
    .end local v1    # "currentBandwidth":I
    .end local v5    # "maxBestBandwidth":I
    .end local v7    # "s":Landroid/hardware/Camera$Size;
    :cond_8
    const-string v9, "WEBRTC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Best capability found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v11, v11, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iget v11, v11, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public AllocateCamera(IJLjava/lang/String;)Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .locals 10
    .param p1, "id"    # I
    .param p2, "context"    # J
    .param p4, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 295
    :try_start_0
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllocateCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v4, 0x0

    .line 298
    .local v4, "camera":Landroid/hardware/Camera;
    const/4 v5, 0x0

    .line 299
    .local v5, "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 300
    .local v6, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    const-string v1, "WEBRTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllocateCamera device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    move-object v5, v6

    .line 304
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    iget-object v2, v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 312
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget v2, v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {v1, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateGalaxySFrontCamera()Landroid/hardware/Camera;

    move-result-object v4

    .line 307
    goto :goto_0

    .line 309
    :pswitch_1
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v4

    .line 310
    goto :goto_0

    .line 317
    .end local v6    # "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_1
    if-nez v4, :cond_2

    move-object v0, v8

    .line 331
    .end local v4    # "camera":Landroid/hardware/Camera;
    .end local v5    # "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_1
    return-object v0

    .line 320
    .restart local v4    # "camera":Landroid/hardware/Camera;
    .restart local v5    # "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_2
    const-string v0, "WEBRTC"

    const-string v1, "AllocateCamera - creating VideoCaptureAndroid"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 324
    .end local v4    # "camera":Landroid/hardware/Camera;
    .end local v5    # "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :catch_0
    move-exception v7

    .line 326
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllocateCamera Failed to open camera- ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 331
    goto :goto_1

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public GetBestCapability(Ljava/lang/String;)Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .locals 3
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 272
    .local v0, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->bestCapability:Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 276
    .end local v0    # "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetCapabilityArray(Ljava/lang/String;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .locals 3
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 262
    .local v0, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    iget-object v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    check-cast v1, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 266
    .end local v0    # "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetDeviceUniqueName(I)Ljava/lang/String;
    .locals 1
    .param p1, "deviceNumber"    # I

    .prologue
    .line 253
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_0
.end method

.method public GetOrientation(Ljava/lang/String;)I
    .locals 3
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 284
    .local v0, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    iget v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 288
    .end local v0    # "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public NumberOfDevices()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public SearchOldFrontFacingCameras(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)Landroid/hardware/Camera$Parameters;
    .locals 11
    .param p1, "newDevice"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
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
    const/4 v10, 0x0

    .line 342
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 343
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 344
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v7, "camera-id"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "cameraId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 348
    :try_start_0
    const-string v7, "camera-id"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 349
    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 350
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 351
    sget-object v7, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 352
    const/4 v7, 0x0

    iput v7, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 353
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    .line 381
    :goto_0
    return-object v7

    .line 356
    :catch_0
    move-exception v3

    .line 358
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "WEBRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Init Failed to open front camera camera - ex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 359
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 365
    new-instance v5, Ljava/io/File;

    const-string v7, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 368
    .local v4, "exists":Z
    if-nez v4, :cond_1

    .line 369
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    const-string v7, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 373
    :cond_1
    if-eqz v4, :cond_2

    .line 374
    sget-object v7, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 375
    iput v10, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 376
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v2

    .line 377
    .local v2, "evCamera":Landroid/hardware/Camera;
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 378
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    move-object v7, v6

    .line 379
    goto :goto_0

    .line 381
    .end local v2    # "evCamera":Landroid/hardware/Camera;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method
