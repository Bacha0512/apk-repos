.class interface abstract Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$RegisterInterface;
.super Ljava/lang/Object;
.source "ActivityChangeNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RegisterInterface"
.end annotation


# virtual methods
.method public abstract send(Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;)Lretrofit2/Call;
    .param p1    # Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "register_user.php"
    .end annotation
.end method
