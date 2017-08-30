.class public Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaveManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->radius:F

    .line 56
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->width:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->alpha:F

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;)F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->width:F

    return v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->alpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->alpha:F

    .line 68
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->radius:F

    .line 60
    return-void
.end method
