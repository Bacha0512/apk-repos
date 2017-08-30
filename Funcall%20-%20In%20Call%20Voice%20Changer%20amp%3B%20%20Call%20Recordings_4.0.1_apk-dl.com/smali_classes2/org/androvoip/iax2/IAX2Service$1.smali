.class Lorg/androvoip/iax2/IAX2Service$1;
.super Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;
.source "IAX2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androvoip/iax2/IAX2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androvoip/iax2/IAX2Service;


# direct methods
.method constructor <init>(Lorg/androvoip/iax2/IAX2Service;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    .line 58
    invoke-direct {p0}, Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dial(Ljava/lang/String;)Z
    .locals 6
    .param p1, "num"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    sget-object v1, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "IAX2Service"

    const-string v2, "Can not dial, call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # getter for: Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;
    invoke-static {v1}, Lorg/androvoip/iax2/IAX2Service;->access$2(Lorg/androvoip/iax2/IAX2Service;)Lcom/mexuar/corraleta/protocol/Friend;

    move-result-object v1

    if-nez v1, :cond_1

    .line 80
    const-string v1, "IAX2Service"

    const-string v2, "Can not dial, not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # getter for: Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;
    invoke-static {v0}, Lorg/androvoip/iax2/IAX2Service;->access$2(Lorg/androvoip/iax2/IAX2Service;)Lcom/mexuar/corraleta/protocol/Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # getter for: Lorg/androvoip/iax2/IAX2Service;->lastUsername:Ljava/lang/String;
    invoke-static {v1}, Lorg/androvoip/iax2/IAX2Service;->access$3(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # getter for: Lorg/androvoip/iax2/IAX2Service;->lastPassword:Ljava/lang/String;
    invoke-static {v2}, Lorg/androvoip/iax2/IAX2Service;->access$4(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # getter for: Lorg/androvoip/iax2/IAX2Service;->callingNo:Ljava/lang/String;
    invoke-static {v3}, Lorg/androvoip/iax2/IAX2Service;->access$5(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # getter for: Lorg/androvoip/iax2/IAX2Service;->callingName:Ljava/lang/String;
    invoke-static {v3}, Lorg/androvoip/iax2/IAX2Service;->access$6(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mexuar/corraleta/protocol/Friend;->newCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mexuar/corraleta/protocol/Call;

    move-result-object v0

    sput-object v0, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    .line 86
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
    .line 62
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # getter for: Lorg/androvoip/iax2/IAX2Service;->registered:Z
    invoke-static {v0}, Lorg/androvoip/iax2/IAX2Service;->access$0(Lorg/androvoip/iax2/IAX2Service;)Z

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
    .line 91
    sget-object v0, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "IAX2Service"

    const-string v1, "Can not hang up, no call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_0
    sget-object v0, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->hangup()V

    .line 99
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
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service$1;->this$0:Lorg/androvoip/iax2/IAX2Service;

    # invokes: Lorg/androvoip/iax2/IAX2Service;->refreshIAX2Binder()V
    invoke-static {v0}, Lorg/androvoip/iax2/IAX2Service;->access$1(Lorg/androvoip/iax2/IAX2Service;)V

    .line 68
    return-void
.end method
