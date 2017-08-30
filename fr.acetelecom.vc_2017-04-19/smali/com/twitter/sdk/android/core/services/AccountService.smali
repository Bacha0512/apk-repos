.class public interface abstract Lcom/twitter/sdk/android/core/services/AccountService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ld/b;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ld/b/s;
            a = "include_entities"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ld/b/s;
            a = "skip_status"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/1.1/account/verify_credentials.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Ld/b",
            "<",
            "Lcom/twitter/sdk/android/core/a/h;",
            ">;"
        }
    .end annotation
.end method
