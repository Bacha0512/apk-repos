.class Lorg/abtollc/sdk/AbtoPhone$1;
.super Ljava/lang/Object;
.source "AbtoPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/sdk/AbtoPhone;


# direct methods
.method constructor <init>(Lorg/abtollc/sdk/AbtoPhone;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone$1;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "paramComponentName"    # Landroid/content/ComponentName;
    .param p2, "paramIBinder"    # Landroid/os/IBinder;

    .prologue
    .line 232
    iget-object v6, p0, Lorg/abtollc/sdk/AbtoPhone$1;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-static {v6}, Lorg/abtollc/sdk/AbtoPhone;->access$000(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/api/ISipService;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 234
    .local v4, "inited":Z
    :goto_0
    iget-object v6, p0, Lorg/abtollc/sdk/AbtoPhone$1;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-static {p2}, Lorg/abtollc/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/abtollc/api/ISipService;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/sdk/AbtoPhone;->access$002(Lorg/abtollc/sdk/AbtoPhone;Lorg/abtollc/api/ISipService;)Lorg/abtollc/api/ISipService;

    .line 236
    iget-object v6, p0, Lorg/abtollc/sdk/AbtoPhone$1;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-static {v6}, Lorg/abtollc/sdk/AbtoPhone;->access$100(Lorg/abtollc/sdk/AbtoPhone;)V

    .line 239
    if-eqz v4, :cond_0

    :try_start_0
    iget-object v6, p0, Lorg/abtollc/sdk/AbtoPhone$1;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-static {v6}, Lorg/abtollc/sdk/AbtoPhone;->access$000(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/api/ISipService;

    move-result-object v6

    invoke-interface {v6}, Lorg/abtollc/api/ISipService;->isCreated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v3, "eventData":Landroid/os/Bundle;
    const-string v6, "init_state"

    sget-object v7, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->SUCCESS:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 242
    invoke-virtual {v7}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v7

    .line 241
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string v6, "message"

    const-string v7, "Initialization success"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 246
    .local v5, "msg":Landroid/os/Message;
    const/16 v6, 0x8

    iput v6, v5, Landroid/os/Message;->what:I

    .line 247
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :try_start_1
    iget-object v6, p0, Lorg/abtollc/sdk/AbtoPhone$1;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-static {v6}, Lorg/abtollc/sdk/AbtoPhone;->access$200(Lorg/abtollc/sdk/AbtoPhone;)Landroid/os/Messenger;

    move-result-object v6

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 262
    .end local v3    # "eventData":Landroid/os/Bundle;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    const-string v6, "AbtoPhone"

    const-string v7, "service connected"

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 232
    .end local v4    # "inited":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 250
    .restart local v3    # "eventData":Landroid/os/Bundle;
    .restart local v4    # "inited":Z
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e1":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception sending message"

    invoke-static {v6, v7, v1}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 256
    .end local v1    # "e1":Landroid/os/RemoteException;
    .end local v3    # "eventData":Landroid/os/Bundle;
    .end local v5    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "eventData":Landroid/os/Bundle;
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 253
    .local v2, "e2":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception Message.obtain"

    invoke-static {v6, v7, v2}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "paramComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone$1;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/abtollc/sdk/AbtoPhone;->access$002(Lorg/abtollc/sdk/AbtoPhone;Lorg/abtollc/api/ISipService;)Lorg/abtollc/api/ISipService;

    .line 226
    const-string v0, "AbtoPhone"

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
