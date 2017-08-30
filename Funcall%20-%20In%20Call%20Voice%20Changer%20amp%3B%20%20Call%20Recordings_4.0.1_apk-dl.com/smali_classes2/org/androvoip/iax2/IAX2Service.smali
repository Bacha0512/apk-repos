.class public Lorg/androvoip/iax2/IAX2Service;
.super Landroid/app/Service;
.source "IAX2Service.java"

# interfaces
.implements Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
.implements Lcom/mexuar/corraleta/protocol/CallManager;


# static fields
.field public static call:Lcom/mexuar/corraleta/protocol/Call;


# instance fields
.field private final apiBinder:Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;

.field private audioInterface:Lorg/androvoip/iax2/AndroidAudioInterface;

.field private binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

.field private callingName:Ljava/lang/String;

.field private callingNo:Ljava/lang/String;

.field private friend:Lcom/mexuar/corraleta/protocol/Friend;

.field private lastHost:Ljava/lang/String;

.field private lastPassword:Ljava/lang/String;

.field private lastUsername:Ljava/lang/String;

.field private notificationManager:Landroid/app/NotificationManager;

.field private registerSent:Z

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->lastHost:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->lastUsername:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->lastPassword:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->callingNo:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->callingName:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    .line 52
    iput-object v2, p0, Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    .line 54
    iput-boolean v1, p0, Lorg/androvoip/iax2/IAX2Service;->registered:Z

    .line 55
    iput-boolean v1, p0, Lorg/androvoip/iax2/IAX2Service;->registerSent:Z

    .line 56
    new-instance v0, Lorg/androvoip/iax2/AndroidAudioInterface;

    invoke-direct {v0}, Lorg/androvoip/iax2/AndroidAudioInterface;-><init>()V

    iput-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->audioInterface:Lorg/androvoip/iax2/AndroidAudioInterface;

    .line 58
    new-instance v0, Lorg/androvoip/iax2/IAX2Service$1;

    invoke-direct {v0, p0}, Lorg/androvoip/iax2/IAX2Service$1;-><init>(Lorg/androvoip/iax2/IAX2Service;)V

    iput-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->apiBinder:Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lorg/androvoip/iax2/IAX2Service;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/androvoip/iax2/IAX2Service;->registered:Z

    return v0
.end method

.method static synthetic access$1(Lorg/androvoip/iax2/IAX2Service;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/androvoip/iax2/IAX2Service;->refreshIAX2Binder()V

    return-void
.end method

.method static synthetic access$2(Lorg/androvoip/iax2/IAX2Service;)Lcom/mexuar/corraleta/protocol/Friend;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    return-object v0
.end method

.method static synthetic access$3(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->lastUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->lastPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->callingNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lorg/androvoip/iax2/IAX2Service;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->callingName:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized refreshIAX2Binder()V
    .locals 8

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    const-string v1, "178.79.140.149"

    .line 126
    .local v1, "host":Ljava/lang/String;
    const-string v3, "4001"

    .line 127
    .local v3, "username":Ljava/lang/String;
    const-string v2, "barBARbar"

    .line 130
    .local v2, "password":Ljava/lang/String;
    const-string v4, "178.79.140.149"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "178.79.140.149"

    iget-object v5, p0, Lorg/androvoip/iax2/IAX2Service;->lastHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 132
    :cond_0
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v4}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->stop()V

    .line 135
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    .line 137
    :cond_1
    const-string v4, "178.79.140.149"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_3
    :try_start_1
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    if-nez v4, :cond_4

    .line 148
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->audioInterface:Lorg/androvoip/iax2/AndroidAudioInterface;

    invoke-virtual {v4, p0}, Lorg/androvoip/iax2/AndroidAudioInterface;->setContext(Landroid/content/Context;)V

    .line 149
    new-instance v4, Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    const-string v5, "178.79.140.149"

    iget-object v6, p0, Lorg/androvoip/iax2/IAX2Service;->audioInterface:Lorg/androvoip/iax2/AndroidAudioInterface;

    invoke-direct {v4, v5, v6}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;-><init>(Ljava/lang/String;Lcom/mexuar/corraleta/audio/AudioInterface;)V

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    .line 150
    const-string v4, "178.79.140.149"

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->lastHost:Ljava/lang/String;

    .line 151
    const-string v4, ""

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->lastUsername:Ljava/lang/String;

    .line 152
    const-string v4, ""

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->lastPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_4
    :goto_1
    :try_start_2
    const-string v4, "4001"

    iget-object v5, p0, Lorg/androvoip/iax2/IAX2Service;->lastUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "barBARbar"

    iget-object v5, p0, Lorg/androvoip/iax2/IAX2Service;->lastPassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lorg/androvoip/iax2/IAX2Service;->registerSent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    .line 166
    :cond_5
    :try_start_3
    iget-boolean v4, p0, Lorg/androvoip/iax2/IAX2Service;->registered:Z

    if-eqz v4, :cond_6

    .line 168
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v4, p0}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->unregister(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V

    .line 169
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/androvoip/iax2/IAX2Service;->registered:Z

    .line 170
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/androvoip/iax2/IAX2Service;->registerSent:Z

    .line 172
    :cond_6
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    const-string v5, "4001"

    const-string v6, "barBARbar"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, p0, v7}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->register(Ljava/lang/String;Ljava/lang/String;Lcom/mexuar/corraleta/protocol/ProtocolEventListener;Z)V

    .line 173
    const-string v4, "4001"

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->lastUsername:Ljava/lang/String;

    .line 174
    const-string v4, "barBARbar"

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->lastPassword:Ljava/lang/String;

    .line 175
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/androvoip/iax2/IAX2Service;->registerSent:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "username":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 154
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "password":Ljava/lang/String;
    .restart local v3    # "username":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/net/SocketException;
    :try_start_5
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public accept(Lcom/mexuar/corraleta/protocol/Call;)Z
    .locals 1
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public answered(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 227
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call has been answered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public hungUp(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 235
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call hung up: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v0, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    if-ne v0, p1, :cond_0

    .line 238
    const/4 v0, 0x0

    sput-object v0, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    .line 240
    :cond_0
    return-void
.end method

.method public newCall(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 247
    sput-object p1, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    .line 248
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/androvoip/iax2/IAX2Service;->refreshIAX2Binder()V

    .line 111
    iget-object v0, p0, Lorg/androvoip/iax2/IAX2Service;->apiBinder:Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "IAX2Service"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v1, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 207
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/androvoip/iax2/IAX2Service;->registered:Z

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v1, p0}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->unregister(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/androvoip/iax2/IAX2Service;->registered:Z

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/androvoip/iax2/IAX2Service;->registerSent:Z

    .line 213
    :cond_1
    iget-object v1, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->stop()V

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/androvoip/iax2/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-object v1, p0, Lorg/androvoip/iax2/IAX2Service;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "start_id"    # I

    .prologue
    .line 191
    const-string v0, "IAX2Service"

    const-string v1, "onStart() called unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public registered(Lcom/mexuar/corraleta/protocol/Friend;Z)V
    .locals 8
    .param p1, "f"    # Lcom/mexuar/corraleta/protocol/Friend;
    .param p2, "s"    # Z

    .prologue
    const/4 v5, 0x0

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lorg/androvoip/ui/AndroVoIPActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 260
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lorg/androvoip/iax2/IAX2Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->notificationManager:Landroid/app/NotificationManager;

    .line 262
    if-eqz p2, :cond_1

    const-string v1, "Registered"

    .line 263
    .local v1, "mText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Landroid/app/Notification;

    sget v4, Lorg/androvoip/R$drawable;->icon:I

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lorg/androvoip/R$string;->app_name:I

    invoke-virtual {p0, v6}, Lorg/androvoip/iax2/IAX2Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 265
    .local v2, "notification":Landroid/app/Notification;
    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lorg/androvoip/R$string;->app_name:I

    invoke-virtual {p0, v5}, Lorg/androvoip/iax2/IAX2Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Friend;->getStatus()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, p0, v5, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 266
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 269
    iput-boolean p2, p0, Lorg/androvoip/iax2/IAX2Service;->registered:Z

    .line 270
    if-eqz p2, :cond_3

    .line 272
    iput-object p1, p0, Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    .line 278
    :cond_0
    :goto_2
    return-void

    .line 262
    .end local v1    # "mText":Ljava/lang/CharSequence;
    .end local v2    # "notification":Landroid/app/Notification;
    :cond_1
    const-string v1, "Unregistered"

    goto :goto_0

    .line 265
    .restart local v1    # "mText":Ljava/lang/CharSequence;
    .restart local v2    # "notification":Landroid/app/Notification;
    :cond_2
    const-string v4, ""

    goto :goto_1

    .line 273
    :cond_3
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v4}, Lcom/mexuar/corraleta/protocol/Friend;->stop()V

    .line 276
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/androvoip/iax2/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    goto :goto_2
.end method

.method public ringing(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 285
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call is ringing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public setHostReachable(Lcom/mexuar/corraleta/protocol/Friend;ZI)V
    .locals 3
    .param p1, "f"    # Lcom/mexuar/corraleta/protocol/Friend;
    .param p2, "b"    # Z
    .param p3, "roundtrip"    # I

    .prologue
    .line 294
    const-string v1, "IAX2Service"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Host: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Reachable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "Yes "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "RTT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 294
    :cond_0
    const-string v0, "No"

    goto :goto_0
.end method
