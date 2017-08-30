.class public Lcom/rami_bar/fun_call/voip/IAX2Service;
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

.field private calling_number:Ljava/lang/String;

.field private friend:Lcom/mexuar/corraleta/protocol/Friend;

.field private lastHost:Ljava/lang/String;

.field private lastPassword:Ljava/lang/String;

.field private lastUsername:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field private notificationManager:Landroid/app/NotificationManager;

.field private registerSent:Z

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastHost:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastUsername:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastPassword:Ljava/lang/String;

    .line 53
    const-string v0, "0000"

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->calling_number:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    .line 55
    iput-object v2, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    .line 57
    iput-boolean v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z

    .line 58
    iput-boolean v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registerSent:Z

    .line 59
    new-instance v0, Lorg/androvoip/iax2/AndroidAudioInterface;

    invoke-direct {v0}, Lorg/androvoip/iax2/AndroidAudioInterface;-><init>()V

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->audioInterface:Lorg/androvoip/iax2/AndroidAudioInterface;

    .line 61
    new-instance v0, Lcom/rami_bar/fun_call/voip/IAX2Service$1;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/voip/IAX2Service$1;-><init>(Lcom/rami_bar/fun_call/voip/IAX2Service;)V

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->apiBinder:Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/voip/IAX2Service;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/IAX2Service;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/voip/IAX2Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/IAX2Service;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/rami_bar/fun_call/voip/IAX2Service;->refreshIAX2Binder()V

    return-void
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/voip/IAX2Service;)Lcom/mexuar/corraleta/protocol/Friend;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/IAX2Service;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/voip/IAX2Service;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/IAX2Service;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/voip/IAX2Service;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/IAX2Service;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rami_bar/fun_call/voip/IAX2Service;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/IAX2Service;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->calling_number:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized refreshIAX2Binder()V
    .locals 7

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    const-string v2, ""

    .line 128
    .local v2, "host":Ljava/lang/String;
    const-string v4, ""

    .line 129
    .local v4, "username":Ljava/lang/String;
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .local v3, "password":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->mHost:Ljava/lang/String;

    .line 132
    iget-object v4, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->mUsername:Ljava/lang/String;

    .line 133
    iget-object v3, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->mPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_0
    :try_start_2
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastHost:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    if-eqz v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v5}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->stop()V

    .line 142
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    .line 144
    :cond_1
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 127
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "username":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 151
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    .restart local v4    # "username":Ljava/lang/String;
    :cond_3
    :try_start_4
    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    if-nez v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->audioInterface:Lorg/androvoip/iax2/AndroidAudioInterface;

    invoke-virtual {v5, p0}, Lorg/androvoip/iax2/AndroidAudioInterface;->setContext(Landroid/content/Context;)V

    .line 153
    new-instance v5, Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    iget-object v6, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->audioInterface:Lorg/androvoip/iax2/AndroidAudioInterface;

    invoke-direct {v5, v2, v6}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;-><init>(Ljava/lang/String;Lcom/mexuar/corraleta/audio/AudioInterface;)V

    iput-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    .line 154
    iput-object v2, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastHost:Ljava/lang/String;

    .line 155
    const-string v5, ""

    iput-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastUsername:Ljava/lang/String;

    .line 156
    const-string v5, ""

    iput-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastPassword:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    :cond_4
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastPassword:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registerSent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_2

    .line 167
    :cond_5
    :try_start_6
    iget-boolean v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z

    if-eqz v5, :cond_6

    .line 168
    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v5, p0}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->unregister(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V

    .line 169
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z

    .line 170
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registerSent:Z

    .line 172
    :cond_6
    iget-object v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, p0, v6}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->register(Ljava/lang/String;Ljava/lang/String;Lcom/mexuar/corraleta/protocol/ProtocolEventListener;Z)V

    .line 173
    iput-object v4, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastUsername:Ljava/lang/String;

    .line 174
    iput-object v3, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->lastPassword:Ljava/lang/String;

    .line 175
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registerSent:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public accept(Lcom/mexuar/corraleta/protocol/Call;)Z
    .locals 1
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public answered(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 219
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call has been answered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public hungUp(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 226
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call hung up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    if-ne v0, p1, :cond_0

    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    .line 230
    :cond_0
    return-void
.end method

.method public newCall(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 236
    sput-object p1, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    .line 237
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    const-string v1, "voip_extension"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    .line 107
    .local v0, "voipExten":Lcom/rami_bar/fun_call/objects/receive/VoipExtension;
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, v0, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->server:Ljava/lang/String;

    iput-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->mHost:Ljava/lang/String;

    .line 109
    iget-object v1, v0, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->user:Ljava/lang/String;

    iput-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->mUsername:Ljava/lang/String;

    .line 110
    iget-object v1, v0, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->pass:Ljava/lang/String;

    iput-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->mPassword:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/rami_bar/fun_call/voip/IAX2Service;->refreshIAX2Binder()V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->apiBinder:Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;

    return-object v1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "IAX2Service"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v1, p0}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->unregister(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V

    .line 204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registerSent:Z

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/netse/BinderSE;->stop()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->binder:Lcom/mexuar/corraleta/protocol/netse/BinderSE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "start_id"    # I

    .prologue
    .line 189
    const-string v0, "IAX2Service"

    const-string v1, "onStart() called unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public registered(Lcom/mexuar/corraleta/protocol/Friend;Z)V
    .locals 8
    .param p1, "f"    # Lcom/mexuar/corraleta/protocol/Friend;
    .param p2, "s"    # Z

    .prologue
    const/4 v5, 0x0

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lorg/androvoip/ui/AndroVoIPActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 248
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/voip/IAX2Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->notificationManager:Landroid/app/NotificationManager;

    .line 250
    if-eqz p2, :cond_1

    const-string v1, "Registered"

    .line 251
    .local v1, "mText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Landroid/app/Notification;

    const/high16 v4, 0x7f030000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090077

    invoke-virtual {p0, v6}, Lcom/rami_bar/fun_call/voip/IAX2Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    .line 253
    .local v2, "notification":Landroid/app/Notification;
    iput-boolean p2, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->registered:Z

    .line 254
    if-eqz p2, :cond_2

    .line 255
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    .line 260
    :cond_0
    :goto_1
    return-void

    .line 250
    .end local v1    # "mText":Ljava/lang/CharSequence;
    .end local v2    # "notification":Landroid/app/Notification;
    :cond_1
    const-string v1, "Unregistered"

    goto :goto_0

    .line 256
    .restart local v1    # "mText":Ljava/lang/CharSequence;
    .restart local v2    # "notification":Landroid/app/Notification;
    :cond_2
    iget-object v4, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    if-eqz v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v4}, Lcom/mexuar/corraleta/protocol/Friend;->stop()V

    .line 258
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/rami_bar/fun_call/voip/IAX2Service;->friend:Lcom/mexuar/corraleta/protocol/Friend;

    goto :goto_1
.end method

.method public ringing(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "c"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 266
    const-string v0, "IAX2Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call is ringing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public setHostReachable(Lcom/mexuar/corraleta/protocol/Friend;ZI)V
    .locals 3
    .param p1, "f"    # Lcom/mexuar/corraleta/protocol/Friend;
    .param p2, "b"    # Z
    .param p3, "roundtrip"    # I

    .prologue
    .line 274
    const-string v1, "IAX2Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 275
    return-void

    .line 274
    :cond_0
    const-string v0, "No"

    goto :goto_0
.end method
