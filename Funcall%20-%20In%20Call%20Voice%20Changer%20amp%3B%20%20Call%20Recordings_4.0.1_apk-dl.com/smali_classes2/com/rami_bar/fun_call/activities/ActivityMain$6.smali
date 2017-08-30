.class Lcom/rami_bar/fun_call/activities/ActivityMain$6;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->hideViewFromBottom(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$6;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iput-object p2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 685
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$6;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 691
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 696
    return-void
.end method
