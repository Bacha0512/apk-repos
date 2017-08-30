.class public Landroid/support/b/c;
.super Landroid/support/b/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/b/n;-><init>(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/support/b/d;

    invoke-direct {v0, p0}, Landroid/support/b/d;-><init>(Landroid/support/b/r;)V

    iput-object v0, p0, Landroid/support/b/c;->a:Landroid/support/b/q;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/b/e;

    invoke-direct {v0, p0}, Landroid/support/b/e;-><init>(Landroid/support/b/r;)V

    iput-object v0, p0, Landroid/support/b/c;->a:Landroid/support/b/q;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/b/c;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/b/q;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/c;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->c(Landroid/support/b/ae;)V

    return-void
.end method

.method public b(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/c;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->b(Landroid/support/b/ae;)V

    return-void
.end method
