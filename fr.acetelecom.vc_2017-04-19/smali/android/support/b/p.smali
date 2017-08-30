.class Landroid/support/b/p;
.super Landroid/support/b/q;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/b/p$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/b/y;

.field b:Landroid/support/b/r;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/b/y;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Landroid/support/b/q;
    .locals 1

    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1, p2}, Landroid/support/b/y;->a(J)Landroid/support/b/y;

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/b/q;
    .locals 1

    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1}, Landroid/support/b/y;->a(Landroid/animation/TimeInterpolator;)Landroid/support/b/y;

    return-object p0
.end method

.method public a(Landroid/support/b/r;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Landroid/support/b/p;->b:Landroid/support/b/r;

    if-nez p2, :cond_0

    new-instance v0, Landroid/support/b/p$a;

    invoke-direct {v0, p1}, Landroid/support/b/p$a;-><init>(Landroid/support/b/r;)V

    iput-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Landroid/support/b/y;

    iput-object p2, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    goto :goto_0
.end method

.method public b(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1}, Landroid/support/b/y;->b(Landroid/support/b/ae;)V

    return-void
.end method

.method public c(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1}, Landroid/support/b/y;->a(Landroid/support/b/ae;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0}, Landroid/support/b/y;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
