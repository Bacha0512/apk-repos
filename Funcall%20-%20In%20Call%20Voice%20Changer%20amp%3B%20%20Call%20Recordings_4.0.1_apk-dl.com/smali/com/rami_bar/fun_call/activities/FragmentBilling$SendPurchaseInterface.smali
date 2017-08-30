.class interface abstract Lcom/rami_bar/fun_call/activities/FragmentBilling$SendPurchaseInterface;
.super Ljava/lang/Object;
.source "FragmentBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/FragmentBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SendPurchaseInterface"
.end annotation


# virtual methods
.method public abstract send(Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;)Lretrofit2/Call;
    .param p1    # Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user_purchase_android.php"
    .end annotation
.end method
