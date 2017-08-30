.class Landroid/support/b/am;
.super Landroid/support/b/s;

# interfaces
.implements Landroid/support/b/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/b/am$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/am;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p2}, Landroid/support/b/am;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v2

    invoke-static {p4}, Landroid/support/b/am;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/r;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Landroid/support/b/am;->b:Landroid/support/b/r;

    if-nez p2, :cond_0

    new-instance v0, Landroid/support/b/am$a;

    check-cast p1, Landroid/support/b/al;

    invoke-direct {v0, p1}, Landroid/support/b/am$a;-><init>(Landroid/support/b/al;)V

    iput-object v0, p0, Landroid/support/b/am;->a:Landroid/transition/Transition;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Landroid/transition/Visibility;

    iput-object p2, p0, Landroid/support/b/am;->a:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public a(Landroid/support/b/ae;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/b/am;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p1}, Landroid/support/b/am;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->isVisible(Landroid/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/am;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p2}, Landroid/support/b/am;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v2

    invoke-static {p4}, Landroid/support/b/am;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
