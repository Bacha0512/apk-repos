.class Landroid/support/b/i;
.super Landroid/support/b/s;

# interfaces
.implements Landroid/support/b/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/b/s;-><init>()V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/b/i;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/b/r;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/b/s;-><init>()V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/support/b/i;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/i;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    invoke-static {p2}, Landroid/support/b/i;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v2

    invoke-static {p4}, Landroid/support/b/i;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/ae;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/b/i;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    invoke-static {p1}, Landroid/support/b/i;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Fade;->isVisible(Landroid/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/i;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    invoke-static {p2}, Landroid/support/b/i;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v2

    invoke-static {p4}, Landroid/support/b/i;->d(Landroid/support/b/ae;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
