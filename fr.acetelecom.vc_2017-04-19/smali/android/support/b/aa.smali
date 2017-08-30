.class Landroid/support/b/aa;
.super Landroid/support/b/p;

# interfaces
.implements Landroid/support/b/ab;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private c:Landroid/support/b/ad;


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/b/p;-><init>()V

    new-instance v0, Landroid/support/b/ad;

    invoke-direct {v0}, Landroid/support/b/ad;-><init>()V

    iput-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    iget-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    invoke-virtual {p0, p1, v0}, Landroid/support/b/aa;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/b/aa;
    .locals 1

    iget-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    invoke-virtual {v0, p1}, Landroid/support/b/ad;->a(I)Landroid/support/b/ad;

    return-object p0
.end method

.method public a(Landroid/support/b/q;)Landroid/support/b/aa;
    .locals 2

    iget-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    check-cast p1, Landroid/support/b/p;

    iget-object v1, p1, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, v1}, Landroid/support/b/ad;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    return-object p0
.end method

.method public synthetic b(I)Landroid/support/b/ab;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/b/aa;->a(I)Landroid/support/b/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/support/b/q;)Landroid/support/b/ab;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/b/aa;->a(Landroid/support/b/q;)Landroid/support/b/aa;

    move-result-object v0

    return-object v0
.end method
