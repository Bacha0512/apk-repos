.class final Landroid/support/b/m;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/view/ViewGroup;


# direct methods
.method static a(Landroid/view/View;)Landroid/support/b/m;
    .locals 1

    sget v0, Landroid/support/b/k$a;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/b/m;

    return-object v0
.end method

.method static a(Landroid/view/View;Landroid/support/b/m;)V
    .locals 1

    sget v0, Landroid/support/b/k$a;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/b/m;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/b/m;->a(Landroid/view/View;)Landroid/support/b/m;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/b/m;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/b/m;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
