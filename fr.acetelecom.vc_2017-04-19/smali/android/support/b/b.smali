.class Landroid/support/b/b;
.super Landroid/support/b/ad;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/b/ad;-><init>()V

    invoke-virtual {p0, v2}, Landroid/support/b/b;->a(I)Landroid/support/b/ad;

    new-instance v0, Landroid/support/b/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/b/j;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/b/b;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    move-result-object v0

    new-instance v1, Landroid/support/b/f;

    invoke-direct {v1}, Landroid/support/b/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/b/ad;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    move-result-object v0

    new-instance v1, Landroid/support/b/j;

    invoke-direct {v1, v2}, Landroid/support/b/j;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/b/ad;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    return-void
.end method
