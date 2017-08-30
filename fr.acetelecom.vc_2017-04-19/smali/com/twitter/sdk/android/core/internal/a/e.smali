.class public Lcom/twitter/sdk/android/core/internal/a/e;
.super Ljava/lang/Object;


# direct methods
.method static a(Lb/w$a;Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;
    .locals 2

    invoke-virtual {p0, p2}, Lb/w$a;->a(Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/c;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/internal/a/c;-><init>(Lcom/twitter/sdk/android/core/e;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/b;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/a;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/internal/a/a;-><init>(Lcom/twitter/sdk/android/core/e;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/b;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lb/w$a;->b(Lb/t;)Lb/w$a;

    move-result-object v0

    return-object v0
.end method

.method static a(Lb/w$a;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w$a;",
            "Lcom/twitter/sdk/android/core/j",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ")",
            "Lb/w$a;"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lb/w$a;->a(Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/d;

    invoke-direct {v1, p1, p2}, Lcom/twitter/sdk/android/core/internal/a/d;-><init>(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;)Lb/w;
    .locals 1

    invoke-static {p0, p1}, Lcom/twitter/sdk/android/core/internal/a/e;->b(Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/w$a;->a()Lb/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljavax/net/ssl/SSLSocketFactory;)Lb/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/j",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ")",
            "Lb/w;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/a/e;->b(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/w$a;->a()Lb/w;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;
    .locals 1

    new-instance v0, Lb/w$a;

    invoke-direct {v0}, Lb/w$a;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lb/w$a;Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/j",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ")",
            "Lb/w$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/w$a;

    invoke-direct {v0}, Lb/w$a;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lb/w$a;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    return-object v0
.end method
