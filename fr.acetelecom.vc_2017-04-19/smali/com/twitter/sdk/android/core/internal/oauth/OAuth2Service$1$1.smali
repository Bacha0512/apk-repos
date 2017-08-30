.class Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->a(Lcom/twitter/sdk/android/core/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/a;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/a;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v2, Lcom/twitter/sdk/android/core/i;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/twitter/sdk/android/core/i;-><init>(Ljava/lang/Object;Ld/l;)V

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/i;)V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key."

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1$1;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$1;->a:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/p;)V

    return-void
.end method
