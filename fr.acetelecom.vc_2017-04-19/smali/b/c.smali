.class public final Lb/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lb/a/d;

.field private final b:Lb/a/b;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c;->b:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->flush()V

    return-void
.end method
