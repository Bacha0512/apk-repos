.class public Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;
.super Ljava/lang/Object;
.source "VideoUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/video/VideoUtilsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoCaptureDeviceInfo"
.end annotation


# instance fields
.field public bestCapability:Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

.field public capabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/abtollc/utils/video/VideoUtilsWrapper;


# direct methods
.method public constructor <init>(Lorg/abtollc/utils/video/VideoUtilsWrapper;)V
    .locals 1
    .param p1, "this$0"    # Lorg/abtollc/utils/video/VideoUtilsWrapper;

    .prologue
    .line 21
    iput-object p1, p0, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->this$0:Lorg/abtollc/utils/video/VideoUtilsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->capabilities:Ljava/util/List;

    .line 23
    return-void
.end method
