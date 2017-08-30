.class public final Lcom/tapjoy/internal/ba;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-lez p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-ne p1, v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p1, v0

    goto :goto_0
.end method
