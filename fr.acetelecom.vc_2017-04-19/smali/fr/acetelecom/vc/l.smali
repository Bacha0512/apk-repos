.class public abstract Lfr/acetelecom/vc/l;
.super Ljava/lang/Object;


# direct methods
.method public static a([I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p0

    if-ge v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, p0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, p0, v2

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
