.class Landroid/support/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/Transition;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/Transition;


# direct methods
.method constructor <init>(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/transition/Transition;

    .prologue
    .line 1735
    iput-object p1, p0, Landroid/support/transition/Transition$2;->this$0:Landroid/support/transition/Transition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1738
    iget-object v0, p0, Landroid/support/transition/Transition$2;->this$0:Landroid/support/transition/Transition;

    invoke-virtual {v0}, Landroid/support/transition/Transition;->end()V

    .line 1739
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1740
    return-void
.end method