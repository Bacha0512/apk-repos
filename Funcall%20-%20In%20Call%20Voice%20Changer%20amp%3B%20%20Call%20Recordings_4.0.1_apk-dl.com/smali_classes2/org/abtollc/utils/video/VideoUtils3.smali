.class public Lorg/abtollc/utils/video/VideoUtils3;
.super Lorg/abtollc/utils/video/VideoUtilsWrapper;
.source "VideoUtils3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/abtollc/utils/video/VideoUtilsWrapper;-><init>()V

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
            "Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
