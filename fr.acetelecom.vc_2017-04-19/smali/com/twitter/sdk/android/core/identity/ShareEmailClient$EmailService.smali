.class interface abstract Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/ShareEmailClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EmailService"
.end annotation


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
        a = "/1.1/account/verify_credentials.json?include_email=true"
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
