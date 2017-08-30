.class Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a(Lcom/twitter/sdk/android/core/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/c;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/c;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->a:Lcom/twitter/sdk/android/core/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;

    invoke-direct {v1, p0, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    invoke-virtual {v2, v1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get app auth token"

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->a:Lcom/twitter/sdk/android/core/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->a:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/p;)V

    :cond_0
    return-void
.end method
