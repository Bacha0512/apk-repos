.class public Lcom/twitter/sdk/android/core/internal/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/e;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/c;->a:Lcom/twitter/sdk/android/core/e;

    return-void
.end method


# virtual methods
.method a(Lb/ab;)Lb/z;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/a/c;->c(Lb/ab;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a/c;->a:Lcom/twitter/sdk/android/core/e;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/a/c;->b(Lb/ab;)Lcom/twitter/sdk/android/core/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/e;->a(Lcom/twitter/sdk/android/core/d;)Lcom/twitter/sdk/android/core/d;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/ab;->a()Lb/z;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/sdk/android/core/internal/a/c;->a(Lb/z;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lb/z;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/d;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Lb/ad;Lb/ab;)Lb/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/core/internal/a/c;->a(Lb/ab;)Lb/z;

    move-result-object v0

    return-object v0
.end method

.method a(Lb/z;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lb/z;
    .locals 1

    invoke-virtual {p1}, Lb/z;->e()Lb/z$a;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/twitter/sdk/android/core/internal/a/a;->a(Lb/z$a;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    return-object v0
.end method

.method b(Lb/ab;)Lcom/twitter/sdk/android/core/d;
    .locals 6

    invoke-virtual {p1}, Lb/ab;->a()Lb/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/z;->c()Lb/r;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-guest-token"

    invoke-virtual {v0, v2}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    const-string v3, "bearer"

    const-string v4, "bearer "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/sdk/android/core/d;

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/d;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lb/ab;)Z
    .locals 3

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lb/ab;->h()Lb/ab;

    move-result-object p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
