.class final Lcom/rami_bar/fun_call/activities/FragmentBilling$6;
.super Ljava/lang/Object;
.source "FragmentBilling.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentBilling;->sendPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$6;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 407
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 382
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v3

    .line 383
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 402
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$6;->val$context:Landroid/app/Activity;

    invoke-static {v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setOrderJson(Ljava/lang/String;)V

    .line 388
    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$6;->val$context:Landroid/app/Activity;

    invoke-static {v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setSignature(Ljava/lang/String;)V

    .line 392
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/ResponseBody;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 397
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$6;->val$context:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 399
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "get_caller_info"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$6;->val$context:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
