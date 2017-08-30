.class Landroid/support/b/h;
.super Landroid/support/b/p;

# interfaces
.implements Landroid/support/b/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/b/p;-><init>()V

    new-instance v0, Landroid/support/b/j;

    invoke-direct {v0}, Landroid/support/b/j;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/b/h;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/b/r;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/b/p;-><init>()V

    new-instance v0, Landroid/support/b/j;

    invoke-direct {v0, p2}, Landroid/support/b/j;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/support/b/h;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/h;->a:Landroid/support/b/y;

    check-cast v0, Landroid/support/b/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/b/j;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/b/h;->a:Landroid/support/b/y;

    check-cast v0, Landroid/support/b/j;

    invoke-virtual {v0, p1}, Landroid/support/b/j;->c(Landroid/support/b/ae;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/h;->a:Landroid/support/b/y;

    check-cast v0, Landroid/support/b/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/b/j;->b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
