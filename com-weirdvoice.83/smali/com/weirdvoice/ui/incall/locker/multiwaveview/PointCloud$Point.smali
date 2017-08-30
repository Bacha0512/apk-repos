.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$Point;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field radius:F

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;FFF)V
    .locals 0
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "r"    # F

    .prologue
    .line 119
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$Point;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$Point;->x:F

    .line 121
    iput p3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$Point;->y:F

    .line 122
    iput p4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$Point;->radius:F

    .line 123
    return-void
.end method
