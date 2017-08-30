.class Lcom/rami_bar/fun_call/activities/ActivityMain$10;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->getCallerInfo()V
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
        "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;",
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
    .line 1190
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;>;"
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1800(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1250
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupNoInternet()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1300(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    .line 1251
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1193
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_call:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1100(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 1195
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1199
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    .line 1200
    .local v0, "statusCode":I
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupNoInternet()V
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1300(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    goto :goto_0

    .line 1205
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    .line 1206
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1800(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1207
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-nez v1, :cond_2

    .line 1208
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupNoInternet()V
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1300(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    goto :goto_0

    .line 1212
    :cond_2
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->status:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->status:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1213
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->error_msg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/rami_bar/fun_call/utiles/Functions;->openPopupMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1217
    :cond_3
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->set_userid:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->set_userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1218
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->set_userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setEmail(Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->set_userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setFileUserId(Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->set_userid:Ljava/lang/String;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->file:Ljava/io/File;
    invoke-static {v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1900(Lcom/rami_bar/fun_call/activities/ActivityMain;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/rami_bar/fun_call/utiles/Functions;->writeToFile(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    .line 1223
    :cond_4
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->force_app_update:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->force_app_update:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1224
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/rami_bar/fun_call/activities/ActivityPopup;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->startActivity(Landroid/content/Intent;)V

    .line 1227
    :cond_5
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->resend_token:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->resend_token:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1228
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->handleGcmRegistration()V
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2000(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    .line 1231
    :cond_6
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->message_list:Ljava/util/ArrayList;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->updateSuggestionsPager(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2100(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/util/ArrayList;)V

    .line 1233
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->register_callerid:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;->clid_type:Ljava/lang/String;

    sput-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->callerIdType:Ljava/lang/String;

    .line 1235
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->tv_cost:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2200(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->txt_price:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->recording_credit:I

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setRecordsLeft(I)V

    .line 1239
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->sdkInitialized:Z
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2300(Lcom/rami_bar/fun_call/activities/ActivityMain;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1240
    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Lcom/rami_bar/fun_call/activities/ActivityMain$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1241
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # setter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->sdkInitialized:Z
    invoke-static {v1, v6}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2302(Lcom/rami_bar/fun_call/activities/ActivityMain;Z)Z

    .line 1244
    :cond_7
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$10;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->setButtonsState(Z)V
    invoke-static {v1, v6}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2500(Lcom/rami_bar/fun_call/activities/ActivityMain;Z)V

    goto/16 :goto_0
.end method
