.class public Lorg/abtollc/utils/video/VideoUtils5;
.super Lorg/abtollc/utils/video/VideoUtilsWrapper;
.source "VideoUtils5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/abtollc/utils/video/VideoUtilsWrapper;-><init>()V

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
            "Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v11, 0x0

    invoke-static {v11, p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->CreateVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    move-result-object v4

    .line 15
    .local v4, "deviceInfoAndroid":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, "arr":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    if-nez v4, :cond_1

    .line 49
    :cond_0
    return-object v0

    .line 20
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->NumberOfDevices()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 21
    invoke-virtual {v4, v6}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetDeviceUniqueName(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    .local v5, "deviceName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetCapabilityArray(Ljava/lang/String;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    move-result-object v3

    .line 23
    .local v3, "caps":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    new-instance v10, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;

    invoke-direct {v10, p0}, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;-><init>(Lorg/abtollc/utils/video/VideoUtilsWrapper;)V

    .line 24
    .local v10, "vcdi":Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;
    invoke-virtual {v4, v5}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetOrientation(Ljava/lang/String;)I

    move-result v8

    .line 25
    .local v8, "orientation":I
    const/4 v7, 0x0

    .line 26
    .local v7, "invertWidthHeight":Z
    const/16 v11, 0x5a

    if-eq v8, v11, :cond_2

    const/16 v11, 0x10e

    if-ne v8, v11, :cond_3

    .line 27
    :cond_2
    const/4 v7, 0x1

    .line 30
    :cond_3
    array-length v13, v3

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-ge v12, v13, :cond_6

    aget-object v2, v3, v12

    .line 31
    .local v2, "cap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    new-instance v9, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    invoke-direct {v9}, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;-><init>()V

    .line 32
    .local v9, "vcc":Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    if-eqz v7, :cond_4

    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    :goto_2
    iput v11, v9, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->height:I

    .line 33
    if-eqz v7, :cond_5

    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    :goto_3
    iput v11, v9, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->width:I

    .line 34
    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    iput v11, v9, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->fps:I

    .line 35
    iget-object v11, v10, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->capabilities:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    .line 32
    :cond_4
    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    goto :goto_2

    .line 33
    :cond_5
    iget v11, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    goto :goto_3

    .line 38
    .end local v2    # "cap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .end local v9    # "vcc":Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    :cond_6
    invoke-virtual {v4, v5}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->GetBestCapability(Ljava/lang/String;)Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    move-result-object v1

    .line 39
    .local v1, "bcap":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    if-eqz v1, :cond_7

    .line 40
    new-instance v11, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    invoke-direct {v11}, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;-><init>()V

    iput-object v11, v10, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    .line 41
    iget-object v12, v10, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    if-eqz v7, :cond_8

    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    :goto_4
    iput v11, v12, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->width:I

    .line 42
    iget-object v12, v10, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    if-eqz v7, :cond_9

    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    :goto_5
    iput v11, v12, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->height:I

    .line 43
    iget-object v11, v10, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    iget v12, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    iput v12, v11, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->fps:I

    .line 46
    :cond_7
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 41
    :cond_8
    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    goto :goto_4

    .line 42
    :cond_9
    iget v11, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    goto :goto_5
.end method
