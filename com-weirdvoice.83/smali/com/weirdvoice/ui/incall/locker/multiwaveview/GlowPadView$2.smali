.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    .line 185
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->ping()V

    .line 188
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # getter for: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$0(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)F

    move-result v2

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # getter for: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$1(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)F

    move-result v3

    # invokes: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$2(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;IFF)V

    .line 189
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # invokes: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$3(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V

    .line 190
    return-void
.end method
