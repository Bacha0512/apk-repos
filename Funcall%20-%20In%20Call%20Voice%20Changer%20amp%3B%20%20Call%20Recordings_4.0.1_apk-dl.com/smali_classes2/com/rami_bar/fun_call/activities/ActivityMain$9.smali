.class Lcom/rami_bar/fun_call/activities/ActivityMain$9;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->sendCallParameter(Ljava/lang/String;)V
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
        "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;",
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
    .line 1111
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;>;"
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_call:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1100(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 1153
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupNoInternet()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1300(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    .line 1154
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1114
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;>;"
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_call:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1100(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 1115
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->bt_keyboard:Landroid/support/design/widget/FloatingActionButton;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1200(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 1117
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-virtual {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    .line 1122
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupNoInternet()V
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1300(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    goto :goto_0

    .line 1127
    :cond_2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;

    .line 1129
    .local v0, "jsonGetCallResult":Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->status:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1130
    :cond_3
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupNoInternet()V
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1300(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    goto :goto_0

    .line 1134
    :cond_4
    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_call_result:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;

    .line 1135
    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->status:Ljava/lang/String;

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1136
    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->display_text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1137
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->display_text:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/utiles/Functions;->openPopupMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    :cond_5
    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->display_text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1141
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->display_text:Ljava/lang/String;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->openPopupCallLessTime(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1400(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)V

    .line 1142
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->return_number:Ljava/lang/String;

    # setter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->operatorNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1502(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1146
    :cond_6
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->return_number:Ljava/lang/String;

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$9;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->mDisplayNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1600(Lcom/rami_bar/fun_call/activities/ActivityMain;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->makeCall(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1700(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
