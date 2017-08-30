.class public Lcom/rami_bar/fun_call/voip/VoipManager;
.super Ljava/lang/Object;
.source "VoipManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;,
        Lcom/rami_bar/fun_call/voip/VoipManager$Provider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/rami_bar/fun_call/voip/VoipManager;


# instance fields
.field private isInCall:Z

.field private mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentProvider:Ljava/lang/String;

.field private mCurrentProviderNumber:I

.field private mServiceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

.field private mSpeakerOn:Z

.field private mVoipExtensionArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/VoipExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/rami_bar/fun_call/voip/VoipManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mServiceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->isInCall:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/voip/VoipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/VoipManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/rami_bar/fun_call/voip/VoipManager;->initSDKs()V

    return-void
.end method

.method static synthetic access$202(Lcom/rami_bar/fun_call/voip/VoipManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/VoipManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/voip/VoipManager;)Lorg/abtollc/sdk/AbtoPhone;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/VoipManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/voip/VoipManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/VoipManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rami_bar/fun_call/voip/VoipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/voip/VoipManager;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->isInCall:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;
    .locals 2

    .prologue
    .line 166
    const-class v1, Lcom/rami_bar/fun_call/voip/VoipManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rami_bar/fun_call/voip/VoipManager;->instance:Lcom/rami_bar/fun_call/voip/VoipManager;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/rami_bar/fun_call/voip/VoipManager;

    invoke-direct {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;-><init>()V

    sput-object v0, Lcom/rami_bar/fun_call/voip/VoipManager;->instance:Lcom/rami_bar/fun_call/voip/VoipManager;

    .line 169
    :cond_0
    sget-object v0, Lcom/rami_bar/fun_call/voip/VoipManager;->instance:Lcom/rami_bar/fun_call/voip/VoipManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleIAX(Lcom/rami_bar/fun_call/objects/receive/VoipExtension;)V
    .locals 4
    .param p1, "voipExtension"    # Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    .prologue
    .line 73
    sget-object v1, Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;

    const-string v2, "IAX onRegistered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.rami_bar.fun_call"

    const-string v3, "com.rami_bar.fun_call.voip.IAX2Service"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "voip_extension"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 77
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 78
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v3, "VoipManager"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Voip SDK"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "IAX"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method private handleVoipSipSdk(Lcom/rami_bar/fun_call/objects/receive/VoipExtension;)V
    .locals 3
    .param p1, "voipExtension"    # Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoApplication;->getAbtoPhone()Lorg/abtollc/sdk/AbtoPhone;

    move-result-object v1

    iput-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    .line 84
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    new-instance v2, Lcom/rami_bar/fun_call/voip/VoipManager$1;

    invoke-direct {v2, p0, p1}, Lcom/rami_bar/fun_call/voip/VoipManager$1;-><init>(Lcom/rami_bar/fun_call/voip/VoipManager;Lcom/rami_bar/fun_call/objects/receive/VoipExtension;)V

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setInitializeListener(Lorg/abtollc/sdk/OnInitializeListener;)V

    .line 138
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v0

    .line 139
    .local v0, "config":Lorg/abtollc/sdk/AbtoPhoneCfg;
    sget-object v1, Lorg/abtollc/utils/codec/Codec;->G729:Lorg/abtollc/utils/codec/Codec;

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setCodecPriority(Lorg/abtollc/utils/codec/Codec;S)V

    .line 140
    sget-object v1, Lorg/abtollc/utils/codec/Codec;->PCMU:Lorg/abtollc/utils/codec/Codec;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setCodecPriority(Lorg/abtollc/utils/codec/Codec;S)V

    .line 141
    sget-object v1, Lorg/abtollc/utils/codec/Codec;->GSM:Lorg/abtollc/utils/codec/Codec;

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setCodecPriority(Lorg/abtollc/utils/codec/Codec;S)V

    .line 142
    sget-object v1, Lorg/abtollc/utils/codec/Codec;->PCMA:Lorg/abtollc/utils/codec/Codec;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setCodecPriority(Lorg/abtollc/utils/codec/Codec;S)V

    .line 143
    sget-object v1, Lorg/abtollc/utils/codec/Codec;->speex_16000:Lorg/abtollc/utils/codec/Codec;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setCodecPriority(Lorg/abtollc/utils/codec/Codec;S)V

    .line 145
    iget-object v1, p1, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->port:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setSipPort(I)V

    .line 147
    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setRegisterTimeout(I)V

    .line 148
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setHangupTimeout(I)V

    .line 149
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->initialize(Z)V

    .line 150
    sget-object v1, Lcom/rami_bar/fun_call/voip/VoipManager;->TAG:Ljava/lang/String;

    const-string v2, "mAbtoPhone Initialize..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private initSDKs()V
    .locals 4

    .prologue
    .line 50
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mVoipExtensionArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProviderNumber:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;

    .line 52
    .local v0, "voipExtension":Lcom/rami_bar/fun_call/objects/receive/VoipExtension;
    iget v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProviderNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProviderNumber:I

    .line 53
    iget v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProviderNumber:I

    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mVoipExtensionArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/rami_bar/fun_call/utiles/Functions;->modulo(II)I

    move-result v1

    iput v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProviderNumber:I

    .line 55
    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/VoipExtension;->provider:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 67
    invoke-direct {p0}, Lcom/rami_bar/fun_call/voip/VoipManager;->initSDKs()V

    .line 70
    :goto_1
    return-void

    .line 55
    :sswitch_0
    const-string v3, "voipsipsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "iaxsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 57
    :pswitch_0
    const-string v1, "voipsipsdk"

    iput-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    .line 58
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->handleVoipSipSdk(Lcom/rami_bar/fun_call/objects/receive/VoipExtension;)V

    goto :goto_1

    .line 62
    :pswitch_1
    const-string v1, "iaxsdk"

    iput-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    .line 63
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->handleIAX(Lcom/rami_bar/fun_call/objects/receive/VoipExtension;)V

    goto :goto_1

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4743f626 -> :sswitch_1
        0x6dd532c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCallStatusListener(Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V
    .locals 3
    .param p1, "onCallStatusListener"    # Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 310
    :cond_1
    :goto_1
    return-void

    .line 267
    :sswitch_0
    const-string v2, "voipsipsdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "iaxsdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    new-instance v1, Lcom/rami_bar/fun_call/voip/VoipManager$2;

    invoke-direct {v1, p0, p1}, Lcom/rami_bar/fun_call/voip/VoipManager$2;-><init>(Lcom/rami_bar/fun_call/voip/VoipManager;Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/sdk/AbtoPhone;->setCallConnectedListener(Lorg/abtollc/sdk/OnCallConnectedListener;)V

    .line 279
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    new-instance v1, Lcom/rami_bar/fun_call/voip/VoipManager$3;

    invoke-direct {v1, p0, p1}, Lcom/rami_bar/fun_call/voip/VoipManager$3;-><init>(Lcom/rami_bar/fun_call/voip/VoipManager;Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/sdk/AbtoPhone;->setCallDisconnectedListener(Lorg/abtollc/sdk/OnCallDisconnectedListener;)V

    goto :goto_1

    .line 287
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rami_bar/fun_call/voip/VoipManager$4;

    invoke-direct {v1, p0, p1}, Lcom/rami_bar/fun_call/voip/VoipManager$4;-><init>(Lcom/rami_bar/fun_call/voip/VoipManager;Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4743f626 -> :sswitch_1
        0x6dd532c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    if-eqz v1, :cond_2

    .line 323
    :try_start_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhone;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhone;->destroy()V

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setInitializeListener(Lorg/abtollc/sdk/OnInitializeListener;)V

    .line 327
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setRegistrationStateListener(Lorg/abtollc/sdk/OnRegistrationListener;)V

    .line 328
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setCallConnectedListener(Lorg/abtollc/sdk/OnCallConnectedListener;)V

    .line 329
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setCallDisconnectedListener(Lorg/abtollc/sdk/OnCallDisconnectedListener;)V

    .line 330
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setOnCallHeldListener(Lorg/abtollc/sdk/OnCallHeldListener;)V

    .line 331
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setRemoteAlertingListener(Lorg/abtollc/sdk/OnRemoteAlertingListener;)V

    .line 332
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->setToneReceivedListener(Lorg/abtollc/sdk/OnToneReceivedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 338
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 334
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 200
    iget-object v3, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 200
    :sswitch_0
    const-string v4, "voipsipsdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "iaxsdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    if-eqz v1, :cond_1

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoPhone;->getCurrentAccountId()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/abtollc/sdk/AbtoPhone;->startCall(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mServiceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    invoke-interface {v1, p1}, Lorg/androvoip/iax2/IAX2ServiceAPI;->dial(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :goto_2
    iput-boolean v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->isInCall:Z

    goto :goto_1

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4743f626 -> :sswitch_1
        0x6dd532c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hangup()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v3, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 245
    :cond_1
    :goto_1
    return-void

    .line 224
    :sswitch_0
    const-string v4, "voipsipsdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "iaxsdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    if-eqz v1, :cond_1

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhone;->hangUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mServiceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    invoke-interface {v1}, Lorg/androvoip/iax2/IAX2ServiceAPI;->hangup()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :goto_2
    iput-boolean v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->isInCall:Z

    goto :goto_1

    .line 239
    :catch_1
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4743f626 -> :sswitch_1
        0x6dd532c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSpeakerOn()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mSpeakerOn:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 155
    invoke-static {p2}, Lorg/androvoip/iax2/IAX2ServiceAPI$Stub;->asInterface(Landroid/os/IBinder;)Lorg/androvoip/iax2/IAX2ServiceAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mServiceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    .line 156
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mServiceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    .line 161
    return-void
.end method

.method public sendDTMF(C)V
    .locals 4
    .param p1, "myChar"    # C

    .prologue
    .line 248
    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProvider:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 264
    :cond_1
    :goto_1
    return-void

    .line 248
    :sswitch_0
    const-string v3, "voipsipsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "iaxsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 250
    :pswitch_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    if-eqz v1, :cond_1

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1, p1}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    sget-object v1, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1, p1}, Lcom/mexuar/corraleta/protocol/Call;->sendDTMF(C)V

    goto :goto_1

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4743f626 -> :sswitch_1
        0x6dd532c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSpeakerOn(Z)V
    .locals 2
    .param p1, "speakerOn"    # Z

    .prologue
    .line 183
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-boolean p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mSpeakerOn:Z

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mAbtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1, p1}, Lorg/abtollc/sdk/AbtoPhone;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setup(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 3
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/VoipExtension;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "voipExtensionArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/VoipExtension;>;"
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mVoipExtensionArray:Ljava/util/ArrayList;

    .line 174
    iput-object p2, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mCurrentProviderNumber:I

    .line 177
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/rami_bar/fun_call/utiles/Functions;->startProgressDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 179
    invoke-direct {p0}, Lcom/rami_bar/fun_call/voip/VoipManager;->initSDKs()V

    .line 180
    return-void
.end method
