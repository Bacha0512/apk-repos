.class public Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlowManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->radius:F

    .line 79
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->alpha:F

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->x:F

    return v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->y:F

    return v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->radius:F

    return v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->alpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->radius:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->alpha:F

    .line 99
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->radius:F

    .line 107
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x1"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->x:F

    .line 83
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y1"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->y:F

    .line 91
    return-void
.end method
