.class Lcom/weirdvoice/service/SipService$1$23;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->setPresence(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$accountId:J

.field private final synthetic val$presenceInt:I

.field private final synthetic val$statusText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;ILjava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$23;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput p2, p0, Lcom/weirdvoice/service/SipService$1$23;->val$presenceInt:I

    iput-object p3, p0, Lcom/weirdvoice/service/SipService$1$23;->val$statusText:Ljava/lang/String;

    iput-wide p4, p0, Lcom/weirdvoice/service/SipService$1$23;->val$accountId:J

    .line 698
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1$23;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v0

    invoke-static {}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->values()[Lcom/weirdvoice/api/SipManager$PresenceStatus;

    move-result-object v1

    iget v2, p0, Lcom/weirdvoice/service/SipService$1$23;->val$presenceInt:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/weirdvoice/service/SipService;->access$5(Lcom/weirdvoice/service/SipService;Lcom/weirdvoice/api/SipManager$PresenceStatus;)V

    .line 702
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1$23;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v1}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v1

    # getter for: Lcom/weirdvoice/service/SipService;->presence:Lcom/weirdvoice/api/SipManager$PresenceStatus;
    invoke-static {v1}, Lcom/weirdvoice/service/SipService;->access$6(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/api/SipManager$PresenceStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1$23;->val$statusText:Ljava/lang/String;

    iget-wide v4, p0, Lcom/weirdvoice/service/SipService$1$23;->val$accountId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/weirdvoice/pjsip/PjSipService;->setPresence(Lcom/weirdvoice/api/SipManager$PresenceStatus;Ljava/lang/String;J)V

    .line 703
    return-void
.end method
