.class public abstract Landroid/support/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/b/r;


# instance fields
.field a:Landroid/support/b/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/b/n;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/b/o;

    invoke-direct {v0}, Landroid/support/b/o;-><init>()V

    iput-object v0, p0, Landroid/support/b/n;->a:Landroid/support/b/q;

    :goto_0
    iget-object v0, p0, Landroid/support/b/n;->a:Landroid/support/b/q;

    invoke-virtual {v0, p0}, Landroid/support/b/q;->a(Landroid/support/b/r;)V

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/b/s;

    invoke-direct {v0}, Landroid/support/b/s;-><init>()V

    iput-object v0, p0, Landroid/support/b/n;->a:Landroid/support/b/q;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/b/p;

    invoke-direct {v0}, Landroid/support/b/p;-><init>()V

    iput-object v0, p0, Landroid/support/b/n;->a:Landroid/support/b/q;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroid/support/b/n;
    .locals 1

    iget-object v0, p0, Landroid/support/b/n;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/b/q;->a(J)Landroid/support/b/q;

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/b/n;
    .locals 1

    iget-object v0, p0, Landroid/support/b/n;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->a(Landroid/animation/TimeInterpolator;)Landroid/support/b/q;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/b/n;->a:Landroid/support/b/q;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
