.class public Lcom/weirdvoice/pjsip/PjSipService;
.super Ljava/lang/Object;
.source "PjSipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    }
.end annotation


# static fields
.field private static DTMF_TONE_PAUSE_LENGTH:I = 0x0

.field private static DTMF_TONE_WAIT_LENGTH:I = 0x0

.field private static final THIS_FILE:Ljava/lang/String; = "PjService"

.field private static codecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static codecs_initialized:Z

.field private static video_codecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callPlayers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/weirdvoice/pjsip/player/IPlayerHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private callRecorders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private created:Z

.field private dtmfDialtoneGenerators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private dtmfTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private dtmfToAutoSend:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenChangedRingerMode:Ljava/lang/Integer;

.field private hasBeenHoldByGSM:Ljava/lang/Integer;

.field private hasSipStack:Z

.field private localTcp6AccPjId:Ljava/lang/Integer;

.field private localTcpAccPjId:Ljava/lang/Integer;

.field private localTls6AccPjId:Ljava/lang/Integer;

.field private localTlsAccPjId:Ljava/lang/Integer;

.field private localUdp6AccPjId:Ljava/lang/Integer;

.field private localUdpAccPjId:Ljava/lang/Integer;

.field private mNatDetected:Ljava/lang/String;

.field public mediaManager:Lcom/weirdvoice/service/MediaManager;

.field private pjsipModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;",
            ">;"
        }
    .end annotation
.end field

.field public prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

.field public service:Lcom/weirdvoice/service/SipService;

.field private sipStackIsCorrupted:Z

.field private tasksTimer:Ljava/util/Timer;

.field public userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

.field private waittoneGenerators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public zrtpReceiver:Lcom/weirdvoice/pjsip/ZrtpStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x12c

    sput v0, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_PAUSE_LENGTH:I

    .line 112
    const/16 v0, 0x7d0

    sput v0, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_WAIT_LENGTH:I

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/weirdvoice/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    .line 999
    const/4 v0, 0x0

    sput-boolean v0, Lcom/weirdvoice/pjsip/PjSipService;->codecs_initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    .line 117
    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasSipStack:Z

    .line 118
    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->sipStackIsCorrupted:Z

    .line 124
    iput-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 125
    iput-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->waittoneGenerators:Landroid/util/SparseArray;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mNatDetected:Ljava/lang/String;

    .line 2090
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->callRecorders:Landroid/util/SparseArray;

    .line 2196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->callPlayers:Landroid/util/SparseArray;

    .line 2320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->pjsipModules:Ljava/util/Map;

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/pjsip/PjSipService;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    return v0
.end method

.method private static boolToPjsuaConstant(Z)I
    .locals 1
    .param p0, "v"    # Z

    .prologue
    .line 2380
    if-eqz p0, :cond_0

    sget v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto :goto_0
.end method

.method private buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "codec"    # Ljava/lang/String;
    .param p3, "prio"    # S

    .prologue
    .line 1063
    if-lez p3, :cond_0

    invoke-static {}, Lcom/weirdvoice/utils/Log;->getLogLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1064
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    const-string v0, ") - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_0
    return-void
.end method

.method private cleanPjsua()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 695
    const-string v2, "PjService"

    const-string v3, "Detroying..."

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-wide/16 v0, 0x0

    .line 701
    .local v0, "flags":J
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v2, v5}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    const-wide/16 v0, 0x3

    .line 707
    :cond_0
    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsua;->csipsimple_destroy(J)I

    .line 708
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v2}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 709
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v2, :cond_1

    .line 710
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    invoke-virtual {v2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->stopService()V

    .line 711
    iput-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    .line 714
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v2, :cond_2

    .line 715
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v2}, Lcom/weirdvoice/service/MediaManager;->stopService()V

    .line 716
    iput-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    .line 719
    :cond_2
    invoke-static {}, Lcom/weirdvoice/utils/TimerWrapper;->destroy()V

    .line 721
    iput-boolean v5, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    .line 722
    return-void
.end method

.method private createLocalAccount(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "transportId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    const/4 v1, 0x0

    .line 813
    :goto_0
    return-object v1

    .line 811
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 812
    .local v0, "p_acc_id":[I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    invoke-static {v1, v2, v0}, Lorg/pjsip/pjsua/pjsua;->acc_add_local(II[I)I

    .line 813
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private createLocalTransportAndAccount(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;
    .locals 2
    .param p1, "type"    # Lorg/pjsip/pjsua/pjsip_transport_type_e;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/pjsip/PjSipService;->createTransport(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v0

    .line 819
    .local v0, "transportId":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lcom/weirdvoice/pjsip/PjSipService;->createLocalAccount(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private createTransport(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;
    .locals 18
    .param p1, "type"    # Lorg/pjsip/pjsua/pjsip_transport_type_e;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 731
    new-instance v4, Lorg/pjsip/pjsua/pjsua_transport_config;

    invoke-direct {v4}, Lorg/pjsip/pjsua/pjsua_transport_config;-><init>()V

    .line 732
    .local v4, "cfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    const/4 v15, 0x1

    new-array v12, v15, [I

    .line 734
    .local v12, "tId":[I
    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->transport_config_default(Lorg/pjsip/pjsua/pjsua_transport_config;)V

    .line 735
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPort(J)V

    .line 737
    sget-object v15, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/pjsip/pjsua/pjsip_transport_type_e;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 738
    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_transport_config;->getTls_setting()Lorg/pjsip/pjsua/pjsip_tls_setting;

    move-result-object v14

    .line 748
    .local v14, "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 749
    const-string v16, "ca_list_file"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "caListFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 751
    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setCa_list_file(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 754
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v16, "cert_file"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "certFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 756
    invoke-static {v3}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setCert_file(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 759
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v16, "privkey_file"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, "privKey":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 762
    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setPrivkey_file(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 765
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v16, "tls_password"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 766
    .local v13, "tlsPwd":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 767
    invoke-static {v13}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setPassword(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 770
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 771
    const-string v16, "tls_verify_client"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 772
    .local v5, "checkClient":Z
    if-eqz v5, :cond_7

    const/4 v15, 0x1

    :goto_0
    invoke-virtual {v14, v15}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setVerify_client(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v15}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getTLSMethod()I

    move-result v15

    invoke-static {v15}, Lorg/pjsip/pjsua/pjsip_ssl_method;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_ssl_method;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setMethod(Lorg/pjsip/pjsua/pjsip_ssl_method;)V

    .line 775
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setProto(J)V

    .line 776
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 777
    const-string v16, "tls_verify_server"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 778
    .local v6, "checkServer":Z
    if-eqz v6, :cond_8

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v14, v15}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setVerify_server(I)V

    .line 780
    invoke-virtual {v4, v14}, Lorg/pjsip/pjsua/pjsua_transport_config;->setTls_setting(Lorg/pjsip/pjsua/pjsip_tls_setting;)V

    .line 783
    .end local v2    # "caListFile":Ljava/lang/String;
    .end local v3    # "certFile":Ljava/lang/String;
    .end local v5    # "checkClient":Z
    .end local v6    # "checkServer":Z
    .end local v9    # "privKey":Ljava/lang/String;
    .end local v13    # "tlsPwd":Ljava/lang/String;
    .end local v14    # "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v16, "enable_qos"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 784
    const-string v15, "PjService"

    const-string v16, "Activate qos for this transport"

    invoke-static/range {v15 .. v16}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_transport_config;->getQos_params()Lorg/pjsip/pjsua/pj_qos_params;

    move-result-object v10

    .line 786
    .local v10, "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 787
    const-string v16, "dscp_val"

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v15

    int-to-short v15, v15

    .line 786
    invoke-virtual {v10, v15}, Lorg/pjsip/pjsua/pj_qos_params;->setDscp_val(S)V

    .line 788
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lorg/pjsip/pjsua/pj_qos_params;->setFlags(S)V

    .line 789
    invoke-virtual {v4, v10}, Lorg/pjsip/pjsua/pjsua_transport_config;->setQos_params(Lorg/pjsip/pjsua/pj_qos_params;)V

    .line 792
    .end local v10    # "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v4, v12}, Lorg/pjsip/pjsua/pjsua;->transport_create(Lorg/pjsip/pjsua/pjsip_transport_type_e;Lorg/pjsip/pjsua/pjsua_transport_config;[I)I

    move-result v11

    .line 793
    .local v11, "status":I
    sget v15, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v11, v15, :cond_9

    .line 794
    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->get_error_message(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v15

    invoke-static {v15}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v7

    .line 795
    .local v7, "errorMsg":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Fail to create transport "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 796
    .local v8, "msg":Ljava/lang/String;
    const-string v15, "PjService"

    invoke-static {v15, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const v15, 0x1d522

    if-ne v11, v15, :cond_6

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const v16, 0x7f0c0221

    invoke-virtual/range {v15 .. v16}, Lcom/weirdvoice/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 800
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v15, v8}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 801
    const/4 v15, 0x0

    .line 803
    .end local v7    # "errorMsg":Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    :goto_2
    return-object v15

    .line 772
    .end local v11    # "status":I
    .restart local v2    # "caListFile":Ljava/lang/String;
    .restart local v3    # "certFile":Ljava/lang/String;
    .restart local v5    # "checkClient":Z
    .restart local v9    # "privKey":Ljava/lang/String;
    .restart local v13    # "tlsPwd":Ljava/lang/String;
    .restart local v14    # "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 778
    .restart local v6    # "checkServer":Z
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 803
    .end local v2    # "caListFile":Ljava/lang/String;
    .end local v3    # "certFile":Ljava/lang/String;
    .end local v5    # "checkClient":Z
    .end local v6    # "checkServer":Z
    .end local v9    # "privKey":Ljava/lang/String;
    .end local v13    # "tlsPwd":Ljava/lang/String;
    .end local v14    # "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    .restart local v11    # "status":I
    :cond_9
    const/4 v15, 0x0

    aget v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_2
.end method

.method public static getAccountIdForPjsipId(Landroid/content/Context;I)J
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "pjId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1748
    const-wide/16 v6, -0x1

    .line 1750
    .local v6, "accId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1752
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1754
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1756
    :cond_0
    const-string v0, "pjsua_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1757
    .local v10, "pjsuaId":I
    const-string v0, "PjService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found pjsua "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " searching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    if-ne v10, p1, :cond_2

    .line 1759
    const-string v0, "account_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v6, v0

    .line 1766
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1769
    .end local v10    # "pjsuaId":I
    :cond_1
    :goto_1
    return-wide v6

    .line 1762
    .restart local v10    # "pjsuaId":I
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1763
    .end local v10    # "pjsuaId":I
    :catch_0
    move-exception v9

    .line 1764
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "PjService"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1765
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1767
    throw v0
.end method

.method private getNameservers()[Lorg/pjsip/pjsua/pj_str_t;
    .locals 13

    .prologue
    .line 2002
    const/4 v8, 0x0

    .line 2004
    .local v8, "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    iget-object v10, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v10}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->enableDNSSRV()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2005
    iget-object v10, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 2006
    const-string v11, "override_nameserver"

    invoke-virtual {v10, v11}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2007
    .local v9, "prefsDNS":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2008
    const-string v6, "[ \\[\\]]"

    .line 2009
    .local v6, "ipv6Escape":Ljava/lang/String;
    const-string v5, "^\\d+(\\.\\d+){3}$"

    .line 2010
    .local v5, "ipv4Matcher":Ljava/lang/String;
    const-string v7, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 2012
    .local v7, "ipv6Matcher":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    .local v2, "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2014
    .local v3, "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v10, 0x2

    if-le v4, v10, :cond_1

    .line 2029
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 2032
    move-object v1, v3

    .line 2037
    .local v1, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 2040
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v10, 0x0

    .line 2041
    const-string v11, "127.0.0.1"

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    aput-object v11, v8, v10

    .line 2059
    .end local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "ipv4Matcher":Ljava/lang/String;
    .end local v6    # "ipv6Escape":Ljava/lang/String;
    .end local v7    # "ipv6Matcher":Ljava/lang/String;
    .end local v9    # "prefsDNS":Ljava/lang/String;
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_0
    :goto_2
    return-object v8

    .line 2015
    .restart local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v5    # "ipv4Matcher":Ljava/lang/String;
    .restart local v6    # "ipv6Escape":Ljava/lang/String;
    .restart local v7    # "ipv6Matcher":Ljava/lang/String;
    .restart local v9    # "prefsDNS":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "net.dns"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, "dnsName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2017
    const-string v10, ""

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2018
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2019
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2020
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2022
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2023
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2014
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2034
    .end local v0    # "dnsName":Ljava/lang/String;
    :cond_5
    move-object v1, v2

    .restart local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 2043
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 2044
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v11, 0x0

    .line 2045
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    .line 2047
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    goto :goto_2

    .line 2048
    :cond_7
    const/4 v10, 0x2

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v11, 0x0

    .line 2049
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    const/4 v11, 0x1

    .line 2050
    const/4 v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    .line 2053
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    goto/16 :goto_2

    .line 2054
    .end local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "ipv4Matcher":Ljava/lang/String;
    .end local v6    # "ipv6Escape":Ljava/lang/String;
    .end local v7    # "ipv6Matcher":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v10, 0x0

    .line 2055
    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    aput-object v11, v8, v10

    .line 2054
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    goto/16 :goto_2
.end method

.method private getOnlineForStatus(Lcom/weirdvoice/api/SipManager$PresenceStatus;)I
    .locals 1
    .param p1, "presence"    # Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .prologue
    .line 1744
    sget-object v0, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ONLINE:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUseSrtp()Lorg/pjsip/pjsua/pjmedia_srtp_use;
    .locals 4

    .prologue
    .line 2064
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 2065
    const-string v3, "use_srtp"

    invoke-virtual {v2, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2064
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2066
    .local v1, "use_srtp":I
    if-ltz v1, :cond_0

    .line 2067
    invoke-static {v1}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_srtp_use;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2072
    .end local v1    # "use_srtp":I
    :goto_0
    return-object v2

    .line 2069
    :catch_0
    move-exception v0

    .line 2070
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PjService"

    const-string v3, "Transport port not well formated"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    sget-object v2, Lorg/pjsip/pjsua/pjmedia_srtp_use;->PJMEDIA_SRTP_DISABLED:Lorg/pjsip/pjsua/pjmedia_srtp_use;

    goto :goto_0
.end method

.method private initCodecs()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1022
    sget-object v4, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1023
    :try_start_0
    sget-boolean v3, Lcom/weirdvoice/pjsip/PjSipService;->codecs_initialized:Z

    if-nez v3, :cond_0

    .line 1027
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->codecs_get_nbr()I

    move-result v2

    .line 1028
    .local v2, "nbrCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1034
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    sget-object v5, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setCodecList(Ljava/util/List;)V

    .line 1037
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->codecs_vid_get_nbr()I

    move-result v2

    .line 1038
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 1044
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    sget-object v5, Lcom/weirdvoice/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setVideoCodecList(Ljava/util/List;)V

    .line 1046
    const/4 v3, 0x1

    sput-boolean v3, Lcom/weirdvoice/pjsip/PjSipService;->codecs_initialized:Z

    .line 1048
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v5, "cap_tls"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setLibCapability(Ljava/lang/String;Z)V

    .line 1049
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v5, "cap_srtp"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setLibCapability(Ljava/lang/String;Z)V

    .line 1022
    .end local v1    # "i":I
    .end local v2    # "nbrCodecs":I
    :cond_0
    monitor-exit v4

    .line 1053
    return-void

    .line 1029
    .restart local v1    # "i":I
    .restart local v2    # "nbrCodecs":I
    :cond_1
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->codecs_get_id(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v3

    invoke-static {v3}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "codecId":Ljava/lang/String;
    sget-object v3, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .end local v0    # "codecId":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->codecs_vid_get_id(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v3

    invoke-static {v3}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .restart local v0    # "codecId":Ljava/lang/String;
    sget-object v3, Lcom/weirdvoice/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    const-string v3, "PjService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Added video codec "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1022
    .end local v0    # "codecId":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "nbrCodecs":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private initModules()V
    .locals 4

    .prologue
    .line 2324
    new-instance v1, Lcom/weirdvoice/pjsip/reghandler/RegHandlerModule;

    invoke-direct {v1}, Lcom/weirdvoice/pjsip/reghandler/RegHandlerModule;-><init>()V

    .line 2325
    .local v1, "rModule":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->pjsipModules:Ljava/util/Map;

    const-class v3, Lcom/weirdvoice/pjsip/reghandler/RegHandlerModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    new-instance v1, Lcom/weirdvoice/pjsip/sipclf/SipClfModule;

    .end local v1    # "rModule":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    invoke-direct {v1}, Lcom/weirdvoice/pjsip/sipclf/SipClfModule;-><init>()V

    .line 2328
    .restart local v1    # "rModule":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->pjsipModules:Ljava/util/Map;

    const-class v3, Lcom/weirdvoice/pjsip/sipclf/SipClfModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    new-instance v1, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;

    .end local v1    # "rModule":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    invoke-direct {v1}, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;-><init>()V

    .line 2331
    .restart local v1    # "rModule":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->pjsipModules:Ljava/util/Map;

    const-class v3, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->pjsipModules:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2336
    return-void

    .line 2333
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;

    .line 2334
    .local v0, "mod":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-interface {v0, v3}, Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;
    .locals 4
    .param p0, "pjStr"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 2271
    if-eqz p0, :cond_1

    .line 2273
    :try_start_0
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getSlen()I

    move-result v1

    .line 2274
    .local v1, "len":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2276
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 2277
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2280
    :cond_0
    if-lez v1, :cond_1

    .line 2281
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2288
    .end local v1    # "len":I
    :goto_0
    return-object v2

    .line 2285
    :catch_0
    move-exception v0

    .line 2286
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "PjService"

    const-string v3, "Impossible to retrieve string from pjsip "

    invoke-static {v2, v3, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2288
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static resetCodecs()V
    .locals 2

    .prologue
    .line 1005
    sget-object v1, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1006
    :try_start_0
    sget-boolean v0, Lcom/weirdvoice/pjsip/PjSipService;->codecs_initialized:Z

    if-eqz v0, :cond_0

    .line 1007
    sget-object v0, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1008
    sget-object v0, Lcom/weirdvoice/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1009
    const/4 v0, 0x0

    sput-boolean v0, Lcom/weirdvoice/pjsip/PjSipService;->codecs_initialized:Z

    .line 1005
    :cond_0
    monitor-exit v1

    .line 1012
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sanitizeSipUri(Ljava/lang/String;J)Lcom/weirdvoice/service/SipService$ToCall;
    .locals 22
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1830
    const/16 v17, -0x1

    .line 1834
    .local v17, "pjsipAccountId":I
    new-instance v8, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v8}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    .line 1835
    .local v8, "account":Lcom/weirdvoice/api/SipProfile;
    move-wide/from16 v0, p2

    iput-wide v0, v8, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 1836
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/weirdvoice/pjsip/PjSipService;->getProfileState(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfileState;

    move-result-object v18

    .line 1837
    .local v18, "profileState":Lcom/weirdvoice/api/SipProfileState;
    move-wide/from16 v14, p2

    .line 1840
    .local v14, "finalAccountId":J
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1841
    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->acc_get_default()I

    move-result v11

    .line 1843
    .local v11, "defaultPjsipAccount":I
    const/16 v21, 0x0

    .line 1844
    .local v21, "valid":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountForPjsipId(I)Lcom/weirdvoice/api/SipProfile;

    move-result-object v8

    .line 1845
    if-eqz v8, :cond_1

    .line 1846
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/weirdvoice/pjsip/PjSipService;->getProfileState(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfileState;

    move-result-object v18

    .line 1847
    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/api/SipProfileState;->isAddedToStack()Z

    move-result v21

    .line 1850
    :cond_1
    if-nez v21, :cond_6

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v2}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 1852
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1851
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1853
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 1855
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1856
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1858
    :cond_2
    new-instance v19, Lcom/weirdvoice/api/SipProfileState;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/weirdvoice/api/SipProfileState;-><init>(Landroid/database/Cursor;)V

    .line 1859
    .local v19, "ps":Lcom/weirdvoice/api/SipProfileState;
    invoke-virtual/range {v19 .. v19}, Lcom/weirdvoice/api/SipProfileState;->isValidForCall()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1860
    invoke-virtual/range {v19 .. v19}, Lcom/weirdvoice/api/SipProfileState;->getAccountId()I

    move-result v2

    int-to-long v14, v2

    .line 1861
    invoke-virtual/range {v19 .. v19}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 1869
    .end local v19    # "ps":Lcom/weirdvoice/api/SipProfileState;
    :cond_3
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1882
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "defaultPjsipAccount":I
    .end local v21    # "valid":Z
    :cond_4
    :goto_1
    move/from16 v0, v17

    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 1883
    const-string v2, "PjService"

    const-string v3, "Unable to find a valid account for this call"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const/4 v2, 0x0

    .line 1915
    :goto_2
    return-object v2

    .line 1864
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v11    # "defaultPjsipAccount":I
    .restart local v19    # "ps":Lcom/weirdvoice/api/SipProfileState;
    .restart local v21    # "valid":Z
    :cond_5
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 1866
    .end local v19    # "ps":Lcom/weirdvoice/api/SipProfileState;
    :catch_0
    move-exception v13

    .line 1867
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "PjService"

    const-string v3, "Error on looping over sip profiles state"

    invoke-static {v2, v3, v13}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1869
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1868
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1869
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1870
    throw v2

    .line 1874
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/api/SipProfileState;->getAccountId()I

    move-result v2

    int-to-long v14, v2

    .line 1875
    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v17

    .line 1877
    goto :goto_1

    .line 1879
    .end local v11    # "defaultPjsipAccount":I
    .end local v21    # "valid":Z
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v17

    goto :goto_1

    .line 1889
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    long-to-int v3, v14

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/weirdvoice/service/SipService;->getAccount(J)Lcom/weirdvoice/api/SipProfile;

    move-result-object v8

    .line 1890
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/weirdvoice/api/SipProfile;->formatCalleeNumber(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v16

    .line 1891
    .local v16, "finalCallee":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    const/4 v12, 0x0

    .line 1892
    .local v12, "digitsToAdd":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1893
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1894
    :cond_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1895
    .local v10, "commaIndex":I
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 1896
    .local v20, "semiColumnIndex":I
    if-lez v20, :cond_a

    move/from16 v0, v20

    if-ge v0, v10, :cond_a

    .line 1897
    move/from16 v10, v20

    .line 1899
    :cond_a
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1900
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 1903
    .end local v10    # "commaIndex":I
    .end local v20    # "semiColumnIndex":I
    :cond_b
    const-string v2, "PjService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "will call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->verify_sip_url(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 1908
    move/from16 v0, v17

    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 1910
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1909
    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v2

    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->acc_find_for_outgoing(Lorg/pjsip/pjsua/pj_str_t;)I

    move-result v17

    .line 1912
    :cond_c
    new-instance v2, Lcom/weirdvoice/service/SipService$ToCall;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v12}, Lcom/weirdvoice/service/SipService$ToCall;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1915
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method private sendDtmf(ILjava/lang/String;)I
    .locals 12
    .param p1, "callId"    # I
    .param p2, "keyPressed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1345
    sget v7, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    .line 1439
    :cond_0
    :goto_0
    return v7

    .line 1348
    :cond_1
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->call_is_active(I)I

    move-result v9

    sget v10, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-eq v9, v10, :cond_2

    .line 1349
    const/4 v7, -0x1

    goto :goto_0

    .line 1351
    :cond_2
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->call_has_media(I)I

    move-result v9

    sget v10, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-eq v9, v10, :cond_3

    .line 1352
    const/4 v7, -0x1

    goto :goto_0

    .line 1355
    :cond_3
    move-object v1, p2

    .line 1356
    .local v1, "dtmfToDial":Ljava/lang/String;
    const-string v6, ""

    .line 1357
    .local v6, "remainingDtmf":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1358
    .local v4, "pauseBeforeRemaining":I
    const/4 v2, 0x0

    .line 1359
    .local v2, "foundSeparator":Z
    const-string v9, ","

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, ";"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1360
    :cond_4
    const-string v1, ""

    .line 1361
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_8

    .line 1383
    .end local v3    # "i":I
    :cond_5
    const/4 v7, 0x0

    .line 1384
    .local v7, "res":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1385
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v5

    .line 1386
    .local v5, "pjKeyPressed":Lorg/pjsip/pjsua/pj_str_t;
    const/4 v7, -0x1

    .line 1387
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useSipInfoDtmf()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1388
    invoke-static {p1, v5}, Lorg/pjsip/pjsua/pjsua;->send_dtmf_info(ILorg/pjsip/pjsua/pj_str_t;)I

    move-result v7

    .line 1389
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Has been sent DTMF INFO : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    .end local v5    # "pjKeyPressed":Lorg/pjsip/pjsua/pj_str_t;
    :cond_6
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1410
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1412
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    if-nez v9, :cond_7

    .line 1413
    new-instance v9, Ljava/util/Timer;

    const-string v10, "com.weirdvoice.PjSipServiceTasks"

    invoke-direct {v9, v10}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    .line 1415
    :cond_7
    new-instance v8, Lcom/weirdvoice/pjsip/PjSipService$1;

    invoke-direct {v8, p0, p1}, Lcom/weirdvoice/pjsip/PjSipService$1;-><init>(Lcom/weirdvoice/pjsip/PjSipService;I)V

    .line 1427
    .local v8, "tt":Ljava/util/TimerTask;
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1428
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Schedule DTMF "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    int-to-long v10, v4

    invoke-virtual {v9, v8, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 1362
    .end local v7    # "res":I
    .end local v8    # "tt":Ljava/util/TimerTask;
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1363
    .local v0, "c":C
    if-nez v2, :cond_c

    .line 1364
    const/16 v9, 0x2c

    if-eq v0, v9, :cond_9

    const/16 v9, 0x3b

    if-ne v0, v9, :cond_b

    .line 1365
    :cond_9
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_a

    sget v9, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_PAUSE_LENGTH:I

    .line 1366
    :goto_3
    add-int/2addr v4, v9

    .line 1367
    const/4 v2, 0x1

    .line 1361
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1366
    :cond_a
    sget v9, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_WAIT_LENGTH:I

    goto :goto_3

    .line 1369
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1371
    goto :goto_4

    .line 1372
    :cond_c
    const/16 v9, 0x2c

    if-eq v0, v9, :cond_d

    const/16 v9, 0x3b

    if-ne v0, v9, :cond_f

    :cond_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1373
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_e

    sget v9, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_PAUSE_LENGTH:I

    .line 1374
    :goto_5
    add-int/2addr v4, v9

    .line 1375
    goto :goto_4

    .line 1374
    :cond_e
    sget v9, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_WAIT_LENGTH:I

    goto :goto_5

    .line 1376
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1391
    .end local v0    # "c":C
    .end local v3    # "i":I
    .restart local v5    # "pjKeyPressed":Lorg/pjsip/pjsua/pj_str_t;
    .restart local v7    # "res":I
    :cond_10
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->forceDtmfInBand()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1393
    invoke-static {p1, v5}, Lorg/pjsip/pjsua/pjsua;->call_dial_dtmf(ILorg/pjsip/pjsua/pj_str_t;)I

    move-result v7

    .line 1394
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Has been sent in RTP DTMF : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :cond_11
    sget v9, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    if-eq v7, v9, :cond_6

    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->forceDtmfRTP()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1399
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_12

    .line 1400
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    new-instance v10, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;

    invoke-direct {v10, p1}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;-><init>(I)V

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1402
    :cond_12
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;

    invoke-virtual {v9, v1}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->sendPjMediaDialTone(Ljava/lang/String;)I

    move-result v7

    .line 1403
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Has been sent DTMF analogic : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1431
    .end local v5    # "pjKeyPressed":Lorg/pjsip/pjsua/pj_str_t;
    :cond_13
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 1432
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1434
    :cond_14
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1435
    iget-object v9, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private setCodecsPriorities()V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 1078
    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 1077
    check-cast v20, Landroid/net/ConnectivityManager;

    .line 1080
    .local v20, "cm":Landroid/net/ConnectivityManager;
    sget-object v34, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v34

    .line 1081
    :try_start_0
    sget-boolean v4, Lcom/weirdvoice/pjsip/PjSipService;->codecs_initialized:Z

    if-eqz v4, :cond_2

    .line 1082
    invoke-virtual/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v30

    .line 1083
    .local v30, "ni":Landroid/net/NetworkInfo;
    if-eqz v30, :cond_2

    .line 1085
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    .local v19, "audioSb":Ljava/lang/StringBuilder;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    .local v32, "videoSb":Ljava/lang/StringBuilder;
    const-string v4, "Audio codecs : "

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v4, "Video codecs : "

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 1091
    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-static {v5, v6}, Lcom/weirdvoice/api/SipConfigManager;->getBandTypeKey(II)Ljava/lang/String;

    move-result-object v5

    .line 1092
    const-string v6, "wb"

    .line 1090
    invoke-virtual {v4, v5, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1094
    .local v25, "currentBandType":Ljava/lang/String;
    sget-object v35, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1096
    :try_start_1
    sget-object v4, Lcom/weirdvoice/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1115
    sget-object v4, Lcom/weirdvoice/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_1
    :goto_1
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1094
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    :try_start_2
    const-string v4, "PjService"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v4, "PjService"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .end local v19    # "audioSb":Ljava/lang/StringBuilder;
    .end local v25    # "currentBandType":Ljava/lang/String;
    .end local v30    # "ni":Landroid/net/NetworkInfo;
    .end local v32    # "videoSb":Ljava/lang/StringBuilder;
    :cond_2
    monitor-exit v34
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1164
    return-void

    .line 1096
    .restart local v19    # "audioSb":Ljava/lang/StringBuilder;
    .restart local v25    # "currentBandType":Ljava/lang/String;
    .restart local v30    # "ni":Landroid/net/NetworkInfo;
    .restart local v32    # "videoSb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1097
    .local v21, "codec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 1098
    const-string v6, "-1"

    .line 1097
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v18

    .line 1099
    .local v18, "aPrio":S
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/pjsip/PjSipService;->buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V

    .line 1100
    invoke-static/range {v21 .. v21}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v23

    .line 1101
    .local v23, "codecStr":Lorg/pjsip/pjsua/pj_str_t;
    if-ltz v18, :cond_4

    .line 1102
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsua;->codec_set_priority(Lorg/pjsip/pjsua/pj_str_t;S)I

    .line 1106
    :cond_4
    const-string v5, "fpp"

    .line 1105
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/weirdvoice/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1108
    .local v22, "codecKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 1107
    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    .line 1109
    .local v26, "frmPerPacket":Ljava/lang/Integer;
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 1110
    const-string v5, "PjService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Set codec "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fpp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lorg/pjsip/pjsua/pjsua;->codec_set_frames_per_packet(Lorg/pjsip/pjsua/pj_str_t;I)I

    goto/16 :goto_0

    .line 1094
    .end local v18    # "aPrio":S
    .end local v21    # "codec":Ljava/lang/String;
    .end local v22    # "codecKey":Ljava/lang/String;
    .end local v23    # "codecStr":Lorg/pjsip/pjsua/pj_str_t;
    .end local v26    # "frmPerPacket":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v35
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 1080
    .end local v19    # "audioSb":Ljava/lang/StringBuilder;
    .end local v25    # "currentBandType":Ljava/lang/String;
    .end local v30    # "ni":Landroid/net/NetworkInfo;
    .end local v32    # "videoSb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v4

    monitor-exit v34
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 1115
    .restart local v19    # "audioSb":Ljava/lang/StringBuilder;
    .restart local v25    # "currentBandType":Ljava/lang/String;
    .restart local v30    # "ni":Landroid/net/NetworkInfo;
    .restart local v32    # "videoSb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_5
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1116
    .restart local v21    # "codec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 1117
    const-string v5, "-1"

    .line 1116
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1, v5}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v18

    .line 1118
    .restart local v18    # "aPrio":S
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/pjsip/PjSipService;->buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V

    .line 1119
    if-ltz v18, :cond_6

    .line 1120
    invoke-static/range {v21 .. v21}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v4

    move/from16 v0, v18

    invoke-static {v4, v0}, Lorg/pjsip/pjsua/pjsua;->vid_codec_set_priority(Lorg/pjsip/pjsua/pj_str_t;S)I

    .line 1122
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 1123
    const-string v5, "video_capture_size"

    const-string v6, ""

    .line 1122
    invoke-static {v4, v5, v6}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1124
    .local v33, "videoSize":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "0x0@0"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1125
    :cond_7
    invoke-static {}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->getInstance()Lcom/weirdvoice/utils/video/VideoUtilsWrapper;

    move-result-object v4

    .line 1126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v4, v5}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->getVideoCaptureDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v24

    .line 1127
    .local v24, "cps":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1128
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;

    iget-object v4, v4, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    .line 1129
    invoke-virtual {v4}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->toPreferenceValue()Ljava/lang/String;

    move-result-object v33

    .line 1132
    .end local v24    # "cps":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    :cond_8
    new-instance v31, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v31, "videoCap":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    const-string v4, "H264"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v5, "codec_h264_profile"

    const/16 v6, 0x42

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1135
    invoke-static {v4, v5, v6}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 1137
    .local v29, "h264profile":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 1138
    const-string v5, "codec_h264_level"

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1137
    invoke-static {v4, v5, v6}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 1140
    .local v28, "h264level":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v5, "codec_h264_bitrate"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1139
    invoke-static {v4, v5, v6}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 1142
    .local v27, "h264bitrate":I
    if-lez v29, :cond_1

    .line 1143
    move/from16 v0, v29

    int-to-long v4, v0

    move/from16 v0, v28

    int-to-long v6, v0

    .line 1144
    move-object/from16 v0, v31

    iget v8, v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->width:I

    int-to-long v8, v8

    .line 1145
    move-object/from16 v0, v31

    iget v10, v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->height:I

    int-to-long v10, v10

    .line 1146
    move-object/from16 v0, v31

    iget v12, v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->fps:I

    int-to-long v12, v12

    .line 1147
    move/from16 v0, v27

    int-to-long v14, v0

    const-wide/16 v16, 0x0

    .line 1143
    invoke-static/range {v4 .. v17}, Lorg/pjsip/pjsua/pjsua;->codec_h264_set_profile(JJJJJJJ)I

    .line 1151
    const-string v4, "PjService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Set h264 profile : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1152
    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1151
    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public addAccount(Lcom/weirdvoice/api/SipProfile;)Z
    .locals 13
    .param p1, "profile"    # Lcom/weirdvoice/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 823
    sget v5, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    .line 824
    .local v5, "status":I
    iget-boolean v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v6, :cond_1

    .line 825
    const-string v6, "PjService"

    const-string v9, "PJSIP is not started here, nothing can be done"

    invoke-static {v6, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v6, :cond_0

    move v6, v7

    .line 913
    :goto_0
    return v6

    :cond_0
    move v6, v8

    .line 826
    goto :goto_0

    .line 829
    :cond_1
    new-instance v1, Lcom/weirdvoice/pjsip/PjSipAccount;

    invoke-direct {v1, p1}, Lcom/weirdvoice/pjsip/PjSipAccount;-><init>(Lcom/weirdvoice/api/SipProfile;)V

    .line 830
    .local v1, "account":Lcom/weirdvoice/pjsip/PjSipAccount;
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1, v6}, Lcom/weirdvoice/pjsip/PjSipAccount;->applyExtraParams(Landroid/content/Context;)V

    .line 844
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getProfileState(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfileState;

    move-result-object v2

    .line 845
    .local v2, "currentAccountStatus":Lcom/weirdvoice/api/SipProfileState;
    iget-object v6, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    invoke-virtual {v6, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setRegister_on_acc_add(I)V

    .line 847
    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfileState;->isAddedToStack()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 848
    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v6

    iget-object v9, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v6, v9}, Lorg/pjsip/pjsua/pjsua;->csipsimple_set_acc_user_data(ILorg/pjsip/pjsua/csipsimple_acc_config;)I

    .line 849
    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v6

    iget-object v9, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-static {v6, v9}, Lorg/pjsip/pjsua/pjsua;->acc_modify(ILorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v5

    .line 850
    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v6

    invoke-virtual {p0, v6, p1}, Lcom/weirdvoice/pjsip/PjSipService;->beforeAccountRegistration(ILcom/weirdvoice/api/SipProfile;)V

    .line 851
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 852
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v6, "added_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v6}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 854
    sget-object v9, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v10, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 853
    invoke-virtual {v6, v9, v3, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 857
    iget-object v6, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->wizard:Ljava/lang/String;

    const-string v9, "LOCAL"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 859
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v6, :cond_2

    .line 860
    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v6

    invoke-static {v6, v7}, Lorg/pjsip/pjsua/pjsua;->acc_set_registration(II)I

    move-result v5

    .line 861
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v6, :cond_2

    .line 862
    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v6

    invoke-static {v6, v7}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    .line 913
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v6, :cond_8

    move v6, v7

    goto :goto_0

    .line 867
    :cond_3
    new-array v0, v7, [I

    .line 868
    .local v0, "accId":[I
    iget-object v6, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->wizard:Ljava/lang/String;

    const-string v9, "LOCAL"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 872
    iget-object v6, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 884
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->localUdpAccPjId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v8

    .line 888
    :goto_2
    aget v6, v0, v8

    iget-object v9, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v6, v9}, Lorg/pjsip/pjsua/pjsua;->csipsimple_set_acc_user_data(ILorg/pjsip/pjsua/csipsimple_acc_config;)I

    .line 901
    :goto_3
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v6, :cond_2

    .line 902
    new-instance v4, Lcom/weirdvoice/api/SipProfileState;

    invoke-direct {v4, p1}, Lcom/weirdvoice/api/SipProfileState;-><init>(Lcom/weirdvoice/api/SipProfile;)V

    .line 903
    .local v4, "ps":Lcom/weirdvoice/api/SipProfileState;
    invoke-virtual {v4, v5}, Lcom/weirdvoice/api/SipProfileState;->setAddedStatus(I)V

    .line 904
    aget v6, v0, v8

    invoke-virtual {v4, v6}, Lcom/weirdvoice/api/SipProfileState;->setPjsuaId(I)V

    .line 905
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v6}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 906
    sget-object v9, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    .line 907
    iget-object v10, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 906
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 907
    invoke-virtual {v4}, Lcom/weirdvoice/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v10

    .line 905
    invoke-virtual {v6, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 909
    aget v6, v0, v8

    invoke-static {v6, v7}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    goto :goto_1

    .line 874
    .end local v4    # "ps":Lcom/weirdvoice/api/SipProfileState;
    :pswitch_0
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->localUdp6AccPjId:Ljava/lang/Integer;

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v8

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->localUdpAccPjId:Ljava/lang/Integer;

    goto :goto_4

    .line 877
    :pswitch_1
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->localTcp6AccPjId:Ljava/lang/Integer;

    :goto_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v8

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->localTcpAccPjId:Ljava/lang/Integer;

    goto :goto_5

    .line 880
    :pswitch_2
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->localTls6AccPjId:Ljava/lang/Integer;

    :goto_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v8

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->localTlsAccPjId:Ljava/lang/Integer;

    goto :goto_6

    .line 895
    :cond_7
    iget-object v6, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    invoke-static {v6, v9, v0}, Lorg/pjsip/pjsua/pjsua;->acc_add(Lorg/pjsip/pjsua/pjsua_acc_config;I[I)I

    move-result v5

    .line 896
    aget v6, v0, v8

    iget-object v9, v1, Lcom/weirdvoice/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v6, v9}, Lorg/pjsip/pjsua/pjsua;->csipsimple_set_acc_user_data(ILorg/pjsip/pjsua/csipsimple_acc_config;)I

    .line 897
    aget v6, v0, v8

    invoke-virtual {p0, v6, p1}, Lcom/weirdvoice/pjsip/PjSipService;->beforeAccountRegistration(ILcom/weirdvoice/api/SipProfile;)V

    .line 898
    aget v6, v0, v8

    invoke-static {v6, v7}, Lorg/pjsip/pjsua/pjsua;->acc_set_registration(II)I

    goto/16 :goto_3

    .end local v0    # "accId":[I
    :cond_8
    move v6, v8

    .line 913
    goto/16 :goto_0

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addBuddy(Ljava/lang/String;)I
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1477
    iget-boolean v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v2, :cond_0

    .line 1478
    const/4 v2, -0x1

    .line 1489
    :goto_0
    return v2

    .line 1480
    :cond_0
    new-array v1, v3, [I

    .line 1482
    .local v1, "p_buddy_id":[I
    new-instance v0, Lorg/pjsip/pjsua/pjsua_buddy_config;

    invoke-direct {v0}, Lorg/pjsip/pjsua/pjsua_buddy_config;-><init>()V

    .line 1483
    .local v0, "buddy_cfg":Lorg/pjsip/pjsua/pjsua_buddy_config;
    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->buddy_config_default(Lorg/pjsip/pjsua/pjsua_buddy_config;)V

    .line 1484
    invoke-virtual {v0, v3}, Lorg/pjsip/pjsua/pjsua_buddy_config;->setSubscribe(I)V

    .line 1485
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/pjsip/pjsua/pjsua_buddy_config;->setUri(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 1487
    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsua;->buddy_add(Lorg/pjsip/pjsua/pjsua_buddy_config;[I)I

    .line 1489
    const/4 v2, 0x0

    aget v2, v1, v2

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/weirdvoice/service/MediaManager;->adjustStreamVolume(III)V

    .line 1638
    :cond_0
    return-void
.end method

.method beforeAccountRegistration(ILcom/weirdvoice/api/SipProfile;)V
    .locals 3
    .param p1, "pjId"    # I
    .param p2, "profile"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 917
    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->pjsipModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    return-void

    .line 917
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;

    .line 918
    .local v0, "mod":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    invoke-interface {v0, p1, p2}, Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;->onBeforeAccountStartRegistration(ILcom/weirdvoice/api/SipProfile;)V

    goto :goto_0
.end method

.method public callAnswer(II)I
    .locals 6
    .param p1, "callId"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1177
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_1

    .line 1179
    new-instance v1, Lorg/pjsip/pjsua/pjsua_call_setting;

    invoke-direct {v1}, Lorg/pjsip/pjsua/pjsua_call_setting;-><init>()V

    .line 1180
    .local v1, "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->call_setting_default(Lorg/pjsip/pjsua/pjsua_call_setting;)V

    .line 1181
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/pjsip/pjsua/pjsua_call_setting;->setAud_cnt(J)V

    .line 1182
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v2, "use_video"

    invoke-virtual {v0, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1183
    :goto_0
    int-to-long v2, v0

    .line 1182
    invoke-virtual {v1, v2, v3}, Lorg/pjsip/pjsua/pjsua_call_setting;->setVid_cnt(J)V

    .line 1184
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/pjsip/pjsua/pjsua_call_setting;->setFlag(J)V

    .line 1185
    int-to-long v2, p2

    move v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->call_answer2(ILorg/pjsip/pjsua/pjsua_call_setting;JLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1188
    .end local v1    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    :goto_1
    return v0

    .line 1183
    .restart local v1    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1188
    .end local v1    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public callHangup(II)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1199
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1200
    int-to-long v0, p2

    invoke-static {p1, v0, v1, v2, v2}, Lorg/pjsip/pjsua/pjsua;->call_hangup(IJLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1202
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public callHold(I)I
    .locals 1
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1546
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/pjsip/pjsua/pjsua;->call_set_hold(ILorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1548
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public callReinvite(IZ)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "unhold"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_1

    .line 1554
    if-eqz p2, :cond_0

    sget-object v0, Lorg/pjsip/pjsua/pjsua_call_flag;->PJSUA_CALL_UNHOLD:Lorg/pjsip/pjsua/pjsua_call_flag;

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_call_flag;->swigValue()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    const/4 v2, 0x0

    .line 1553
    invoke-static {p1, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua;->call_reinvite(IJLorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1557
    :goto_1
    return v0

    .line 1554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1557
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public callXfer(ILjava/lang/String;)I
    .locals 2
    .param p1, "callId"    # I
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1207
    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/pjsip/pjsua/pjsua;->call_xfer(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1209
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public callXferReplace(III)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "otherCallId"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1214
    int-to-long v0, p3

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua;->call_xfer_replaces(IIJLorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1216
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public canRecord(I)Z
    .locals 5
    .param p1, "callId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2161
    iget-boolean v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v4, :cond_1

    .line 2176
    :cond_0
    :goto_0
    return v2

    .line 2165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 2166
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 2170
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v1

    .line 2171
    .local v1, "ms":I
    if-eq v1, v3, :cond_2

    .line 2172
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    :cond_2
    move v2, v3

    .line 2176
    goto :goto_0
.end method

.method public confAdjustRxLevel(IF)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1621
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1622
    invoke-static {p1, p2}, Lorg/pjsip/pjsua/pjsua;->conf_adjust_rx_level(IF)I

    .line 1624
    :cond_0
    return-void
.end method

.method public confAdjustTxLevel(IF)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1615
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1616
    invoke-static {p1, p2}, Lorg/pjsip/pjsua/pjsua;->conf_adjust_tx_level(IF)I

    .line 1618
    :cond_0
    return-void
.end method

.method public getAccountForPjsipId(I)Lcom/weirdvoice/api/SipProfile;
    .locals 4
    .param p1, "pjId"    # I

    .prologue
    .line 1773
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-static {v2, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountIdForPjsipId(Landroid/content/Context;I)J

    move-result-wide v0

    .line 1774
    .local v0, "accId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1775
    const/4 v2, 0x0

    .line 1777
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v2, v0, v1}, Lcom/weirdvoice/service/SipService;->getAccount(J)Lcom/weirdvoice/api/SipProfile;

    move-result-object v2

    goto :goto_0
.end method

.method public getActiveCallInProgress()Lcom/weirdvoice/api/SipCallSession;
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getActiveCallInProgress()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 1805
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 1561
    iget-boolean v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 1565
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCalls()[Lcom/weirdvoice/api/SipCallSession;
    .locals 2

    .prologue
    .line 1607
    iget-boolean v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v1, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    invoke-virtual {v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCalls()[Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 1611
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/weirdvoice/api/SipCallSession;

    goto :goto_0
.end method

.method public getDetectedNatType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mNatDetected:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileState(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfileState;
    .locals 9
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    const/4 v2, 0x0

    .line 972
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-object v2

    .line 975
    :cond_1
    iget-wide v0, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 978
    new-instance v6, Lcom/weirdvoice/api/SipProfileState;

    invoke-direct {v6, p1}, Lcom/weirdvoice/api/SipProfileState;-><init>(Lcom/weirdvoice/api/SipProfile;)V

    .line 979
    .local v6, "accountInfo":Lcom/weirdvoice/api/SipProfileState;
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 980
    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 979
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 982
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 984
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 985
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 986
    invoke-virtual {v6, v7}, Lcom/weirdvoice/api/SipProfileState;->createFromDb(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v2, v6

    .line 994
    goto :goto_0

    .line 988
    :catch_0
    move-exception v8

    .line 989
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PjService"

    const-string v1, "Error on looping over sip profiles states"

    invoke-static {v0, v1, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 991
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 990
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 991
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 992
    throw v0
.end method

.method public getPublicCallInfo(I)Lcom/weirdvoice/api/SipCallSession;
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 1569
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 1570
    .local v0, "internalCallSession":Lcom/weirdvoice/api/SipCallSession;
    if-nez v0, :cond_0

    .line 1571
    const/4 v1, 0x0

    .line 1573
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/weirdvoice/api/SipCallSession;

    invoke-direct {v1, v0}, Lcom/weirdvoice/api/SipCallSession;-><init>(Lcom/weirdvoice/api/SipCallSession;)V

    goto :goto_0
.end method

.method public getRxTxLevel(I)J
    .locals 6
    .param p1, "port"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2297
    new-array v0, v2, [J

    .line 2298
    .local v0, "rx_level":[J
    new-array v1, v2, [J

    .line 2299
    .local v1, "tx_level":[J
    invoke-static {p1, v1, v0}, Lorg/pjsip/pjsua/pjsua;->conf_get_signal_level(I[J[J)I

    .line 2300
    aget-wide v2, v0, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    aget-wide v4, v1, v5

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    return v0
.end method

.method public isRecording(I)Z
    .locals 4
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2186
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->callRecorders:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2187
    .local v0, "recorders":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;>;"
    if-nez v0, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public makeCall(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 26
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # I
    .param p3, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1227
    const/16 v17, -0x1

    .line 1287
    :goto_0
    return v17

    .line 1230
    :cond_0
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/pjsip/PjSipService;->sanitizeSipUri(Ljava/lang/String;J)Lcom/weirdvoice/service/SipService$ToCall;

    move-result-object v18

    .line 1231
    .local v18, "toCall":Lcom/weirdvoice/service/SipService$ToCall;
    if-eqz v18, :cond_6

    .line 1232
    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/service/SipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    .line 1235
    .local v7, "uri":Lorg/pjsip/pjsua/pj_str_t;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v9, v0, [B

    .line 1236
    .local v9, "userData":[B
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 1237
    .local v11, "callId":[I
    new-instance v8, Lorg/pjsip/pjsua/pjsua_call_setting;

    invoke-direct {v8}, Lorg/pjsip/pjsua/pjsua_call_setting;-><init>()V

    .line 1238
    .local v8, "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    new-instance v10, Lorg/pjsip/pjsua/pjsua_msg_data;

    invoke-direct {v10}, Lorg/pjsip/pjsua/pjsua_msg_data;-><init>()V

    .line 1239
    .local v10, "msgData":Lorg/pjsip/pjsua/pjsua_msg_data;
    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/service/SipService$ToCall;->getPjsipAccountId()Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1242
    .local v6, "pjsuaAccId":I
    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->call_setting_default(Lorg/pjsip/pjsua/pjsua_call_setting;)V

    .line 1243
    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_call_setting;->setAud_cnt(J)V

    .line 1244
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_call_setting;->setVid_cnt(J)V

    .line 1245
    if-eqz p3, :cond_1

    const-string v20, "opt_call_video"

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1246
    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_call_setting;->setVid_cnt(J)V

    .line 1248
    :cond_1
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_call_setting;->setFlag(J)V

    .line 1250
    const-string v20, "call_tmp"

    const-wide/16 v22, 0x200

    const-wide/16 v24, 0x200

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v4}, Lorg/pjsip/pjsua/pjsua;->pool_create(Ljava/lang/String;JJ)Lorg/pjsip/pjsua/pj_pool_t;

    move-result-object v15

    .line 1253
    .local v15, "pool":Lorg/pjsip/pjsua/pj_pool_t;
    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->msg_data_init(Lorg/pjsip/pjsua/pjsua_msg_data;)V

    .line 1254
    invoke-static {v15, v6, v10}, Lorg/pjsip/pjsua/pjsua;->csipsimple_init_acc_msg_data(Lorg/pjsip/pjsua/pj_pool_t;ILorg/pjsip/pjsua/pjsua_msg_data;)I

    .line 1255
    if-eqz p3, :cond_3

    .line 1256
    const-string v20, "opt_call_extra_headers"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 1257
    .local v13, "extraHeaders":Landroid/os/Bundle;
    if-eqz v13, :cond_3

    .line 1258
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_5

    .line 1276
    .end local v13    # "extraHeaders":Landroid/os/Bundle;
    :cond_3
    invoke-static/range {v6 .. v11}, Lorg/pjsip/pjsua/pjsua;->call_make_call(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_call_setting;[BLorg/pjsip/pjsua/pjsua_msg_data;[I)I

    move-result v17

    .line 1277
    .local v17, "status":I
    sget v20, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v11, v21

    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/service/SipService$ToCall;->getDtmf()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1279
    const-string v20, "PjService"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "DTMF - Store for "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    aget v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/weirdvoice/service/SipService$ToCall;->getDtmf()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :cond_4
    invoke-static {v15}, Lorg/pjsip/pjsua/pjsua;->pj_pool_release(Lorg/pjsip/pjsua/pj_pool_t;)V

    goto/16 :goto_0

    .line 1258
    .end local v17    # "status":I
    .restart local v13    # "extraHeaders":Landroid/os/Bundle;
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1260
    .local v14, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1261
    .local v19, "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1263
    invoke-static {v14}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v21

    invoke-static/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v22

    .line 1262
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v10, v0, v1}, Lorg/pjsip/pjsua/pjsua;->csipsimple_msg_data_add_string_hdr(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjsua_msg_data;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)I

    move-result v16

    .line 1264
    .local v16, "res":I
    sget v21, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1265
    const-string v21, "PjService"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Failed to add Xtra hdr ("

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1266
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") probably not X- header"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1265
    invoke-static/range {v21 .. v22}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1269
    .end local v16    # "res":I
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1270
    .local v12, "e":Ljava/lang/Exception;
    const-string v21, "PjService"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid header value for key : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1284
    .end local v6    # "pjsuaAccId":I
    .end local v7    # "uri":Lorg/pjsip/pjsua/pj_str_t;
    .end local v8    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    .end local v9    # "userData":[B
    .end local v10    # "msgData":Lorg/pjsip/pjsua/pjsua_msg_data;
    .end local v11    # "callId":[I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "extraHeaders":Landroid/os/Bundle;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "pool":Lorg/pjsip/pjsua/pj_pool_t;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v22, v0

    const v23, 0x7f0c01ed

    invoke-virtual/range {v22 .. v23}, Lcom/weirdvoice/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1285
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1284
    invoke-virtual/range {v20 .. v21}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 1287
    const/16 v17, -0x1

    goto/16 :goto_0
.end method

.method public onGSMStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1920
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v2, :cond_0

    .line 1921
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v2}, Lcom/weirdvoice/service/MediaManager;->stopRingAndUnfocus()V

    .line 1925
    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v2, :cond_3

    .line 1926
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    invoke-virtual {v2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getActiveCallOngoing()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v1

    .line 1928
    .local v1, "currentActiveCall":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v1, :cond_1

    .line 1929
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1930
    .local v0, "am":Landroid/media/AudioManager;
    if-ne p1, v6, :cond_2

    .line 1932
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 1933
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/pjsip/PjSipService;->callHold(I)I

    .line 1934
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->set_no_snd_dev()Lorg/pjsip/pjsua/pjmedia_port;

    .line 1936
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 1965
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "currentActiveCall":Lcom/weirdvoice/api/SipCallSession;
    :cond_1
    :goto_0
    return-void

    .line 1940
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "currentActiveCall":Lcom/weirdvoice/api/SipCallSession;
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    .line 1941
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1943
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v2, :cond_1

    .line 1944
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v2, v5}, Lcom/weirdvoice/service/MediaManager;->playInCallTone(I)V

    goto :goto_0

    .line 1951
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "currentActiveCall":Lcom/weirdvoice/api/SipCallSession;
    :cond_3
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/weirdvoice/pjsip/PjSipService;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1952
    invoke-static {v4, v4}, Lorg/pjsip/pjsua/pjsua;->set_snd_dev(II)I

    .line 1953
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/pjsip/PjSipService;->callReinvite(IZ)I

    .line 1954
    iput-object v7, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 1959
    :cond_4
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1960
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1961
    .restart local v0    # "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1962
    iput-object v7, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public playWaveFile(Ljava/lang/String;II)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callId"    # I
    .param p3, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2213
    iget-boolean v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v3, :cond_1

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2217
    :cond_1
    invoke-virtual {p0, p2}, Lcom/weirdvoice/pjsip/PjSipService;->stopPlaying(I)V

    .line 2218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2222
    if-nez p3, :cond_2

    .line 2223
    const/4 p3, 0x3

    .line 2228
    :cond_2
    :try_start_0
    new-instance v1, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;

    invoke-virtual {p0, p2}, Lcom/weirdvoice/pjsip/PjSipService;->getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v3

    invoke-direct {v1, v3, p1, p3}, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;-><init>(Lcom/weirdvoice/api/SipCallSession;Ljava/lang/String;I)V

    .line 2229
    .local v1, "player":Lcom/weirdvoice/pjsip/player/IPlayerHandler;
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->callPlayers:Landroid/util/SparseArray;

    .line 2230
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2229
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2231
    .local v2, "playersList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/pjsip/player/IPlayerHandler;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2232
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->callPlayers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2234
    invoke-interface {v1}, Lcom/weirdvoice/pjsip/player/IPlayerHandler;->startPlaying()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2235
    .end local v1    # "player":Lcom/weirdvoice/pjsip/player/IPlayerHandler;
    .end local v2    # "playersList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/pjsip/player/IPlayerHandler;>;"
    :catch_0
    move-exception v0

    .line 2237
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const v4, 0x7f0c0236

    invoke-virtual {v3, v4}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(I)V

    goto :goto_0

    .line 2238
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2239
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "PjService"

    const-string v4, "Impossible to play file"

    invoke-static {v3, v4, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refreshCallMediaState(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/pjsip/PjSipService$2;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/pjsip/PjSipService$2;-><init>(Lcom/weirdvoice/pjsip/PjSipService;I)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1817
    return-void
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 2
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1499
    iget-boolean v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v1, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->buddy_find(Lorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    .line 1503
    .local v0, "buddyId":I
    if-ltz v0, :cond_0

    .line 1504
    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->buddy_del(I)I

    goto :goto_0
.end method

.method public sendDtmf(II)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1321
    iget-boolean v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v2, :cond_0

    .line 1322
    const/4 v2, -0x1

    .line 1340
    :goto_0
    return v2

    .line 1324
    :cond_0
    const-string v0, ""

    .line 1328
    .local v0, "keyPressed":Ljava/lang/String;
    const/4 v2, 0x7

    if-lt p2, v2, :cond_1

    const/16 v2, 0x10

    if-gt p2, v2, :cond_1

    .line 1329
    add-int/lit8 v2, p2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1340
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/pjsip/PjSipService;->sendDtmf(ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 1330
    :cond_1
    const/16 v2, 0x12

    if-ne p2, v2, :cond_2

    .line 1331
    const-string v0, "#"

    .line 1332
    goto :goto_1

    :cond_2
    const/16 v2, 0x11

    if-ne p2, v2, :cond_3

    .line 1333
    const-string v0, "*"

    .line 1334
    goto :goto_1

    .line 1337
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 1338
    .local v1, "km":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1, p2}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;J)Lcom/weirdvoice/service/SipService$ToCall;
    .locals 9
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1447
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_1

    move-object v7, v2

    .line 1467
    :cond_0
    :goto_0
    return-object v7

    .line 1451
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/weirdvoice/pjsip/PjSipService;->sanitizeSipUri(Ljava/lang/String;J)Lcom/weirdvoice/service/SipService$ToCall;

    move-result-object v7

    .line 1452
    .local v7, "toCall":Lcom/weirdvoice/service/SipService$ToCall;
    if-eqz v7, :cond_0

    .line 1454
    invoke-virtual {v7}, Lcom/weirdvoice/service/SipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    .line 1455
    .local v1, "uri":Lorg/pjsip/pjsua/pj_str_t;
    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v3

    .line 1462
    .local v3, "text":Lorg/pjsip/pjsua/pj_str_t;
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 1464
    .local v5, "userData":[B
    invoke-virtual {v7}, Lcom/weirdvoice/service/SipService$ToCall;->getPjsipAccountId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->im_send(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;[B)I

    move-result v6

    .line 1465
    .local v6, "status":I
    sget v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v6, v0, :cond_0

    move-object v7, v2

    goto :goto_0
.end method

.method public sendPendingDtmf(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1510
    const-string v1, "PjService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "DTMF - Send pending dtmf "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1511
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1510
    invoke-static {v1, v0}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/pjsip/PjSipService;->sendDtmf(ILjava/lang/String;)I

    .line 1514
    :cond_0
    return-void
.end method

.method public setAccountRegistration(Lcom/weirdvoice/api/SipProfile;IZ)Z
    .locals 9
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;
    .param p2, "renew"    # I
    .param p3, "forceReAdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1659
    const/4 v1, -0x1

    .line 1660
    .local v1, "status":I
    iget-boolean v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    .line 1661
    :cond_0
    const-string v3, "PjService"

    const-string v4, "PJSIP is not started here, nothing can be done"

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    :cond_1
    :goto_0
    return v2

    .line 1664
    :cond_2
    iget-wide v4, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1665
    const-string v3, "PjService"

    const-string v4, "Trying to set registration on a deleted account"

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :cond_3
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getProfileState(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfileState;

    move-result-object v0

    .line 1674
    .local v0, "profileState":Lcom/weirdvoice/api/SipProfileState;
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getWizard()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LOCAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1675
    if-eqz p2, :cond_1

    .line 1683
    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->isAddedToStack()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1684
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getWizard()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LOCAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1686
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v4}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1687
    sget-object v5, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1686
    invoke-virtual {v4, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1689
    const-string v4, "PjService"

    const-string v5, "Account already added to stack, remove and re-load or delete"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    if-ne p2, v3, :cond_6

    .line 1691
    if-eqz p3, :cond_5

    .line 1692
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v4

    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->acc_del(I)I

    move-result v1

    .line 1693
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->addAccount(Lcom/weirdvoice/api/SipProfile;)Z

    .line 1713
    :goto_1
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 1695
    :cond_5
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v4

    .line 1696
    iget-object v5, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->getPresence()Lcom/weirdvoice/api/SipManager$PresenceStatus;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/weirdvoice/pjsip/PjSipService;->getOnlineForStatus(Lcom/weirdvoice/api/SipManager$PresenceStatus;)I

    move-result v5

    .line 1695
    invoke-static {v4, v5}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    .line 1697
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v4

    invoke-static {v4, p2}, Lorg/pjsip/pjsua/pjsua;->acc_set_registration(II)I

    move-result v1

    .line 1699
    goto :goto_1

    .line 1701
    :cond_6
    const-string v4, "PjService"

    const-string v5, "Delete account !!"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v4

    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->acc_del(I)I

    move-result v1

    .line 1704
    goto :goto_1

    .line 1705
    :cond_7
    if-ne p2, v3, :cond_8

    .line 1706
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->addAccount(Lcom/weirdvoice/api/SipProfile;)Z

    goto :goto_1

    .line 1708
    :cond_8
    const-string v4, "PjService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ask to unregister an unexisting account !!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAudioInCall(I)V
    .locals 2
    .param p1, "beforeInit"    # I

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    sget v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/MediaManager;->setAudioInCall(Z)V

    .line 1792
    :cond_0
    return-void

    .line 1790
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBluetoothOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1577
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/service/MediaManager;->setBluetoothOn(Z)V

    .line 1580
    :cond_0
    return-void
.end method

.method protected setDetectedNatType(Ljava/lang/String;I)V
    .locals 0
    .param p1, "natName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/weirdvoice/pjsip/PjSipService;->mNatDetected:Ljava/lang/String;

    .line 1991
    return-void
.end method

.method public setEchoCancellation(Z)V
    .locals 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1627
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1628
    const-string v0, "PjService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set echo cancelation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getEchoCancellationTail()J

    move-result-wide v0

    .line 1630
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v3, "echo_mode"

    invoke-virtual {v2, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 1629
    invoke-static {v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsua;->set_ec(JJ)I

    .line 1632
    :cond_0
    return-void

    .line 1629
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1589
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/service/MediaManager;->setMicrophoneMute(Z)V

    .line 1592
    :cond_0
    return-void
.end method

.method public setNoSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2076
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 2080
    :goto_0
    return-void

    .line 2079
    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->set_no_snd_dev()Lorg/pjsip/pjsua/pjmedia_port;

    goto :goto_0
.end method

.method public setPresence(Lcom/weirdvoice/api/SipManager$PresenceStatus;Ljava/lang/String;J)V
    .locals 5
    .param p1, "presence"    # Lcom/weirdvoice/api/SipManager$PresenceStatus;
    .param p2, "statusText"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1725
    iget-boolean v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v2, :cond_1

    .line 1726
    const-string v2, "PjService"

    const-string v3, "PJSIP is not started here, nothing can be done"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    new-instance v0, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v0}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    .line 1730
    .local v0, "account":Lcom/weirdvoice/api/SipProfile;
    iput-wide p3, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 1731
    invoke-virtual {p0, v0}, Lcom/weirdvoice/pjsip/PjSipService;->getProfileState(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfileState;

    move-result-object v1

    .line 1736
    .local v1, "profileState":Lcom/weirdvoice/api/SipProfileState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1738
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipProfileState;->getPjsuaId()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getOnlineForStatus(Lcom/weirdvoice/api/SipManager$PresenceStatus;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    goto :goto_0
.end method

.method public setService(Lcom/weirdvoice/service/SipService;)V
    .locals 1
    .param p1, "aService"    # Lcom/weirdvoice/service/SipService;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 148
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 149
    return-void
.end method

.method public setSnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2083
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 2087
    :goto_0
    return-void

    .line 2086
    :cond_0
    invoke-static {v1, v1}, Lorg/pjsip/pjsua/pjsua;->set_snd_dev(II)I

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/service/MediaManager;->setSpeakerphoneOn(Z)V

    .line 1604
    :cond_0
    return-void
.end method

.method public setVideoAndroidCapturer(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "window"    # Landroid/view/SurfaceView;

    .prologue
    .line 2376
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->vid_set_android_capturer(Ljava/lang/Object;)I

    .line 2377
    return-void
.end method

.method public setVideoAndroidRenderer(ILandroid/view/SurfaceView;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "window"    # Landroid/view/SurfaceView;

    .prologue
    .line 2368
    invoke-static {p1, p2}, Lorg/pjsip/pjsua/pjsua;->vid_set_android_renderer(ILjava/lang/Object;)I

    .line 2369
    return-void
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v0}, Lcom/weirdvoice/service/MediaManager;->stopRingAndUnfocus()V

    .line 1644
    :cond_0
    return-void
.end method

.method public sipStart()Z
    .locals 57
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v52

    invoke-static/range {v52 .. v52}, Lcom/weirdvoice/utils/Log;->setLogLevel(I)V

    .line 200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->hasSipStack:Z

    move/from16 v52, v0

    if-nez v52, :cond_0

    .line 201
    const-string v52, "PjService"

    const-string v53, "We have no sip stack, we can\'t start"

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v52, 0x0

    .line 663
    :goto_0
    return v52

    .line 206
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    move/from16 v52, v0

    if-nez v52, :cond_2e

    .line 207
    const-string v52, "PjService"

    const-string v53, "Starting sip stack"

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/weirdvoice/utils/TimerWrapper;->create(Lcom/weirdvoice/service/SipService;)V

    .line 213
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->create()I

    move-result v38

    .line 215
    .local v38, "status":I
    const-string v52, "PjService"

    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Created "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/16 v39, 0x0

    .line 219
    .local v39, "stunServers":[Lorg/pjsip/pjsua/pj_str_t;
    const/16 v40, 0x0

    .line 220
    .local v40, "stunServersCount":I
    new-instance v8, Lorg/pjsip/pjsua/pjsua_config;

    invoke-direct {v8}, Lorg/pjsip/pjsua/pjsua_config;-><init>()V

    .line 221
    .local v8, "cfg":Lorg/pjsip/pjsua/pjsua_config;
    new-instance v25, Lorg/pjsip/pjsua/pjsua_logging_config;

    invoke-direct/range {v25 .. v25}, Lorg/pjsip/pjsua/pjsua_logging_config;-><init>()V

    .line 222
    .local v25, "logCfg":Lorg/pjsip/pjsua/pjsua_logging_config;
    new-instance v26, Lorg/pjsip/pjsua/pjsua_media_config;

    invoke-direct/range {v26 .. v26}, Lorg/pjsip/pjsua/pjsua_media_config;-><init>()V

    .line 223
    .local v26, "mediaCfg":Lorg/pjsip/pjsua/pjsua_media_config;
    new-instance v13, Lorg/pjsip/pjsua/csipsimple_config;

    invoke-direct {v13}, Lorg/pjsip/pjsua/csipsimple_config;-><init>()V

    .line 227
    .local v13, "cssCfg":Lorg/pjsip/pjsua/csipsimple_config;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    move-object/from16 v52, v0

    if-nez v52, :cond_1

    .line 228
    const-string v52, "PjService"

    const-string v53, "create ua receiver"

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v52, Lcom/weirdvoice/pjsip/UAStateReceiver;

    invoke-direct/range {v52 .. v52}, Lcom/weirdvoice/pjsip/UAStateReceiver;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->initService(Lcom/weirdvoice/pjsip/PjSipService;)V

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/pjsip/UAStateReceiver;->reconfigure(Landroid/content/Context;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->zrtpReceiver:Lcom/weirdvoice/pjsip/ZrtpStateReceiver;

    move-object/from16 v52, v0

    if-nez v52, :cond_2

    .line 234
    const-string v52, "PjService"

    const-string v53, "create zrtp receiver"

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v52, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;-><init>(Lcom/weirdvoice/pjsip/PjSipService;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->zrtpReceiver:Lcom/weirdvoice/pjsip/ZrtpStateReceiver;

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    move-object/from16 v52, v0

    if-nez v52, :cond_3

    .line 238
    new-instance v52, Lcom/weirdvoice/service/MediaManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v53, v0

    invoke-direct/range {v52 .. v53}, Lcom/weirdvoice/service/MediaManager;-><init>(Lcom/weirdvoice/service/SipService;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/service/MediaManager;->startService()V

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->initModules()V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 245
    const-string v53, "dtmf_pause_time"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v52

    .line 244
    sput v52, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_PAUSE_LENGTH:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 247
    const-string v53, "dtmf_wait_time"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v52

    .line 246
    sput v52, Lcom/weirdvoice/pjsip/PjSipService;->DTMF_TONE_WAIT_LENGTH:I

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->setCallbackObject(Lorg/pjsip/pjsua/Callback;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->zrtpReceiver:Lcom/weirdvoice/pjsip/ZrtpStateReceiver;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->setZrtpCallbackObject(Lorg/pjsip/pjsua/ZrtpCallback;)V

    .line 252
    const-string v52, "PjService"

    const-string v53, "Attach is done to callback"

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v13}, Lorg/pjsip/pjsua/pjsua;->csipsimple_config_default(Lorg/pjsip/pjsua/csipsimple_config;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 257
    const-string v53, "use_compact_form"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_13

    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 256
    :goto_1
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_compact_form_headers(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 260
    const-string v53, "use_compact_form"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_14

    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 259
    :goto_2
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_compact_form_sdp(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 263
    const-string v53, "force_no_update"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_15

    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 262
    :goto_3
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_no_update(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 266
    const-string v53, "enable_ns"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_16

    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 265
    :goto_4
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_noise_suppressor(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getTcpKeepAliveInterval()I

    move-result v52

    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTcp_keep_alive_interval(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getTlsKeepAliveInterval()I

    move-result v52

    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTls_keep_alive_interval(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 273
    const-string v53, "disable_tcp_switch"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_17

    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    .line 272
    :goto_5
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setDisable_tcp_switch(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 276
    const-string v53, "disable_rport"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_18

    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    .line 275
    :goto_6
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setDisable_rport(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 279
    const-string v53, "add_bandwidth_tias_in_sdp"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_19

    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    .line 278
    :goto_7
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setAdd_bandwidth_tias_in_sdp(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 284
    const-string v53, "tsx_t1_timeout"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v45

    .line 285
    .local v45, "tsx_to":I
    if-lez v45, :cond_4

    .line 286
    move/from16 v0, v45

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_t1_timeout(I)V

    .line 288
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "tsx_t2_timeout"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v45

    .line 289
    if-lez v45, :cond_5

    .line 290
    move/from16 v0, v45

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_t2_timeout(I)V

    .line 292
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "tsx_t4_timeout"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v45

    .line 293
    if-lez v45, :cond_6

    .line 294
    move/from16 v0, v45

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_t4_timeout(I)V

    .line 296
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "tsx_td_timeout"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v45

    .line 297
    if-lez v45, :cond_7

    .line 298
    move/from16 v0, v45

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_td_timeout(I)V

    .line 302
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesWrapper;->getZrtpFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v51

    .line 303
    .local v51, "zrtpFolder":Ljava/io/File;
    if-eqz v51, :cond_1b

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 305
    const-string v53, "use_zrtp"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_1a

    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 304
    :goto_8
    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_zrtp(I)V

    .line 307
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setStorage_folder(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 314
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    const-string v53, "com.weirdvoice.codecs.action.REGISTER_CODEC"

    .line 313
    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/ExtraPlugins;->getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 315
    .local v7, "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-virtual {v13}, Lorg/pjsip/pjsua/csipsimple_config;->getExtra_aud_codecs()[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v14

    .line 317
    .local v14, "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    const/16 v19, 0x0

    .line 331
    .local v19, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 332
    const-string v53, "audio_implementation"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v22

    .line 333
    .local v22, "implementation":I
    const/16 v52, 0x1

    move/from16 v0, v22

    move/from16 v1, v52

    if-ne v0, v1, :cond_8

    .line 334
    invoke-virtual {v13}, Lorg/pjsip/pjsua/csipsimple_config;->getAudio_implementation()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v5

    .line 335
    .local v5, "audImp":Lorg/pjsip/pjsua/dynamic_factory;
    const-string v52, "pjmedia_opensl_factory"

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    .line 337
    const-string v53, "libpj_opensl_dev.so"

    .line 336
    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/pjsip/NativeLibManager;->getBundledStackLibFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v32

    .line 338
    .local v32, "openslLib":Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 339
    invoke-virtual {v13, v5}, Lorg/pjsip/pjsua/csipsimple_config;->setAudio_implementation(Lorg/pjsip/pjsua/dynamic_factory;)V

    .line 340
    const-string v52, "PjService"

    const-string v53, "Use OpenSL-ES implementation"

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v5    # "audImp":Lorg/pjsip/pjsua/dynamic_factory;
    .end local v32    # "openslLib":Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "use_video"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_9

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    const-string v53, "com.weirdvoice.plugins.action.REGISTER_VIDEO"

    .line 347
    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/ExtraPlugins;->getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v50

    .line 350
    .local v50, "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->size()I

    move-result v52

    if-lez v52, :cond_9

    .line 351
    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;

    .line 352
    .local v49, "videoPlugin":Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v34

    .line 353
    .local v34, "pjVideoFile":Lorg/pjsip/pjsua/pj_str_t;
    const-string v52, "PjService"

    new-instance v53, Ljava/lang/StringBuilder;

    const-string v54, "Load video plugin at "

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v13}, Lorg/pjsip/pjsua/csipsimple_config;->getVideo_render_implementation()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v48

    .line 358
    .local v48, "vidImpl":Lorg/pjsip/pjsua/dynamic_factory;
    const-string v52, "pjmedia_webrtc_vid_render_factory"

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    .line 357
    move-object/from16 v0, v48

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 359
    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 363
    invoke-virtual {v13}, Lorg/pjsip/pjsua/csipsimple_config;->getVideo_capture_implementation()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v48

    .line 365
    const-string v52, "pjmedia_webrtc_vid_capture_factory"

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    .line 364
    move-object/from16 v0, v48

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 366
    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    .line 384
    const-string v53, "com.weirdvoice.codecs.action.REGISTER_VIDEO_CODEC"

    .line 383
    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/ExtraPlugins;->getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 385
    invoke-virtual {v13}, Lorg/pjsip/pjsua/csipsimple_config;->getExtra_vid_codecs()[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v14

    .line 386
    invoke-virtual {v13}, Lorg/pjsip/pjsua/csipsimple_config;->getExtra_vid_codecs_destroy()[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v15

    .line 387
    .local v15, "cssCodecsDestroy":[Lorg/pjsip/pjsua/dynamic_factory;
    const/16 v19, 0x0

    .line 389
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .line 388
    :goto_a
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-nez v53, :cond_1c

    .line 404
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    invoke-virtual {v13, v0, v1}, Lorg/pjsip/pjsua/csipsimple_config;->setExtra_vid_codecs_cnt(J)V

    .line 407
    invoke-virtual {v13}, Lorg/pjsip/pjsua/csipsimple_config;->getVid_converter()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v9

    .line 408
    .local v9, "convertImpl":Lorg/pjsip/pjsua/dynamic_factory;
    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 410
    const-string v52, "pjmedia_libswscale_converter_init"

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    .line 409
    move-object/from16 v0, v52

    invoke-virtual {v9, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 415
    .end local v9    # "convertImpl":Lorg/pjsip/pjsua/dynamic_factory;
    .end local v15    # "cssCodecsDestroy":[Lorg/pjsip/pjsua/dynamic_factory;
    .end local v34    # "pjVideoFile":Lorg/pjsip/pjsua/pj_str_t;
    .end local v48    # "vidImpl":Lorg/pjsip/pjsua/dynamic_factory;
    .end local v49    # "videoPlugin":Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;
    .end local v50    # "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    :cond_9
    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->config_default(Lorg/pjsip/pjsua/pjsua_config;)V

    .line 416
    sget-object v52, Lorg/pjsip/pjsua/pjsuaConstants;->WRAPPER_CALLBACK_STRUCT:Lorg/pjsip/pjsua/pjsua_callback;

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setCb(Lorg/pjsip/pjsua/pjsua_callback;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setUser_agent(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 420
    const-string v53, "thread_count"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v42

    .line 421
    .local v42, "threadCount":I
    if-gtz v42, :cond_a

    .line 422
    const/16 v42, 0x1

    .line 424
    :cond_a
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setThread_cnt(J)V

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->getUseSrtp()Lorg/pjsip/pjsua/pjmedia_srtp_use;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setUse_srtp(Lorg/pjsip/pjsua/pjmedia_srtp_use;)V

    .line 426
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setSrtp_secure_signaling(I)V

    .line 427
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setNat_type_in_sdp(I)V

    .line 429
    invoke-virtual {v8}, Lorg/pjsip/pjsua/pjsua_config;->getTimer_setting()Lorg/pjsip/pjsua/pjsip_timer_setting;

    move-result-object v43

    .line 430
    .local v43, "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "timer_min_se"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v28

    .line 431
    .local v28, "minSe":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 432
    const-string v53, "timer_sess_expires"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v37

    .line 433
    .local v37, "sessExp":I
    move/from16 v0, v28

    move/from16 v1, v37

    if-gt v0, v1, :cond_b

    const/16 v52, 0x5a

    move/from16 v0, v28

    move/from16 v1, v52

    if-lt v0, v1, :cond_b

    .line 434
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, v43

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_timer_setting;->setMin_se(J)V

    .line 435
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, v43

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_timer_setting;->setSess_expires(J)V

    .line 436
    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setTimer_setting(Lorg/pjsip/pjsua/pjsip_timer_setting;)V

    .line 439
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->enableDNSSRV()Z

    move-result v52

    if-eqz v52, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v52

    if-nez v52, :cond_c

    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->getNameservers()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v31

    .line 441
    .local v31, "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    if-eqz v31, :cond_1e

    .line 442
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setNameserver_count(J)V

    .line 443
    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setNameserver([Lorg/pjsip/pjsua/pj_str_t;)V

    .line 449
    .end local v31    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_c
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "enable_stun"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 450
    .local v23, "isStunEnabled":Z
    if-eqz v23, :cond_d

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 452
    const-string v53, "stun_server"

    .line 451
    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 452
    const-string v53, ","

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 453
    .local v36, "servers":[Ljava/lang/String;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setStun_srv_cnt(J)V

    .line 454
    invoke-virtual {v8}, Lorg/pjsip/pjsua/pjsua_config;->getStun_srv()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v39

    .line 455
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v53, v0

    const/16 v52, 0x0

    :goto_c
    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_1f

    .line 460
    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setStun_srv([Lorg/pjsip/pjsua/pj_str_t;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 462
    const-string v53, "enable_stun2"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    .line 461
    invoke-static/range {v52 .. v52}, Lcom/weirdvoice/pjsip/PjSipService;->boolToPjsuaConstant(Z)I

    move-result v52

    move/from16 v0, v52

    invoke-virtual {v8, v0}, Lorg/pjsip/pjsua/pjsua_config;->setStun_map_use_stun2(I)V

    .line 466
    .end local v36    # "servers":[Ljava/lang/String;
    :cond_d
    invoke-static/range {v25 .. v25}, Lorg/pjsip/pjsua/pjsua;->logging_config_default(Lorg/pjsip/pjsua/pjsua_logging_config;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_logging_config;->setConsole_level(J)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_logging_config;->setLevel(J)V

    .line 469
    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    move-object/from16 v0, v25

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_logging_config;->setMsg_logging(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "log_use_direct_file"

    .line 472
    const/16 v54, 0x0

    .line 471
    invoke-virtual/range {v52 .. v54}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v52

    .line 472
    if-eqz v52, :cond_e

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-static/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesWrapper;->getLogsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v33

    .line 474
    .local v33, "outFile":Ljava/io/File;
    if-eqz v33, :cond_e

    .line 475
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_logging_config;->setLog_filename(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 476
    const-wide/16 v52, 0x1108

    move-object/from16 v0, v25

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_logging_config;->setLog_file_flags(J)V

    .line 481
    .end local v33    # "outFile":Ljava/io/File;
    :cond_e
    invoke-static/range {v26 .. v26}, Lorg/pjsip/pjsua/pjsua;->media_config_default(Lorg/pjsip/pjsua/pjsua_media_config;)V

    .line 484
    const-wide/16 v52, 0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setChannel_count(J)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getAutoCloseTime()I

    move-result v52

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setSnd_auto_close_time(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getEchoCancellationTail()J

    move-result-wide v52

    move-object/from16 v0, v26

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setEc_tail_len(J)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "echo_mode"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v17

    .line 489
    .local v17, "echoMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getClockRate(Lcom/weirdvoice/service/MediaManager;)J

    move-result-wide v10

    .line 490
    .local v10, "clockRate":J
    const-wide/16 v52, 0x3e80

    cmp-long v52, v10, v52

    if-lez v52, :cond_f

    const/16 v52, 0x3

    move/from16 v0, v17

    move/from16 v1, v52

    if-ne v0, v1, :cond_f

    .line 493
    const/16 v17, 0x1

    .line 495
    :cond_f
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setEc_options(J)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 497
    const-string v53, "enable_vad"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_20

    const/16 v52, 0x0

    .line 496
    :goto_d
    invoke-static/range {v52 .. v52}, Lcom/weirdvoice/pjsip/PjSipService;->boolToPjsuaConstant(Z)I

    move-result v52

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setNo_vad(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getMediaQuality()J

    move-result-wide v52

    move-object/from16 v0, v26

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setQuality(J)V

    .line 499
    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Lorg/pjsip/pjsua/pjsua_media_config;->setClock_rate(J)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 501
    const-string v53, "snd_ptime"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    .line 500
    move-object/from16 v0, v26

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setAudio_frame_ptime(J)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 506
    const-string v53, "media_thread_count"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v27

    .line 507
    .local v27, "mediaThreadCount":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setThread_cnt(J)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 509
    const-string v53, "has_io_queue"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 510
    .local v18, "hasOwnIoQueue":Z
    if-gtz v42, :cond_10

    .line 512
    const/16 v18, 0x0

    .line 514
    :cond_10
    invoke-static/range {v18 .. v18}, Lcom/weirdvoice/pjsip/PjSipService;->boolToPjsuaConstant(Z)I

    move-result v52

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setHas_ioqueue(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "enable_ice"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 518
    .local v20, "iceEnabled":Z
    invoke-static/range {v20 .. v20}, Lcom/weirdvoice/pjsip/PjSipService;->boolToPjsuaConstant(Z)I

    move-result v52

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setEnable_ice(I)V

    .line 519
    if-eqz v20, :cond_11

    .line 520
    invoke-virtual/range {v26 .. v26}, Lorg/pjsip/pjsua/pjsua_media_config;->getIce_opt()Lorg/pjsip/pjsua/pj_ice_sess_options;

    move-result-object v21

    .line 521
    .local v21, "iceOpts":Lorg/pjsip/pjsua/pj_ice_sess_options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "ice_aggressive"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 522
    .local v4, "aggressiveIce":Z
    invoke-static {v4}, Lcom/weirdvoice/pjsip/PjSipService;->boolToPjsuaConstant(Z)I

    move-result v52

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pj_ice_sess_options;->setAggressive(I)V

    .line 526
    .end local v4    # "aggressiveIce":Z
    .end local v21    # "iceOpts":Lorg/pjsip/pjsua/pj_ice_sess_options;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "enable_turn"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    .line 527
    .local v24, "isTurnEnabled":Z
    if-eqz v24, :cond_21

    .line 528
    invoke-virtual/range {v26 .. v26}, Lorg/pjsip/pjsua/pjsua_media_config;->getTurn_auth_cred()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;

    move-result-object v12

    .line 529
    .local v12, "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    invoke-static/range {v24 .. v24}, Lcom/weirdvoice/pjsip/PjSipService;->boolToPjsuaConstant(Z)I

    move-result v52

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setEnable_turn(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getTurnServer()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    move-object/from16 v0, v26

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setTurn_server(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    .line 533
    const-string v53, "turn_username"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 532
    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v53, v0

    .line 535
    const-string v54, "turn_password"

    invoke-virtual/range {v53 .. v54}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 534
    invoke-static/range {v53 .. v53}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v53

    .line 536
    const-string v54, "*"

    invoke-static/range {v54 .. v54}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v54

    .line 531
    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2, v12}, Lorg/pjsip/pjsua/pjsua;->set_turn_credentials(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)I

    .line 538
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/pjsip/pjsua/pjsua_media_config;->setTurn_auth_cred(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    const-string v53, "turn_transport"

    invoke-virtual/range {v52 .. v53}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v46

    .line 540
    .local v46, "turnTransport":I
    if-eqz v46, :cond_12

    .line 541
    packed-switch v46, :pswitch_data_0

    .line 561
    .end local v12    # "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    .end local v46    # "turnTransport":I
    :cond_12
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v52

    invoke-static {v8, v0, v1, v13, v2}, Lorg/pjsip/pjsua/pjsua;->csipsimple_init(Lorg/pjsip/pjsua/pjsua_config;Lorg/pjsip/pjsua/pjsua_logging_config;Lorg/pjsip/pjsua/pjsua_media_config;Lorg/pjsip/pjsua/csipsimple_config;Ljava/lang/Object;)I

    move-result v38

    .line 562
    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    move/from16 v0, v38

    move/from16 v1, v52

    if-eq v0, v1, :cond_22

    .line 563
    new-instance v52, Ljava/lang/StringBuilder;

    const-string v53, "Fail to init pjsua "

    invoke-direct/range {v52 .. v53}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-static/range {v38 .. v38}, Lorg/pjsip/pjsua/pjsua;->get_error_message(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    .line 563
    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 565
    .local v30, "msg":Ljava/lang/String;
    const-string v52, "PjService"

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->cleanPjsua()V

    .line 568
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 258
    .end local v7    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v10    # "clockRate":J
    .end local v14    # "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    .end local v17    # "echoMode":I
    .end local v18    # "hasOwnIoQueue":Z
    .end local v19    # "i":I
    .end local v20    # "iceEnabled":Z
    .end local v22    # "implementation":I
    .end local v23    # "isStunEnabled":Z
    .end local v24    # "isTurnEnabled":Z
    .end local v27    # "mediaThreadCount":I
    .end local v28    # "minSe":I
    .end local v30    # "msg":Ljava/lang/String;
    .end local v37    # "sessExp":I
    .end local v42    # "threadCount":I
    .end local v43    # "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    .end local v45    # "tsx_to":I
    .end local v51    # "zrtpFolder":Ljava/io/File;
    :cond_13
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_1

    .line 261
    :cond_14
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_2

    .line 264
    :cond_15
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_3

    .line 267
    :cond_16
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_4

    .line 274
    :cond_17
    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_5

    .line 277
    :cond_18
    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_6

    .line 280
    :cond_19
    sget v52, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_7

    .line 306
    .restart local v45    # "tsx_to":I
    .restart local v51    # "zrtpFolder":Ljava/io/File;
    :cond_1a
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_8

    .line 309
    :cond_1b
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    move/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_zrtp(I)V

    .line 310
    const-string v52, ""

    invoke-static/range {v52 .. v52}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setStorage_folder(Lorg/pjsip/pjsua/pj_str_t;)V

    goto/16 :goto_9

    .line 389
    .restart local v7    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    .restart local v14    # "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    .restart local v15    # "cssCodecsDestroy":[Lorg/pjsip/pjsua/dynamic_factory;
    .restart local v19    # "i":I
    .restart local v22    # "implementation":I
    .restart local v34    # "pjVideoFile":Lorg/pjsip/pjsua/pj_str_t;
    .restart local v48    # "vidImpl":Lorg/pjsip/pjsua/dynamic_factory;
    .restart local v49    # "videoPlugin":Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;
    .restart local v50    # "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    :cond_1c
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 390
    .local v6, "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;

    .line 391
    .local v16, "dyn":Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_1d

    .line 393
    aget-object v53, v14, v19

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 394
    aget-object v53, v14, v19

    .line 395
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v54

    .line 394
    invoke-virtual/range {v53 .. v54}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 397
    aget-object v53, v15, v19

    .line 398
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v54

    .line 397
    invoke-virtual/range {v53 .. v54}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 399
    aget-object v53, v15, v19

    .line 400
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;->factoryDeinitFunction:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v54

    .line 399
    invoke-virtual/range {v53 .. v54}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 402
    :cond_1d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 445
    .end local v6    # "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v15    # "cssCodecsDestroy":[Lorg/pjsip/pjsua/dynamic_factory;
    .end local v16    # "dyn":Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;
    .end local v34    # "pjVideoFile":Lorg/pjsip/pjsua/pj_str_t;
    .end local v48    # "vidImpl":Lorg/pjsip/pjsua/dynamic_factory;
    .end local v49    # "videoPlugin":Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;
    .end local v50    # "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    .restart local v28    # "minSe":I
    .restart local v31    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    .restart local v37    # "sessExp":I
    .restart local v42    # "threadCount":I
    .restart local v43    # "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    :cond_1e
    const-wide/16 v52, 0x0

    move-wide/from16 v0, v52

    invoke-virtual {v8, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setNameserver_count(J)V

    goto/16 :goto_b

    .line 455
    .end local v31    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    .restart local v23    # "isStunEnabled":Z
    .restart local v36    # "servers":[Ljava/lang/String;
    :cond_1f
    aget-object v35, v36, v52

    .line 456
    .local v35, "server":Ljava/lang/String;
    const-string v54, "PjService"

    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "add server "

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v54

    aput-object v54, v39, v40

    .line 458
    add-int/lit8 v40, v40, 0x1

    .line 455
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_c

    .line 497
    .end local v35    # "server":Ljava/lang/String;
    .end local v36    # "servers":[Ljava/lang/String;
    .restart local v10    # "clockRate":J
    .restart local v17    # "echoMode":I
    :cond_20
    const/16 v52, 0x1

    goto/16 :goto_d

    .line 543
    .restart local v12    # "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    .restart local v18    # "hasOwnIoQueue":Z
    .restart local v20    # "iceEnabled":Z
    .restart local v24    # "isTurnEnabled":Z
    .restart local v27    # "mediaThreadCount":I
    .restart local v46    # "turnTransport":I
    :pswitch_0
    sget-object v52, Lorg/pjsip/pjsua/pj_turn_tp_type;->PJ_TURN_TP_UDP:Lorg/pjsip/pjsua/pj_turn_tp_type;

    move-object/from16 v0, v26

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setTurn_conn_type(Lorg/pjsip/pjsua/pj_turn_tp_type;)V

    goto/16 :goto_e

    .line 546
    :pswitch_1
    sget-object v52, Lorg/pjsip/pjsua/pj_turn_tp_type;->PJ_TURN_TP_TCP:Lorg/pjsip/pjsua/pj_turn_tp_type;

    move-object/from16 v0, v26

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setTurn_conn_type(Lorg/pjsip/pjsua/pj_turn_tp_type;)V

    goto/16 :goto_e

    .line 549
    :pswitch_2
    sget-object v52, Lorg/pjsip/pjsua/pj_turn_tp_type;->PJ_TURN_TP_TLS:Lorg/pjsip/pjsua/pj_turn_tp_type;

    move-object/from16 v0, v26

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setTurn_conn_type(Lorg/pjsip/pjsua/pj_turn_tp_type;)V

    goto/16 :goto_e

    .line 557
    .end local v12    # "creds":Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    .end local v46    # "turnTransport":I
    :cond_21
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setEnable_turn(I)V

    goto/16 :goto_e

    .line 581
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isUDPEnabled()Z

    move-result v52

    if-eqz v52, :cond_24

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getUDPTransportPort()I

    move-result v47

    .line 584
    .local v47, "udpPort":I
    sget-object v52, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->createLocalTransportAndAccount(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->localUdpAccPjId:Ljava/lang/Integer;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->localUdpAccPjId:Ljava/lang/Integer;

    move-object/from16 v52, v0

    if-nez v52, :cond_23

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->cleanPjsua()V

    .line 588
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 591
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v52

    if-eqz v52, :cond_24

    .line 593
    sget-object v52, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 594
    if-nez v47, :cond_25

    .line 592
    .end local v47    # "udpPort":I
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->createLocalTransportAndAccount(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->localUdp6AccPjId:Ljava/lang/Integer;

    .line 599
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isTCPEnabled()Z

    move-result v52

    if-eqz v52, :cond_27

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getTCPTransportPort()I

    move-result v41

    .line 602
    .local v41, "tcpPort":I
    sget-object v52, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->createLocalTransportAndAccount(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->localTcpAccPjId:Ljava/lang/Integer;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->localTcpAccPjId:Ljava/lang/Integer;

    move-object/from16 v52, v0

    if-nez v52, :cond_26

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->cleanPjsua()V

    .line 606
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 594
    .end local v41    # "tcpPort":I
    .restart local v47    # "udpPort":I
    :cond_25
    add-int/lit8 v47, v47, 0xa

    goto :goto_f

    .line 610
    .end local v47    # "udpPort":I
    .restart local v41    # "tcpPort":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v52

    if-eqz v52, :cond_27

    .line 612
    sget-object v52, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 613
    if-nez v41, :cond_28

    .line 611
    .end local v41    # "tcpPort":I
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->createLocalTransportAndAccount(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->localTcp6AccPjId:Ljava/lang/Integer;

    .line 618
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isTLSEnabled()Z

    move-result v52

    if-eqz v52, :cond_2a

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getTLSTransportPort()I

    move-result v44

    .line 621
    .local v44, "tlsPort":I
    sget-object v52, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->createLocalTransportAndAccount(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->localTlsAccPjId:Ljava/lang/Integer;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->localTlsAccPjId:Ljava/lang/Integer;

    move-object/from16 v52, v0

    if-nez v52, :cond_29

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->cleanPjsua()V

    .line 625
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 613
    .end local v44    # "tlsPort":I
    .restart local v41    # "tcpPort":I
    :cond_28
    add-int/lit8 v41, v41, 0xa

    goto :goto_10

    .line 629
    .end local v41    # "tcpPort":I
    .restart local v44    # "tlsPort":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v52

    if-eqz v52, :cond_2a

    .line 631
    sget-object v52, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 632
    if-nez v44, :cond_2b

    .line 630
    .end local v44    # "tlsPort":I
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->createLocalTransportAndAccount(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->localTls6AccPjId:Ljava/lang/Integer;

    .line 638
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->pjsipModules:Ljava/util/Map;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :goto_12
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-nez v53, :cond_2c

    .line 643
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->start()I

    move-result v38

    .line 645
    sget v52, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v38

    move/from16 v1, v52

    if-eq v0, v1, :cond_2d

    .line 646
    new-instance v52, Ljava/lang/StringBuilder;

    const-string v53, "Fail to start pjsip  "

    invoke-direct/range {v52 .. v53}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-static/range {v38 .. v38}, Lorg/pjsip/pjsua/pjsua;->get_error_message(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    .line 646
    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 648
    .restart local v30    # "msg":Ljava/lang/String;
    const-string v52, "PjService"

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->cleanPjsua()V

    .line 651
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 632
    .end local v30    # "msg":Ljava/lang/String;
    .restart local v44    # "tlsPort":I
    :cond_2b
    add-int/lit8 v44, v44, 0xa

    goto :goto_11

    .line 638
    .end local v44    # "tlsPort":I
    :cond_2c
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;

    .line 639
    .local v29, "mod":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    invoke-interface/range {v29 .. v29}, Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;->onBeforeStartPjsip()V

    goto :goto_12

    .line 655
    .end local v29    # "mod":Lcom/weirdvoice/pjsip/PjSipService$PjsipModule;
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->initCodecs()V

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/PjSipService;->setCodecsPriorities()V

    .line 658
    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    .line 660
    const/16 v52, 0x1

    goto/16 :goto_0

    .line 663
    .end local v7    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v8    # "cfg":Lorg/pjsip/pjsua/pjsua_config;
    .end local v10    # "clockRate":J
    .end local v13    # "cssCfg":Lorg/pjsip/pjsua/csipsimple_config;
    .end local v14    # "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    .end local v17    # "echoMode":I
    .end local v18    # "hasOwnIoQueue":Z
    .end local v19    # "i":I
    .end local v20    # "iceEnabled":Z
    .end local v22    # "implementation":I
    .end local v23    # "isStunEnabled":Z
    .end local v24    # "isTurnEnabled":Z
    .end local v25    # "logCfg":Lorg/pjsip/pjsua/pjsua_logging_config;
    .end local v26    # "mediaCfg":Lorg/pjsip/pjsua/pjsua_media_config;
    .end local v27    # "mediaThreadCount":I
    .end local v28    # "minSe":I
    .end local v37    # "sessExp":I
    .end local v38    # "status":I
    .end local v39    # "stunServers":[Lorg/pjsip/pjsua/pj_str_t;
    .end local v40    # "stunServersCount":I
    .end local v42    # "threadCount":I
    .end local v43    # "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    .end local v45    # "tsx_to":I
    .end local v51    # "zrtpFolder":Ljava/io/File;
    :cond_2e
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sipStop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 672
    const-string v0, "PjService"

    const-string v1, ">> SIP STOP <<"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/weirdvoice/pjsip/PjSipService;->getActiveCallInProgress()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    const-string v0, "PjService"

    const-string v1, "We have a call in progress... DO NOT STOP !!!"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    .line 691
    :goto_0
    return v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    iget-object v0, v0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    iget-object v0, v0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->cancelRegisters()V

    .line 683
    :cond_1
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_2

    .line 684
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/PjSipService;->cleanPjsua()V

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 688
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    .line 691
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startLoopbackTest()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2308
    invoke-static {v0, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 2309
    return-void
.end method

.method public startRecording(II)V
    .locals 7
    .param p1, "callId"    # I
    .param p2, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2101
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->canRecord(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2124
    :goto_0
    return-void

    .line 2105
    :cond_0
    if-nez p2, :cond_1

    .line 2106
    const/4 p2, 0x3

    .line 2110
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-static {v4}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getRecordsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 2111
    .local v1, "recFolder":Ljava/io/File;
    new-instance v2, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v4

    invoke-direct {v2, v4, v1, p2}, Lcom/weirdvoice/pjsip/recorder/impl/SimpleWavRecorderHandler;-><init>(Lcom/weirdvoice/api/SipCallSession;Ljava/io/File;I)V

    .line 2113
    .local v2, "recoder":Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->callRecorders:Landroid/util/SparseArray;

    .line 2114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2115
    .local v3, "recordersList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->callRecorders:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2117
    invoke-interface {v2}, Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;->startRecording()V

    .line 2118
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, v6}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateRecordingStatus(IZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2119
    .end local v1    # "recFolder":Ljava/io/File;
    .end local v2    # "recoder":Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;
    .end local v3    # "recordersList":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;>;"
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const v5, 0x7f0c0236

    invoke-virtual {v4, v5}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(I)V

    goto :goto_0

    .line 2121
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2122
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "PjService"

    const-string v5, "Impossible to record "

    invoke-static {v4, v5, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startWaittoneGenerator(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->waittoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->waittoneGenerators:Landroid/util/SparseArray;

    new-instance v1, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;-><init>(IZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->waittoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->startPjMediaWaitingTone()I

    .line 1535
    return-void
.end method

.method public stopDialtoneGenerator(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1517
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V

    .line 1519
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1524
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1525
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1526
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1528
    :cond_2
    return-void
.end method

.method public stopLoopbackTest()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2316
    invoke-static {v0, v0}, Lorg/pjsip/pjsua/pjsua;->conf_disconnect(II)I

    .line 2317
    return-void
.end method

.method public stopPlaying(I)V
    .locals 4
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2252
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->callPlayers:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2253
    .local v1, "players":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/pjsip/player/IPlayerHandler;>;"
    if-eqz v1, :cond_0

    .line 2254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2257
    iget-object v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->callPlayers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2259
    :cond_0
    return-void

    .line 2254
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/pjsip/player/IPlayerHandler;

    .line 2255
    .local v0, "player":Lcom/weirdvoice/pjsip/player/IPlayerHandler;
    invoke-interface {v0}, Lcom/weirdvoice/pjsip/player/IPlayerHandler;->stopPlaying()V

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 7
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2134
    iget-boolean v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v4, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-void

    .line 2137
    :cond_1
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->callRecorders:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2138
    .local v3, "recoders":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;>;"
    if-eqz v3, :cond_0

    .line 2139
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2149
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->callRecorders:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2150
    iget-object v4, p0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateRecordingStatus(IZZ)V

    goto :goto_0

    .line 2139
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;

    .line 2140
    .local v2, "recoder":Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;
    invoke-interface {v2}, Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;->stopRecording()V

    .line 2142
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getPublicCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 2143
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.weirdvoice.service.CALL_RECORDED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2144
    .local v1, "it":Landroid/content/Intent;
    const-string v5, "call_info"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2145
    invoke-interface {v2, v1}, Lcom/weirdvoice/pjsip/recorder/IRecorderHandler;->fillBroadcastWithInfo(Landroid/content/Intent;)V

    .line 2146
    iget-object v5, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v6, "android.permission.USE_SIP"

    invoke-virtual {v5, v1, v6}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopWaittoneGenerator(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->waittoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->waittoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V

    .line 1540
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->waittoneGenerators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1542
    :cond_0
    return-void
.end method

.method public tryToLoadStack()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    iget-boolean v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasSipStack:Z

    if-eqz v3, :cond_0

    .line 187
    :goto_0
    return v1

    .line 161
    :cond_0
    iget-boolean v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->sipStackIsCorrupted:Z

    if-nez v3, :cond_1

    .line 170
    :try_start_0
    const-string v3, "stlport_shared"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 171
    const-string v3, "pjsipjni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 172
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasSipStack:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "PjService"

    .line 177
    const-string v4, "We have a problem with the current stack.... NOT YET Implemented"

    .line 176
    invoke-static {v3, v4, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    iput-boolean v2, p0, Lcom/weirdvoice/pjsip/PjSipService;->hasSipStack:Z

    .line 179
    iput-boolean v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->sipStackIsCorrupted:Z

    .line 181
    iget-object v1, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v3, "Can\'t load native library. CPU arch invalid for this build"

    invoke-virtual {v1, v3}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    move v1, v2

    .line 182
    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PjService"

    const-string v3, "We have a problem with the current stack...."

    invoke-static {v1, v3, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 187
    goto :goto_0
.end method

.method public unsetAudioInCall()V
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v0}, Lcom/weirdvoice/service/MediaManager;->unsetAudioInCall()V

    .line 1799
    :cond_0
    return-void
.end method

.method public updateCallOptions(ILandroid/os/Bundle;)I
    .locals 5
    .param p1, "callId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 1292
    const-string v4, "opt_call_video"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1293
    const-string v4, "opt_call_video"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1294
    .local v0, "add":Z
    invoke-virtual {p0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v1

    .line 1295
    .local v1, "ci":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1310
    .end local v0    # "add":Z
    .end local v1    # "ci":Lcom/weirdvoice/api/SipCallSession;
    :cond_0
    :goto_0
    return v3

    .line 1298
    .restart local v0    # "add":Z
    .restart local v1    # "ci":Lcom/weirdvoice/api/SipCallSession;
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    :cond_2
    if-eqz v0, :cond_3

    sget-object v2, Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_ADD:Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;

    .line 1307
    .local v2, "op":Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;
    :goto_1
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/pjsip/pjsua/pjsua;->call_set_vid_strm(ILorg/pjsip/pjsua/pjsua_call_vid_strm_op;Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)I

    move-result v3

    goto :goto_0

    .line 1303
    .end local v2    # "op":Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;
    :cond_3
    sget-object v2, Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_REMOVE:Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;

    goto :goto_1
.end method

.method public updateProfileStateFromService(I)V
    .locals 10
    .param p1, "pjsuaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 929
    iget-boolean v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v6, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-static {v6, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountIdForPjsipId(Landroid/content/Context;I)J

    move-result-wide v0

    .line 933
    .local v0, "accId":J
    const-string v6, "PjService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Update profile from service for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " aka in db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_2

    .line 935
    sget v5, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    .line 937
    .local v5, "success":I
    new-instance v4, Lorg/pjsip/pjsua/pjsua_acc_info;

    invoke-direct {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;-><init>()V

    .line 938
    .local v4, "pjAccountInfo":Lorg/pjsip/pjsua/pjsua_acc_info;
    invoke-static {p1, v4}, Lorg/pjsip/pjsua/pjsua;->acc_get_info(ILorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v5

    .line 939
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v6, :cond_0

    if-eqz v4, :cond_0

    .line 940
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 945
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v6, "status_code"

    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;->getStatus()Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v7

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_1
    const-string v6, "status_text"

    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;->getStatus_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-static {v7}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v6, "expires"

    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;->getExpires()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    iget-object v6, p0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v6}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 955
    sget-object v7, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 954
    invoke-virtual {v6, v7, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 958
    const-string v6, "PjService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Profile state UP : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 946
    :catch_0
    move-exception v3

    .line 947
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "status_code"

    .line 948
    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 947
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 961
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "pjAccountInfo":Lorg/pjsip/pjsua/pjsua_acc_info;
    .end local v5    # "success":I
    :cond_2
    const-string v6, "PjService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Trying to update not added account "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateTransportIp(Ljava/lang/String;)V
    .locals 3
    .param p1, "oldIPAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2262
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 2267
    :goto_0
    return-void

    .line 2265
    :cond_0
    const-string v0, "PjService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to update my address in the current call to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->update_transport(Lorg/pjsip/pjsua/pj_str_t;)I

    goto :goto_0
.end method

.method public validateAudioClockRate(I)I
    .locals 1
    .param p1, "aClockRate"    # I

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/service/MediaManager;->validateAudioClockRate(I)I

    move-result v0

    .line 1785
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public zrtpSASRevoke(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1982
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 1986
    :goto_0
    return-void

    .line 1985
    :cond_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->jzrtp_SASRevoked(I)V

    goto :goto_0
.end method

.method public zrtpSASVerified(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1975
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 1979
    :goto_0
    return-void

    .line 1978
    :cond_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->jzrtp_SASVerified(I)V

    goto :goto_0
.end method
