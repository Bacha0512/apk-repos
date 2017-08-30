.class abstract Lcom/twitter/sdk/android/core/internal/oauth/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/o;

.field private final b:Lcom/twitter/sdk/android/core/internal/d;

.field private final c:Ljava/lang/String;

.field private final d:Ld/m;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/o;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/o;

    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->b:Lcom/twitter/sdk/android/core/internal/d;

    const-string v0, "TwitterAndroidSDK"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->c:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sslSocketFactory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/w$a;

    invoke-direct {v0}, Lb/w$a;-><init>()V

    invoke-virtual {v0, p2}, Lb/w$a;->a(Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/d$1;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/internal/oauth/d$1;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/d;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/w$a;->a()Lb/w;

    move-result-object v0

    new-instance v1, Ld/m$a;

    invoke-direct {v1}, Ld/m$a;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/d;->d()Lcom/twitter/sdk/android/core/internal/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/m$a;->a(Ljava/lang/String;)Ld/m$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/m$a;->a(Lb/w;)Ld/m$a;

    move-result-object v0

    invoke-static {}, Ld/a/a/a;->a()Ld/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/m$a;->a(Ld/e$a;)Ld/m$a;

    move-result-object v0

    invoke-virtual {v0}, Ld/m$a;->a()Ld/m;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->d:Ld/m;

    return-void
.end method


# virtual methods
.method protected c()Lcom/twitter/sdk/android/core/o;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/o;

    return-object v0
.end method

.method protected d()Lcom/twitter/sdk/android/core/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->b:Lcom/twitter/sdk/android/core/internal/d;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Ld/m;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->d:Ld/m;

    return-object v0
.end method
