.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 160
    # invokes: Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->access$0(Landroid/animation/Animator;)V

    .line 161
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 155
    # invokes: Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->access$0(Landroid/animation/Animator;)V

    .line 156
    return-void
.end method
