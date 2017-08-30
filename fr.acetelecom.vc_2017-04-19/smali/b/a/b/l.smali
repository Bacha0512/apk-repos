.class public final Lb/a/b/l;
.super Ljava/lang/Exception;


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1

    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lb/a/b/l;->a()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
