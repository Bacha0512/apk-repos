.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    .line 200
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # getter for: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$4(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # getter for: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$4(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)I

    move-result v1

    # invokes: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$5(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;I)V

    .line 204
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    invoke-static {v0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$6(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;I)V

    .line 205
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    # invokes: Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$7(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;ZZ)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    invoke-static {v0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->access$8(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;Z)V

    .line 208
    return-void
.end method
