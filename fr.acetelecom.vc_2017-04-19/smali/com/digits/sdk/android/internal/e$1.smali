.class Lcom/digits/sdk/android/internal/e$1;
.super Lcom/google/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/internal/e;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/w;

.field final synthetic b:Lcom/digits/sdk/android/internal/e;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/internal/e;Lcom/google/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/internal/e$1;->b:Lcom/digits/sdk/android/internal/e;

    iput-object p2, p0, Lcom/digits/sdk/android/internal/e$1;->a:Lcom/google/a/w;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/internal/e$1;->a:Lcom/google/a/w;

    invoke-virtual {v0, p1}, Lcom/google/a/w;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/digits/sdk/android/internal/e$a;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/digits/sdk/android/internal/e$a;

    invoke-interface {v0}, Lcom/digits/sdk/android/internal/e$a;->a()V

    :cond_0
    return-object v1
.end method

.method public a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/internal/e$1;->a:Lcom/google/a/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/w;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
