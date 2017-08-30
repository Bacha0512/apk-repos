.class Lcom/twitter/sdk/android/core/a/f$1;
.super Lcom/google/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/a/f;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;
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

.field final synthetic b:Lcom/google/a/c/a;

.field final synthetic c:Lcom/twitter/sdk/android/core/a/f;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/a/f;Lcom/google/a/w;Lcom/google/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/a/f$1;->c:Lcom/twitter/sdk/android/core/a/f;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/a/f$1;->a:Lcom/google/a/w;

    iput-object p3, p0, Lcom/twitter/sdk/android/core/a/f$1;->b:Lcom/google/a/c/a;

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Lcom/twitter/sdk/android/core/a/f$1;->a:Lcom/google/a/w;

    invoke-virtual {v0, p1}, Lcom/google/a/w;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/a/f$1;->b:Lcom/google/a/c/a;

    invoke-virtual {v2}, Lcom/google/a/c/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
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

    iget-object v0, p0, Lcom/twitter/sdk/android/core/a/f$1;->a:Lcom/google/a/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/w;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
