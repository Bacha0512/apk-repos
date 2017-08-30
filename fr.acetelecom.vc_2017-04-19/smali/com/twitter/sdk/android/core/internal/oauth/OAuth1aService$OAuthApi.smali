.class interface abstract Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OAuthApi"
.end annotation


# virtual methods
.method public abstract getAccessToken(Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/i;
            a = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/s;
            a = "oauth_verifier"
        .end annotation
    .end param
    .annotation runtime Ld/b/n;
        a = "/oauth/access_token"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTempToken(Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/i;
            a = "Authorization"
        .end annotation
    .end param
    .annotation runtime Ld/b/n;
        a = "/oauth/request_token"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method
