.class public interface abstract Lcom/digits/sdk/android/UserAuthApiInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deleteAll()Ld/b;
    .annotation runtime Ld/b/n;
        a = "/1.1/contacts/destroy/all.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract email(Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "email_address"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/1.1/sdk/account/email"
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

.method public abstract getContactsMatchesAsPhoneNumbers(Ljava/lang/String;Ljava/lang/Integer;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/s;
            a = "cursor"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ld/b/s;
            a = "count"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/1.1/contacts/phone_numbers.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInvites(ZZ)Ld/b;
    .param p1    # Z
        .annotation runtime Ld/b/s;
            a = "to_me"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Ld/b/s;
            a = "pending_only"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/1.1/invites"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/g;",
            ">;"
        }
    .end annotation
.end method

.method public abstract joinNotify()Ld/b;
    .annotation runtime Ld/b/n;
        a = "/1.1/invites/join_notify"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/g;",
            ">;"
        }
    .end annotation
.end method

.method public abstract recordInvite(Lcom/digits/sdk/android/models/c;)Ld/b;
    .param p1    # Lcom/digits/sdk/android/models/c;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/n;
        a = "/1.1/invites"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/models/c;",
            ")",
            "Ld/b",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract upload(Lcom/digits/sdk/android/models/j;)Ld/b;
    .param p1    # Lcom/digits/sdk/android/models/j;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/n;
        a = "/1.1/contacts/upload.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/models/j;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/i;",
            ">;"
        }
    .end annotation
.end method

.method public abstract usersAndUploadedBy(Ljava/lang/String;Ljava/lang/Integer;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/s;
            a = "cursor"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ld/b/s;
            a = "count"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/1.1/contacts/users_and_uploaded_by.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract verifyAccount()Ld/b;
    .annotation runtime Ld/b/f;
        a = "/1.1/sdk/account.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/k;",
            ">;"
        }
    .end annotation
.end method
