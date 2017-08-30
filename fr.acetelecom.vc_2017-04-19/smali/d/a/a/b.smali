.class final Ld/a/a/b;
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
        "<TT;",
        "Lb/aa;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lb/u;

.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private final c:Lcom/google/a/f;

.field private final d:Lcom/google/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    sput-object v0, Ld/a/a/b;->a:Lb/u;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ld/a/a/b;->b:Ljava/nio/charset/Charset;

    return-void
.end method

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

    iput-object p1, p0, Ld/a/a/b;->c:Lcom/google/a/f;

    iput-object p2, p0, Ld/a/a/b;->d:Lcom/google/a/w;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/a/a/b;->b(Ljava/lang/Object;)Lb/aa;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lb/aa;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lb/aa;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lc/c;->d()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Ld/a/a/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object v2, p0, Ld/a/a/b;->c:Lcom/google/a/f;

    invoke-virtual {v2, v1}, Lcom/google/a/f;->a(Ljava/io/Writer;)Lcom/google/a/d/c;

    move-result-object v1

    iget-object v2, p0, Ld/a/a/b;->d:Lcom/google/a/w;

    invoke-virtual {v2, v1, p1}, Lcom/google/a/w;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/a/d/c;->close()V

    sget-object v1, Ld/a/a/b;->a:Lb/u;

    invoke-virtual {v0}, Lc/c;->p()Lc/f;

    move-result-object v0

    invoke-static {v1, v0}, Lb/aa;->a(Lb/u;Lc/f;)Lb/aa;

    move-result-object v0

    return-object v0
.end method
