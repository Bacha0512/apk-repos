.class public interface abstract Lcom/digits/sdk/android/GuestAuthApiInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract account(Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "phone_number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "numeric_pin"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/1.1/sdk/account.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "x_auth_phone_number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "verification_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "lang"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/1/sdk/login"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;JLjava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "login_verification_request_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Ld/b/c;
            a = "login_verification_user_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "login_verification_challenge_response"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/auth/1/xauth_challenge.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "raw_phone_number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "text_key"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Ld/b/c;
            a = "send_numeric_pin"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "lang"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "client_identifier_string"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "verification_type"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/1.1/device/register.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract verifyPin(Ljava/lang/String;JLjava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "login_verification_request_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Ld/b/c;
            a = "login_verification_user_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "pin"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/auth/1/xauth_pin.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/e;",
            ">;"
        }
    .end annotation
.end method
