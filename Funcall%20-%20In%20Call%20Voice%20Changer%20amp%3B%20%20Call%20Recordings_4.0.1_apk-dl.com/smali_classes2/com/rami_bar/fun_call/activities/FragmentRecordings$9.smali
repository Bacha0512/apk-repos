.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$9;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings;->deleteRecording(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
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
        "Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$9;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

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
            "Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;>;"
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 419
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;>;"
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 401
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    .line 402
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;

    .line 408
    .local v0, "receive":Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;
    if-eqz v0, :cond_0

    .line 412
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$9;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$9;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
