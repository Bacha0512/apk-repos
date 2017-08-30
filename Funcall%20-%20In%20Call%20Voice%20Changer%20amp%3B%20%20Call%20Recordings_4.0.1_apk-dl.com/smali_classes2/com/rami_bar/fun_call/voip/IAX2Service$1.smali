.class Lcom/rami_bar/fun_call/voip/IAX2Service$1;
.super Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;
.source "IAX2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/voip/IAX2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/voip/IAX2Service;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/voip/IAX2Service;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    invoke-direct {p0}, Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dial(Ljava/lang/String;)Z
    .locals 6
    .param p1, "called_number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    sget-object v1, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "IAX2Service"

    const-string v2, "Can not dial, call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    # getter for: Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;
    invoke-static {v1}, Lcom/rami_bar/fun_call/voip/IAX2Service;->access$200(Lcom/rami_bar/fun_call/voip/IAX2Service;)Lcom/mexuar/corraleta/protocol/Friend;

    move-result-object v1

    if-nez v1, :cond_1

    .line 77
    const-string v1, "IAX2Service"

    const-string v2, "Can not dial, not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    # getter for: Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/IAX2Service;->access$200(Lcom/rami_bar/fun_call/voip/IAX2Service;)Lcom/mexuar/corraleta/protocol/Friend;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    # getter for: Lcom/rami_bar/fun_call/voip/IAX2Service;->lastUsername:Ljava/lang/String;
    invoke-static {v1}, Lcom/rami_bar/fun_call/voip/IAX2Service;->access$300(Lcom/rami_bar/fun_call/voip/IAX2Service;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    # getter for: Lcom/rami_bar/fun_call/voip/IAX2Service;->lastPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/rami_bar/fun_call/voip/IAX2Service;->access$400(Lcom/rami_bar/fun_call/voip/IAX2Service;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    # getter for: Lcom/rami_bar/fun_call/voip/IAX2Service;->calling_number:Ljava/lang/String;
    invoke-static {v3}, Lcom/rami_bar/fun_call/voip/IAX2Service;->access$500(Lcom/rami_bar/fun_call/voip/IAX2Service;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    invoke-static {v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mexuar/corraleta/protocol/Friend;->newCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mexuar/corraleta/protocol/Call;

    move-result-object v0

    sput-object v0, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    .line 82
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRegistrationStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    # getter for: Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/IAX2Service;->access$000(Lcom/rami_bar/fun_call/voip/IAX2Service;)Z

    move-result v0

    return v0
.end method

.method public hangup()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "IAX2Service"

    const-string v1, "Can not hang up, no call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 91
    :cond_0
    sget-object v0, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->hangup()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public refreshIAX2Registration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;->this$0:Lcom/rami_bar/fun_call/voip/IAX2Service;

    # invokes: Lcom/rami_bar/fun_call/voip/IAX2Service;->refreshIAX2Binder()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/voip/IAX2Service;->access$100(Lcom/rami_bar/fun_call/voip/IAX2Service;)V

    .line 68
    return-void
.end method
