.class public Lcom/twitter/sdk/android/core/internal/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/t;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/e;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/a;->a:Lcom/twitter/sdk/android/core/e;

    return-void
.end method

.method static a(Lb/z$a;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    const-string v0, "x-guest-token"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    return-void
.end method


# virtual methods
.method public a(Lb/t$a;)Lb/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a/a;->a:Lcom/twitter/sdk/android/core/e;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/e;->a()Lcom/twitter/sdk/android/core/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lb/z;->e()Lb/z$a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/internal/a/a;->a(Lb/z$a;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    invoke-virtual {v1}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/d;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    goto :goto_1
.end method
