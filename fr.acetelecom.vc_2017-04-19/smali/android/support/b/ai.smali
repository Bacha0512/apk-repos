.class public abstract Landroid/support/b/ai;
.super Landroid/support/b/n;

# interfaces
.implements Landroid/support/b/al;


# direct methods
.method constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/b/n;-><init>(Z)V

    if-nez p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/b/am;

    invoke-direct {v0}, Landroid/support/b/am;-><init>()V

    iput-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    :goto_0
    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    invoke-virtual {v0, p0}, Landroid/support/b/q;->a(Landroid/support/b/r;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/support/b/aj;

    invoke-direct {v0}, Landroid/support/b/aj;-><init>()V

    iput-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    check-cast v0, Landroid/support/b/ak;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/b/ak;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->c(Landroid/support/b/ae;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    check-cast v0, Landroid/support/b/ak;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/b/ak;->b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->b(Landroid/support/b/ae;)V

    return-void
.end method

.method public c(Landroid/support/b/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    check-cast v0, Landroid/support/b/ak;

    invoke-interface {v0, p1}, Landroid/support/b/ak;->a(Landroid/support/b/ae;)Z

    move-result v0

    return v0
.end method
