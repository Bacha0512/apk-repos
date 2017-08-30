.class public abstract Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
.super Ljava/lang/Object;
.source "VideoUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;,
        Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "VideoUtilsWrapper"

.field private static instance:Lcom/weirdvoice/utils/video/VideoUtilsWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static getInstance()Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->instance:Lcom/weirdvoice/utils/video/VideoUtilsWrapper;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lcom/weirdvoice/utils/video/VideoUtils5;

    invoke-direct {v0}, Lcom/weirdvoice/utils/video/VideoUtils5;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->instance:Lcom/weirdvoice/utils/video/VideoUtilsWrapper;

    .line 92
    :cond_0
    :goto_0
    sget-object v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->instance:Lcom/weirdvoice/utils/video/VideoUtilsWrapper;

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/weirdvoice/utils/video/VideoUtils3;

    invoke-direct {v0}, Lcom/weirdvoice/utils/video/VideoUtils3;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->instance:Lcom/weirdvoice/utils/video/VideoUtilsWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract getVideoCaptureDevices(Landroid/content/Context;)Ljava/util/List;
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
.end method
