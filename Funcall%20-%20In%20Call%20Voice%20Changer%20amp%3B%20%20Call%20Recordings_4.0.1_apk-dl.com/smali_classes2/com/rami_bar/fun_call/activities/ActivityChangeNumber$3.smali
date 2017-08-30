.class Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;
.super Ljava/lang/Object;
.source "ActivityChangeNumber.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sendCallRequestToServer(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

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
            "Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;>;"
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 348
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 312
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    .line 313
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/utiles/Functions;->openPopupMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;

    .line 320
    .local v0, "registerReceived":Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;->status:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 324
    iget-object v5, v0, Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;->status:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 326
    :pswitch_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    const v5, 0x7f0900ec

    invoke-virtual {v4, v5}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/rami_bar/fun_call/utiles/Functions;->openPopupMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rl_change_number_register_code_send:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$400(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 324
    :sswitch_0
    const-string v6, "create_success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v6, "register_success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    goto :goto_1

    :sswitch_2
    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    .line 331
    :pswitch_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    iget-object v5, v0, Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;->user_number:Ljava/lang/String;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setMyNumberRadioButton(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$500(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$600(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 333
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # setter for: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->counter:I
    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$702(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;I)I

    .line 334
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rl_change_number_register_code_send:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$400(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    const-string v2, "my_number"

    sput-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->callerIdType:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    const v4, 0x7f0900ce

    invoke-virtual {v3, v4}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/utiles/Functions;->openPopupMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :pswitch_2
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;->display_text:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/utiles/Functions;->openPopupMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    nop

    :sswitch_data_0
    .sparse-switch
        0x5c4d208 -> :sswitch_2
        0xba5c267 -> :sswitch_1
        0x5067cbc0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
