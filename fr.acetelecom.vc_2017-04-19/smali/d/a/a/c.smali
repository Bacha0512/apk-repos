.class final Ld/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ld/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/e",
        "<",
        "Lb/ac;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/f;

.field private final b:Lcom/google/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/f;Lcom/google/a/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/f;",
            "Lcom/google/a/w",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a/a/c;->a:Lcom/google/a/f;

    iput-object p2, p0, Ld/a/a/c;->b:Lcom/google/a/w;

    return-void
.end method


# virtual methods
.method public a(Lb/ac;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ac;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/a/a/c;->a:Lcom/google/a/f;

    invoke-virtual {p1}, Lb/ac;->e()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/f;->a(Ljava/io/Reader;)Lcom/google/a/d/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ld/a/a/c;->b:Lcom/google/a/w;

    invoke-virtual {v1, v0}, Lcom/google/a/w;->a(Lcom/google/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1}, Lb/ac;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lb/ac;->close()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lb/ac;

    invoke-virtual {p0, p1}, Ld/a/a/c;->a(Lb/ac;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
