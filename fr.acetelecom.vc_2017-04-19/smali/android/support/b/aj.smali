.class Landroid/support/b/aj;
.super Landroid/support/b/p;

# interfaces
.implements Landroid/support/b/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/b/aj$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/aj;->a:Landroid/support/b/y;

    check-cast v0, Landroid/support/b/an;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/b/an;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/r;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Landroid/support/b/aj;->b:Landroid/support/b/r;

    if-nez p2, :cond_0

    new-instance v0, Landroid/support/b/aj$a;

    check-cast p1, Landroid/support/b/al;

    invoke-direct {v0, p1}, Landroid/support/b/aj$a;-><init>(Landroid/support/b/al;)V

    iput-object v0, p0, Landroid/support/b/aj;->a:Landroid/support/b/y;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Landroid/support/b/an;

    iput-object p2, p0, Landroid/support/b/aj;->a:Landroid/support/b/y;

    goto :goto_0
.end method

.method public a(Landroid/support/b/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/b/aj;->a:Landroid/support/b/y;

    check-cast v0, Landroid/support/b/an;

    invoke-virtual {v0, p1}, Landroid/support/b/an;->c(Landroid/support/b/ae;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/aj;->a:Landroid/support/b/y;

    check-cast v0, Landroid/support/b/an;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/b/an;->b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
