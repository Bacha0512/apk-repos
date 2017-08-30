.class Lcom/rami_bar/fun_call/voip/VoipManager$1;
.super Ljava/lang/Object;
.source "VoipManager.java"

# interfaces
.implements Lorg/abtollc/sdk/OnInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/voip/VoipManager;->handleVoipSipSdk(Lcom/rami_bar/fun_call/objects/receive/VoipExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

.field final synthetic val$voipExtension:Lcom/rami_bar/fun_call/objects/receive/VoipExtension;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/voip/VoipManager;Lcom/rami_bar/fun_call/objects/receive/VoipExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/voip/VoipManager;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    iput-object p2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->val$voipExtension:Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeState(Lorg/abtollc/sdk/OnInitializeListener$InitializeState;Ljava/lang/String;)V
    .locals 9
    .param p1, "state"    # Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/rami_bar/fun_call/voip/VoipManager$5;->$SwitchMap$org$abtollc$sdk$OnInitializeListener$InitializeState:[I

    invoke-virtual {p1}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 89
    :pswitch_0
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone Initialize START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :pswitch_1
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone Initialize INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :pswitch_2
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone Initialize WARNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_3
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone Initialize FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # invokes: Lcom/rami_bar/fun_call/voip/VoipManager;->initSDKs()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$100(Lcom/rami_bar/fun_call/voip/VoipManager;)V

    goto :goto_0

    .line 102
    :pswitch_4
    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAbtoPhone Initialize SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$300(Lcom/rami_bar/fun_call/voip/VoipManager;)Lorg/abtollc/sdk/AbtoPhone;

    move-result-object v0

    new-instance v1, Lcom/rami_bar/fun_call/voip/VoipManager$1$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/voip/VoipManager$1$1;-><init>(Lcom/rami_bar/fun_call/voip/VoipManager$1;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/sdk/AbtoPhone;->setRegistrationStateListener(Lorg/abtollc/sdk/OnRegistrationListener;)V

    .line 126
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$300(Lcom/rami_bar/fun_call/voip/VoipManager;)Lorg/abtollc/sdk/AbtoPhone;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->val$voipExtension:Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->val$voipExtension:Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->val$voipExtension:Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    iget-object v3, v3, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->pass:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$400(Lcom/rami_bar/fun_call/voip/VoipManager;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12c

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lorg/abtollc/sdk/AbtoPhoneCfg;->addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)J

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$1;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$300(Lcom/rami_bar/fun_call/voip/VoipManager;)Lorg/abtollc/sdk/AbtoPhone;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhone;->register()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v8

    .line 130
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
