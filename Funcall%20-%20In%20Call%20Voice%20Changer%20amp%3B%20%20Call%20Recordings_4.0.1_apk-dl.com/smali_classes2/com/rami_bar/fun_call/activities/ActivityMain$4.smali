.class Lcom/rami_bar/fun_call/activities/ActivityMain$4;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->rotateView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

.field final synthetic val$rotateAnimation:Landroid/view/animation/RotateAnimation;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Landroid/view/View;Landroid/view/animation/RotateAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$4;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iput-object p2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$4;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$4;->val$rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$4;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 626
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$4;->val$rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->reset()V

    .line 627
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 631
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$4;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 621
    return-void
.end method
