.class Landroid/support/b/e;
.super Landroid/support/b/s;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/b/s;-><init>()V

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/b/e;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    return-void
.end method
