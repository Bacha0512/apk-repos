.class Landroid/support/v7/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/support/v7/widget/FastScroller;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .locals 1

    .prologue
    .line 544
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/FastScroller$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/FastScroller;
    .param p2, "x1"    # Landroid/support/v7/widget/FastScroller$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller$AnimatorListener;-><init>(Landroid/support/v7/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 567
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 551
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 552
    iput-boolean v2, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 562
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    # getter for: Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Landroid/support/v7/widget/FastScroller;->access$200(Landroid/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    # setter for: Landroid/support/v7/widget/FastScroller;->mAnimationState:I
    invoke-static {v0, v2}, Landroid/support/v7/widget/FastScroller;->access$302(Landroid/support/v7/widget/FastScroller;I)I

    .line 557
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    # invokes: Landroid/support/v7/widget/FastScroller;->setState(I)V
    invoke-static {v0, v2}, Landroid/support/v7/widget/FastScroller;->access$400(Landroid/support/v7/widget/FastScroller;I)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    const/4 v1, 0x2

    # setter for: Landroid/support/v7/widget/FastScroller;->mAnimationState:I
    invoke-static {v0, v1}, Landroid/support/v7/widget/FastScroller;->access$302(Landroid/support/v7/widget/FastScroller;I)I

    .line 560
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    # invokes: Landroid/support/v7/widget/FastScroller;->requestRedraw()V
    invoke-static {v0}, Landroid/support/v7/widget/FastScroller;->access$500(Landroid/support/v7/widget/FastScroller;)V

    goto :goto_0
.end method
