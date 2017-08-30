.class public Landroid/support/b/g;
.super Landroid/support/b/ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/b/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/b/ai;-><init>(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    if-lez p1, :cond_0

    new-instance v0, Landroid/support/b/i;

    invoke-direct {v0, p0, p1}, Landroid/support/b/i;-><init>(Landroid/support/b/r;I)V

    iput-object v0, p0, Landroid/support/b/g;->a:Landroid/support/b/q;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/b/i;

    invoke-direct {v0, p0}, Landroid/support/b/i;-><init>(Landroid/support/b/r;)V

    iput-object v0, p0, Landroid/support/b/g;->a:Landroid/support/b/q;

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    new-instance v0, Landroid/support/b/h;

    invoke-direct {v0, p0, p1}, Landroid/support/b/h;-><init>(Landroid/support/b/r;I)V

    iput-object v0, p0, Landroid/support/b/g;->a:Landroid/support/b/q;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/b/h;

    invoke-direct {v0, p0}, Landroid/support/b/h;-><init>(Landroid/support/b/r;)V

    iput-object v0, p0, Landroid/support/b/g;->a:Landroid/support/b/q;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/b/g;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/b/q;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/g;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->c(Landroid/support/b/ae;)V

    return-void
.end method

.method public b(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/g;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->b(Landroid/support/b/ae;)V

    return-void
.end method
