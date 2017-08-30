.class interface abstract Lcom/rami_bar/fun_call/activities/ActivityMain$CallerInfoInterface;
.super Ljava/lang/Object;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CallerInfoInterface"
.end annotation


# virtual methods
.method public abstract send(Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;)Lretrofit2/Call;
    .param p1    # Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rami_bar/fun_call/objects/send/JsonSendCallerInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "get_caller_info.php"
    .end annotation
.end method
