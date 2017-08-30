.class Lcom/rami_bar/fun_call/activities/ActivityMain$11;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->sendRegistrationIdToBackend()V
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
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$11;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

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
    .line 1296
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
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
    .line 1275
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    .line 1276
    .local v2, "statusCode":I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    const/4 v1, 0x0

    .line 1282
    .local v1, "received":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1287
    :goto_1
    if-eqz v1, :cond_0

    .line 1291
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$11;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$11;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$11;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$900(Lcom/rami_bar/fun_call/activities/ActivityMain;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2600(Lcom/rami_bar/fun_call/activities/ActivityMain;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
