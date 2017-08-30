.class Lorg/abtollc/voip/UAStateReceiver$1;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/voip/UAStateReceiver;->on_reg_state(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/voip/UAStateReceiver;

.field final synthetic val$accountId:I


# direct methods
.method constructor <init>(Lorg/abtollc/voip/UAStateReceiver;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 507
    iput-object p1, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    iput p2, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc8

    .line 512
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-virtual {v3, v4}, Lorg/abtollc/voip/SipService;->updateProfileStateFromService(I)V

    .line 516
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-virtual {v3, v4}, Lorg/abtollc/voip/SipService;->getAccountForPjsipId(I)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 517
    .local v0, "account":Lorg/abtollc/api/SipProfile;
    if-nez v0, :cond_1

    .line 518
    const-string v3, "SIP UA Receiver"

    const-string v4, "SipProfile account == null"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/abtollc/voip/SipService;->getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;

    move-result-object v1

    .line 523
    .local v1, "pState":Lorg/abtollc/api/SipProfileState;
    if-nez v1, :cond_2

    .line 524
    const-string v3, "SIP UA Receiver"

    const-string v4, "SipProfileState pState == null"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_2
    iget v3, v0, Lorg/abtollc/api/SipProfile;->try_clean_registers:I

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/abtollc/api/SipProfile;->active:Z

    if-eqz v3, :cond_0

    .line 536
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We have a new status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 537
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    .line 538
    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;
    invoke-static {v5}, Lorg/abtollc/voip/UAStateReceiver;->access$100(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getExpires()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getStatusCode()I

    move-result v3

    if-le v3, v7, :cond_4

    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$100(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 544
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while registering for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_3
    :goto_1
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending clean ups are  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;
    invoke-static {v5}, Lorg/abtollc/voip/UAStateReceiver;->access$100(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_4
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getStatusCode()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 552
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getExpires()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    .line 553
    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$100(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 555
    const-string v3, "SIP UA Receiver"

    const-string v4, "Reg ok"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/abtollc/jni/pjsua;->acc_set_registration(II)I

    move-result v2

    .line 558
    .local v2, "state":I
    sget v3, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v2, v3, :cond_5

    .line 559
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$100(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    :cond_5
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Impossible to set again registration now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 565
    .end local v2    # "state":I
    :cond_6
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getStatusCode()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 566
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$1;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$100(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/voip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
