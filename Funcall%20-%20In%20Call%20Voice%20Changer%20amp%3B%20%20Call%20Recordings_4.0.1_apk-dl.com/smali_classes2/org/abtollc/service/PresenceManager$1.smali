.class Lorg/abtollc/service/PresenceManager$1;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "PresenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/PresenceManager;->addBuddiesForAccount(Lorg/abtollc/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/PresenceManager;

.field final synthetic val$toAdd:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/abtollc/service/PresenceManager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/PresenceManager;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/abtollc/service/PresenceManager$1;->this$0:Lorg/abtollc/service/PresenceManager;

    iput-object p2, p0, Lorg/abtollc/service/PresenceManager$1;->val$toAdd:Ljava/util/List;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lorg/abtollc/service/PresenceManager$1;->val$toAdd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "uri":Ljava/lang/String;
    iget-object v2, p0, Lorg/abtollc/service/PresenceManager$1;->this$0:Lorg/abtollc/service/PresenceManager;

    # getter for: Lorg/abtollc/service/PresenceManager;->service:Lorg/abtollc/service/ABTOSipService;
    invoke-static {v2}, Lorg/abtollc/service/PresenceManager;->access$000(Lorg/abtollc/service/PresenceManager;)Lorg/abtollc/service/ABTOSipService;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/abtollc/service/ABTOSipService;->addBuddy(Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0    # "uri":Ljava/lang/String;
    :cond_0
    return-void
.end method
