.class Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$3;
.super Ljava/lang/Object;
.source "FragmentDailyBonus.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getDailyBonus()V
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
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

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
    .line 181
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 182
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
    .line 160
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    const/4 v2, 0x0

    .line 162
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 171
    :cond_0
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 172
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    const-wide/32 v4, 0x5265c00

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setBonusWait(J)V
    invoke-static {v3, v4, v5}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->access$300(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;J)V

    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "get_caller_info"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void

    .line 163
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
