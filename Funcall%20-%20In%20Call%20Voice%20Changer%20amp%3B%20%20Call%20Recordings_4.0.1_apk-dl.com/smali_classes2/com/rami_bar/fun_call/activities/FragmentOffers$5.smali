.class Lcom/rami_bar/fun_call/activities/FragmentOffers$5;
.super Ljava/lang/Object;
.source "FragmentOffers.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers;->handleRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

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
    .line 346
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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
    .line 338
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "get_caller_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    return-void
.end method
