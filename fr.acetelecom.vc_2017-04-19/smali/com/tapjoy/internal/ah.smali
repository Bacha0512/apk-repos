.class public final Lcom/tapjoy/internal/ah;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ah$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/ah$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ah$a;-><init>(Landroid/view/ViewGroup;)V

    new-instance v1, Lcom/tapjoy/internal/ah$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ah$1;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
