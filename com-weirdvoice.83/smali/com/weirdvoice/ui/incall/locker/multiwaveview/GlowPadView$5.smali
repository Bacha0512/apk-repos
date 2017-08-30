.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->startWaveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$5;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    .line 720
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$5;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # getter for: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$9(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->waveManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 723
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$5;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # getter for: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$9(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->waveManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 724
    return-void
.end method
