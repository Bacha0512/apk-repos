.class public Lcom/weirdvoice/utils/video/VideoUtils5;
.super Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
.source "VideoUtils5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoCaptureDevices(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v11, 0x0

    invoke-static {v11, p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->CreateVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    move-result-object v4

    .line 36
    .local v4, "deviceInfoAndroid":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "arr":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    if-nez v4, :cond_1

    .line 70
    :cond_0
    return-object v0

    .line 41
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->NumberOfDevices()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 42
    invoke-virtual {v4, v6}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetDeviceUniqueName(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "deviceName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetCapabilityArray(Ljava/lang/String;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    move-result-object v3

    .line 44
    .local v3, "caps":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    new-instance v10, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;

    invoke-direct {v10, p0}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;-><init>(Lcom/weirdvoice/utils/video/VideoUtilsWrapper;)V

    .line 45
    .local v10, "vcdi":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;
    invoke-virtual {v4, v5}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetOrientation(Ljava/lang/String;)I

    move-result v8

    .line 46
    .local v8, "orientation":I
    const/4 v7, 0x0

    .line 47
    .local v7, "invertWidthHeight":Z
    const/16 v11, 0x5a

    if-eq v8, v11, :cond_2

    const/16 v11, 0x10e

    if-ne v8, v11, :cond_3

    .line 48
    :cond_2
    const/4 v7, 0x1

    .line 51
    :cond_3
    array-length v13, v3

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-lt v12, v13, :cond_5

    .line 59
    invoke-virtual {v4, v5}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetBestCapability(Ljava/lang/String;)Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    move-result-object v1

    .line 60
    .local v1, "bcap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    if-eqz v1, :cond_4

    .line 61
    new-instance v11, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    invoke-direct {v11}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;-><init>()V

    iput-object v11, v10, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    .line 62
    iget-object v12, v10, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    if-eqz v7, :cond_8

    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    :goto_2
    iput v11, v12, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->width:I

    .line 63
    iget-object v12, v10, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    if-eqz v7, :cond_9

    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    :goto_3
    iput v11, v12, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->height:I

    .line 64
    iget-object v11, v10, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    iget v12, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    iput v12, v11, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->fps:I

    .line 67
    :cond_4
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "bcap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_5
    aget-object v2, v3, v12

    .line 52
    .local v2, "cap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    new-instance v9, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    invoke-direct {v9}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;-><init>()V

    .line 53
    .local v9, "vcc":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    if-eqz v7, :cond_6

    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    :goto_4
    iput v11, v9, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->height:I

    .line 54
    if-eqz v7, :cond_7

    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    :goto_5
    iput v11, v9, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->width:I

    .line 55
    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    iput v11, v9, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->fps:I

    .line 56
    iget-object v11, v10, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->capabilities:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    .line 53
    :cond_6
    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    goto :goto_4

    .line 54
    :cond_7
    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    goto :goto_5

    .line 62
    .end local v2    # "cap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .end local v9    # "vcc":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    .restart local v1    # "bcap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_8
    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    goto :goto_2

    .line 63
    :cond_9
    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    goto :goto_3
.end method
