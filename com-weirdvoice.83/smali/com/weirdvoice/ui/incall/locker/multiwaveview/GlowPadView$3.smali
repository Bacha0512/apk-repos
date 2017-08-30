.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$3;
.super Ljava/lang/Object;
.source "GlowPadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$3;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$3;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->invalidate()V

    .line 196
    return-void
.end method
