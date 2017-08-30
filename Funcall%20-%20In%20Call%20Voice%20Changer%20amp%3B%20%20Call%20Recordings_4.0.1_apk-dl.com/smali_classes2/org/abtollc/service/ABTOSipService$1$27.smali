.class Lorg/abtollc/service/ABTOSipService$1$27;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->setPresence(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$accountId:J

.field final synthetic val$presenceInt:I

.field final synthetic val$statusText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;ILjava/lang/String;J)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 775
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$27;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$27;->val$presenceInt:I

    iput-object p3, p0, Lorg/abtollc/service/ABTOSipService$1$27;->val$statusText:Ljava/lang/String;

    iput-wide p4, p0, Lorg/abtollc/service/ABTOSipService$1$27;->val$accountId:J

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1$27;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v0, v0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-static {}, Lorg/abtollc/api/SipManager$PresenceStatus;->values()[Lorg/abtollc/api/SipManager$PresenceStatus;

    move-result-object v1

    iget v2, p0, Lorg/abtollc/service/ABTOSipService$1$27;->val$presenceInt:I

    aget-object v1, v1, v2

    # setter for: Lorg/abtollc/service/ABTOSipService;->presence:Lorg/abtollc/api/SipManager$PresenceStatus;
    invoke-static {v0, v1}, Lorg/abtollc/service/ABTOSipService;->access$502(Lorg/abtollc/service/ABTOSipService;Lorg/abtollc/api/SipManager$PresenceStatus;)Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 779
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1$27;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v1, v1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->presence:Lorg/abtollc/api/SipManager$PresenceStatus;
    invoke-static {v1}, Lorg/abtollc/service/ABTOSipService;->access$500(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/api/SipManager$PresenceStatus;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1$27;->val$statusText:Ljava/lang/String;

    iget-wide v4, p0, Lorg/abtollc/service/ABTOSipService$1$27;->val$accountId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/abtollc/voip/SipService;->setPresence(Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;J)V

    .line 780
    return-void
.end method
