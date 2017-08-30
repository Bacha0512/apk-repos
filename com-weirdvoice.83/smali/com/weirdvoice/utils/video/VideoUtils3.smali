.class public Lcom/weirdvoice/utils/video/VideoUtils3;
.super Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
.source "VideoUtils3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoCaptureDevices(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
