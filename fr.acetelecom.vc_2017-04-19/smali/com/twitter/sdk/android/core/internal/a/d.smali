.class public Lcom/twitter/sdk/android/core/internal/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lb/t;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/j",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/j",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/d;->a:Lcom/twitter/sdk/android/core/j;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/a/d;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-void
.end method


# virtual methods
.method public a(Lb/t$a;)Lb/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/z;->e()Lb/z$a;

    move-result-object v1

    invoke-virtual {v0}, Lb/z;->a()Lb/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/a/d;->a(Lb/s;)Lb/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/z$a;->a(Lb/s;)Lb/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/z;->e()Lb/z$a;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/a/d;->a(Lb/z;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    return-object v0
.end method

.method a(Lb/s;)Lb/s;
    .locals 5

    invoke-virtual {p1}, Lb/s;->o()Lb/s$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/s$a;->c(Ljava/lang/String;)Lb/s$a;

    move-result-object v1

    invoke-virtual {p1}, Lb/s;->m()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lb/s;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/a/a/a/a/e/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lb/s;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/a/a/a/a/e/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lb/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lb/s$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/s$a;->c()Lb/s;

    move-result-object v0

    return-object v0
.end method

.method a(Lb/z;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/b;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/b;-><init>()V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/a/d;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/a/d;->a:Lcom/twitter/sdk/android/core/j;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/j;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lb/z;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lb/z;->a()Lb/s;

    move-result-object v5

    invoke-virtual {v5}, Lb/s;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/a/d;->b(Lb/z;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Lb/z;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/z;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "POST"

    invoke-virtual {p1}, Lb/z;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/z;->d()Lb/aa;

    move-result-object v0

    instance-of v1, v0, Lb/p;

    if-eqz v1, :cond_0

    check-cast v0, Lb/p;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lb/p;->a()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lb/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lb/p;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
