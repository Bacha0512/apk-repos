.class interface abstract Lcom/rami_bar/fun_call/activities/ActivityMain$CallRequestInterface;
.super Ljava/lang/Object;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CallRequestInterface"
.end annotation


# virtual methods
.method public abstract send(Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;)Lretrofit2/Call;
    .param p1    # Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rami_bar/fun_call/objects/send/JsonSendCallParams;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "call_request.php"
    .end annotation
.end method
