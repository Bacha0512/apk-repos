.class public Lorg/abtollc/voip/SipService;
.super Ljava/lang/Object;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/voip/SipService$PjsipModule;
    }
.end annotation


# static fields
.field public static final BITMASK_IN:I = 0x2

.field public static final BITMASK_OUT:I = 0x1

.field private static DTMF_TONE_PAUSE_LENGTH:I = 0x0

.field private static DTMF_TONE_WAIT_LENGTH:I = 0x0

.field public static final INVALID_PLAYER:I = -0x1

.field public static final LOCAL_WIZARD_TAG:Ljava/lang/String; = "LOCAL"

.field private static final THIS_FILE:Ljava/lang/String; = "SipService"

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
.field public accId:[I

.field public created:Z

.field private dtmfDialtoneGenerators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/abtollc/voip/StreamDialtoneGenerator;",
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

.field public hasSipStack:Z

.field private localTcp6AccPjId:Ljava/lang/Integer;

.field private localTcpAccPjId:Ljava/lang/Integer;

.field private localTls6AccPjId:Ljava/lang/Integer;

.field private localTlsAccPjId:Ljava/lang/Integer;

.field private localUdp6AccPjId:Ljava/lang/Integer;

.field private localUdpAccPjId:Ljava/lang/Integer;

.field public logCallback:Lorg/abtollc/utils/Log;

.field public mediaManager:Lorg/abtollc/service/MediaManager;

.field private pjsipModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/abtollc/voip/SipService$PjsipModule;",
            ">;"
        }
    .end annotation
.end field

.field private playedCalls:Landroid/util/SparseIntArray;

.field public prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

.field private recordingFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public service:Lorg/abtollc/service/ABTOSipService;

.field private sipStackIsCorrupted:Z

.field private tasksTimer:Ljava/util/Timer;

.field public userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

.field public zrtpReceiver:Lorg/abtollc/voip/ZrtpStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x12c

    sput v0, Lorg/abtollc/voip/SipService;->DTMF_TONE_PAUSE_LENGTH:I

    .line 88
    const/16 v0, 0x7d0

    sput v0, Lorg/abtollc/voip/SipService;->DTMF_TONE_WAIT_LENGTH:I

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/abtollc/voip/SipService;->video_codecs:Ljava/util/ArrayList;

    .line 1195
    const/4 v0, 0x0

    sput-boolean v0, Lorg/abtollc/voip/SipService;->codecs_initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    .line 93
    iput-boolean v0, p0, Lorg/abtollc/voip/SipService;->hasSipStack:Z

    .line 94
    iput-boolean v0, p0, Lorg/abtollc/voip/SipService;->sipStackIsCorrupted:Z

    .line 100
    iput-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 101
    iput-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfTasks:Landroid/util/SparseArray;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    .line 2381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->recordingFiles:Landroid/util/SparseArray;

    .line 2510
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->playedCalls:Landroid/util/SparseIntArray;

    .line 2629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->pjsipModules:Ljava/util/Map;

    .line 120
    return-void
.end method

.method private buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "codec"    # Ljava/lang/String;
    .param p3, "prio"    # S

    .prologue
    .line 1263
    if-lez p3, :cond_0

    invoke-static {}, Lorg/abtollc/utils/Log;->getLogLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    const-string v0, ") - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_0
    return-void
.end method

.method private cleanPjsua()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 859
    const-string v2, "SipService"

    const-string v3, "Detroying..."

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-wide/16 v0, 0x1

    .line 863
    .local v0, "flags":J
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    const-wide/16 v0, 0x3

    .line 866
    :cond_0
    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsua;->csipsimple_destroy(J)I

    .line 867
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 868
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v2, :cond_1

    .line 869
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    invoke-virtual {v2}, Lorg/abtollc/voip/UAStateReceiver;->stopService()V

    .line 870
    iput-object v4, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    .line 873
    :cond_1
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v2, :cond_2

    .line 874
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v2}, Lorg/abtollc/service/MediaManager;->stopService()V

    .line 875
    iput-object v4, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    .line 878
    :cond_2
    invoke-static {}, Lorg/abtollc/utils/TimerWrapper;->destroy()V

    .line 880
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/abtollc/voip/SipService;->created:Z

    .line 881
    return-void
.end method

.method private createLocalAccount(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "transportId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 963
    if-nez p1, :cond_0

    .line 964
    const/4 v1, 0x0

    .line 968
    :goto_0
    return-object v1

    .line 966
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 967
    .local v0, "p_acc_id":[I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    invoke-static {v1, v2, v0}, Lorg/abtollc/jni/pjsua;->acc_add_local(II[I)I

    .line 968
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private createLocalTransportAndAccount(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;
    .locals 2
    .param p1, "type"    # Lorg/abtollc/jni/pjsip_transport_type_e;
    .param p2, "port"    # I
    .param p3, "errorMsg"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-direct {p0, p1, p2, p3}, Lorg/abtollc/voip/SipService;->createTransport(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;

    move-result-object v0

    .line 974
    .local v0, "transportId":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lorg/abtollc/voip/SipService;->createLocalAccount(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private createTransport(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;
    .locals 18
    .param p1, "type"    # Lorg/abtollc/jni/pjsip_transport_type_e;
    .param p2, "port"    # I
    .param p3, "msg"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 890
    new-instance v4, Lorg/abtollc/jni/pjsua_transport_config;

    invoke-direct {v4}, Lorg/abtollc/jni/pjsua_transport_config;-><init>()V

    .line 891
    .local v4, "cfg":Lorg/abtollc/jni/pjsua_transport_config;
    const/4 v14, 0x1

    new-array v11, v14, [I

    .line 893
    .local v11, "tId":[I
    invoke-static {v4}, Lorg/abtollc/jni/pjsua;->transport_config_default(Lorg/abtollc/jni/pjsua_transport_config;)V

    .line 894
    move/from16 v0, p2

    int-to-long v14, v0

    invoke-virtual {v4, v14, v15}, Lorg/abtollc/jni/pjsua_transport_config;->setPort(J)V

    .line 896
    sget-object v14, Lorg/abtollc/jni/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/abtollc/jni/pjsip_transport_type_e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/abtollc/jni/pjsip_transport_type_e;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 897
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_transport_config;->getTls_setting()Lorg/abtollc/jni/pjsip_tls_setting;

    move-result-object v13

    .line 907
    .local v13, "tlsSetting":Lorg/abtollc/jni/pjsip_tls_setting;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v15, "ca_list_file"

    invoke-virtual {v14, v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "caListFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 909
    invoke-static {v2}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/abtollc/jni/pjsip_tls_setting;->setCa_list_file(Lorg/abtollc/jni/pj_str_t;)V

    .line 912
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v15, "cert_file"

    invoke-virtual {v14, v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 913
    .local v3, "certFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 914
    invoke-static {v3}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/abtollc/jni/pjsip_tls_setting;->setCert_file(Lorg/abtollc/jni/pj_str_t;)V

    .line 917
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v15, "privkey_file"

    invoke-virtual {v14, v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 919
    .local v8, "privKey":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 920
    invoke-static {v8}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/abtollc/jni/pjsip_tls_setting;->setPrivkey_file(Lorg/abtollc/jni/pj_str_t;)V

    .line 923
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v15, "tls_password"

    invoke-virtual {v14, v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 924
    .local v12, "tlsPwd":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 925
    invoke-static {v12}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/abtollc/jni/pjsip_tls_setting;->setPassword(Lorg/abtollc/jni/pj_str_t;)V

    .line 928
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v15, "tls_verify_client"

    invoke-virtual {v14, v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    .line 929
    .local v5, "checkClient":Z
    if-eqz v5, :cond_7

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v13, v14}, Lorg/abtollc/jni/pjsip_tls_setting;->setVerify_client(I)V

    .line 931
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v14}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTLSMethod()I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/abtollc/jni/pjsip_tls_setting;->setMethod(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v15, "tls_verify_server"

    invoke-virtual {v14, v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v6

    .line 933
    .local v6, "checkServer":Z
    if-eqz v6, :cond_8

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v13, v14}, Lorg/abtollc/jni/pjsip_tls_setting;->setVerify_server(I)V

    .line 935
    invoke-virtual {v4, v13}, Lorg/abtollc/jni/pjsua_transport_config;->setTls_setting(Lorg/abtollc/jni/pjsip_tls_setting;)V

    .line 939
    .end local v2    # "caListFile":Ljava/lang/String;
    .end local v3    # "certFile":Ljava/lang/String;
    .end local v5    # "checkClient":Z
    .end local v6    # "checkServer":Z
    .end local v8    # "privKey":Ljava/lang/String;
    .end local v12    # "tlsPwd":Ljava/lang/String;
    .end local v13    # "tlsSetting":Lorg/abtollc/jni/pjsip_tls_setting;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v15, "enable_qos"

    invoke-virtual {v14, v15}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 940
    const-string v14, "SipService"

    const-string v15, "Activate qos for this transport"

    invoke-static {v14, v15}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-virtual {v4}, Lorg/abtollc/jni/pjsua_transport_config;->getQos_params()Lorg/abtollc/jni/pj_qos_params;

    move-result-object v9

    .line 942
    .local v9, "qosParam":Lorg/abtollc/jni/pj_qos_params;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v14}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getDSCPVal()I

    move-result v14

    int-to-short v14, v14

    invoke-virtual {v9, v14}, Lorg/abtollc/jni/pj_qos_params;->setDscp_val(S)V

    .line 943
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lorg/abtollc/jni/pj_qos_params;->setFlags(S)V

    .line 944
    invoke-virtual {v4, v9}, Lorg/abtollc/jni/pjsua_transport_config;->setQos_params(Lorg/abtollc/jni/pj_qos_params;)V

    .line 947
    .end local v9    # "qosParam":Lorg/abtollc/jni/pj_qos_params;
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v4, v11}, Lorg/abtollc/jni/pjsua;->transport_create(Lorg/abtollc/jni/pjsip_transport_type_e;Lorg/abtollc/jni/pjsua_transport_config;[I)I

    move-result v10

    .line 948
    .local v10, "status":I
    sget v14, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v10, v14, :cond_9

    .line 949
    invoke-static {v10}, Lorg/abtollc/jni/pjsua;->get_error_message(I)Lorg/abtollc/jni/pj_str_t;

    move-result-object v14

    invoke-static {v14}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v7

    .line 951
    .local v7, "errorMsg":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to create transport "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string v14, "SipService"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const v14, 0x1d522

    if-ne v10, v14, :cond_6

    .line 954
    const/4 v14, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const-string v16, "Another application is currently using SIP port! Can\'t start !!!"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_6
    const/4 v14, 0x0

    .line 959
    .end local v7    # "errorMsg":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 929
    .end local v10    # "status":I
    .restart local v2    # "caListFile":Ljava/lang/String;
    .restart local v3    # "certFile":Ljava/lang/String;
    .restart local v5    # "checkClient":Z
    .restart local v8    # "privKey":Ljava/lang/String;
    .restart local v12    # "tlsPwd":Ljava/lang/String;
    .restart local v13    # "tlsSetting":Lorg/abtollc/jni/pjsip_tls_setting;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 933
    .restart local v6    # "checkServer":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 959
    .end local v2    # "caListFile":Ljava/lang/String;
    .end local v3    # "certFile":Ljava/lang/String;
    .end local v5    # "checkClient":Z
    .end local v6    # "checkServer":Z
    .end local v8    # "privKey":Ljava/lang/String;
    .end local v12    # "tlsPwd":Ljava/lang/String;
    .end local v13    # "tlsSetting":Lorg/abtollc/jni/pjsip_tls_setting;
    .restart local v10    # "status":I
    :cond_9
    const/4 v14, 0x0

    aget v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_2
.end method

.method private getAvailablePort(Ljava/lang/Integer;ZLjava/lang/String;)Z
    .locals 8
    .param p1, "port"    # Ljava/lang/Integer;
    .param p2, "isUDP"    # Z
    .param p3, "portPreference"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "result":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    .line 191
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "data":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v4, "init_state"

    sget-object v5, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->INFO:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    invoke-virtual {v5}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v4, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v4, v7, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 195
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lorg/abtollc/voip/SipService;->isPortAvailable(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "data":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v4, "init_state"

    sget-object v5, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->WARNING:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 198
    invoke-virtual {v5}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v5

    .line 197
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v4, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not available, will try next port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v4, v7, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "data":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v4, "init_state"

    sget-object v5, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->INFO:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 204
    invoke-virtual {v5}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v5

    .line 203
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v4, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find available port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v4, v7, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 208
    const/4 v2, 0x1

    move v3, v2

    .line 214
    .end local v1    # "i":I
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_1
    return v3

    .line 213
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    iget-object v4, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 214
    .restart local v3    # "result":I
    goto :goto_1
.end method

.method private getNameservers()[Lorg/abtollc/jni/pj_str_t;
    .locals 13

    .prologue
    .line 2301
    const/4 v8, 0x0

    .line 2303
    .local v8, "nameservers":[Lorg/abtollc/jni/pj_str_t;
    iget-object v10, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v10}, Lorg/abtollc/utils/PreferencesProviderWrapper;->enableDNSSRV()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2304
    iget-object v10, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v11, "override_nameserver"

    invoke-virtual {v10, v11}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2305
    .local v9, "prefsDNS":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2306
    const-string v6, "[ \\[\\]]"

    .line 2307
    .local v6, "ipv6Escape":Ljava/lang/String;
    const-string v5, "^\\d+(\\.\\d+){3}$"

    .line 2308
    .local v5, "ipv4Matcher":Ljava/lang/String;
    const-string v7, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 2310
    .local v7, "ipv6Matcher":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    .local v2, "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2312
    .local v3, "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v10, 0x2

    if-gt v4, v10, :cond_3

    .line 2313
    iget-object v10, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2314
    .local v0, "dnsName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2315
    const-string v10, ""

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2317
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2318
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2320
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2321
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2312
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2327
    .end local v0    # "dnsName":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 2330
    move-object v1, v3

    .line 2335
    .local v1, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 2338
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/abtollc/jni/pj_str_t;

    .end local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    const/4 v10, 0x0

    const-string v11, "127.0.0.1"

    invoke-static {v11}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v11

    aput-object v11, v8, v10

    .line 2349
    .end local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "ipv4Matcher":Ljava/lang/String;
    .end local v6    # "ipv6Escape":Ljava/lang/String;
    .end local v7    # "ipv6Matcher":Ljava/lang/String;
    .end local v9    # "prefsDNS":Ljava/lang/String;
    .restart local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    :cond_4
    :goto_2
    return-object v8

    .line 2332
    .restart local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v5    # "ipv4Matcher":Ljava/lang/String;
    .restart local v6    # "ipv6Escape":Ljava/lang/String;
    .restart local v7    # "ipv6Matcher":Ljava/lang/String;
    .restart local v9    # "prefsDNS":Ljava/lang/String;
    :cond_5
    move-object v1, v2

    .restart local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 2339
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 2340
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/abtollc/jni/pj_str_t;

    .end local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    .restart local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    goto :goto_2

    .line 2342
    :cond_7
    const/4 v10, 0x2

    new-array v8, v10, [Lorg/abtollc/jni/pj_str_t;

    .end local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    const/4 v11, 0x1

    const/4 v10, 0x1

    .line 2343
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    .restart local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    goto :goto_2

    .line 2346
    .end local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "ipv4Matcher":Ljava/lang/String;
    .end local v6    # "ipv6Escape":Ljava/lang/String;
    .end local v7    # "ipv6Matcher":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/abtollc/jni/pj_str_t;

    .end local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    const/4 v10, 0x0

    invoke-static {v9}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v11

    aput-object v11, v8, v10

    .restart local v8    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    goto :goto_2
.end method

.method private getOnlineForStatus(Lorg/abtollc/api/SipManager$PresenceStatus;)I
    .locals 1
    .param p1, "presence"    # Lorg/abtollc/api/SipManager$PresenceStatus;

    .prologue
    .line 2029
    sget-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->OFFLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRecordFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 2491
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-static {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getRecordsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 2492
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 2493
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2494
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/abtollc/voip/SipService;->sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yy-MM-dd_kkmmss"

    .line 2495
    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2496
    .local v2, "file":Ljava/io/File;
    const-string v3, "SipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getUseSrtp()Lorg/abtollc/jni/pjmedia_srtp_use;
    .locals 4

    .prologue
    .line 2354
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "use_srtp"

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2355
    .local v1, "use_srtp":I
    if-ltz v1, :cond_0

    .line 2356
    invoke-static {v1}, Lorg/abtollc/jni/pjmedia_srtp_use;->swigToEnum(I)Lorg/abtollc/jni/pjmedia_srtp_use;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2361
    .end local v1    # "use_srtp":I
    :goto_0
    return-object v2

    .line 2358
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SipService"

    const-string v3, "Transport port not well formated"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    sget-object v2, Lorg/abtollc/jni/pjmedia_srtp_use;->PJMEDIA_SRTP_DISABLED:Lorg/abtollc/jni/pjmedia_srtp_use;

    goto :goto_0
.end method

.method private initCodecs()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1218
    sget-object v4, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1219
    :try_start_0
    sget-boolean v3, Lorg/abtollc/voip/SipService;->codecs_initialized:Z

    if-nez v3, :cond_2

    .line 1223
    invoke-static {}, Lorg/abtollc/jni/pjsua;->codecs_get_nbr()I

    move-result v2

    .line 1224
    .local v2, "nbrCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1225
    invoke-static {v1}, Lorg/abtollc/jni/pjsua;->codecs_get_id(I)Lorg/abtollc/jni/pj_str_t;

    move-result-object v3

    invoke-static {v3}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "codecId":Ljava/lang/String;
    sget-object v3, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    const-string v3, "SipService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added codec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1231
    .end local v0    # "codecId":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    sget-object v5, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setCodecList(Ljava/util/List;)V

    .line 1234
    invoke-static {}, Lorg/abtollc/jni/pjsua;->codecs_vid_get_nbr()I

    move-result v2

    .line 1235
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 1236
    invoke-static {v1}, Lorg/abtollc/jni/pjsua;->codecs_vid_get_id(I)Lorg/abtollc/jni/pj_str_t;

    move-result-object v3

    invoke-static {v3}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .restart local v0    # "codecId":Ljava/lang/String;
    sget-object v3, Lorg/abtollc/voip/SipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v3, "SipService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added video codec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1241
    .end local v0    # "codecId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    sget-object v5, Lorg/abtollc/voip/SipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setVideoCodecList(Ljava/util/List;)V

    .line 1243
    const/4 v3, 0x1

    sput-boolean v3, Lorg/abtollc/voip/SipService;->codecs_initialized:Z

    .line 1245
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "cap_tls"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setLibCapability(Ljava/lang/String;Z)V

    .line 1246
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "cap_srtp"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setLibCapability(Ljava/lang/String;Z)V

    .line 1248
    .end local v1    # "i":I
    .end local v2    # "nbrCodecs":I
    :cond_2
    monitor-exit v4

    .line 1250
    return-void

    .line 1248
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
    .line 2633
    new-instance v1, Lorg/abtollc/voip/reghandler/RegHandlerModule;

    invoke-direct {v1}, Lorg/abtollc/voip/reghandler/RegHandlerModule;-><init>()V

    .line 2634
    .local v1, "rModule":Lorg/abtollc/voip/SipService$PjsipModule;
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->pjsipModules:Ljava/util/Map;

    const-class v3, Lorg/abtollc/voip/reghandler/RegHandlerModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2636
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->pjsipModules:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/voip/SipService$PjsipModule;

    .line 2637
    .local v0, "mod":Lorg/abtollc/voip/SipService$PjsipModule;
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-interface {v0, v3}, Lorg/abtollc/voip/SipService$PjsipModule;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 2639
    .end local v0    # "mod":Lorg/abtollc/voip/SipService$PjsipModule;
    :cond_0
    return-void
.end method

.method private isPortAvailable(IZ)Z
    .locals 7
    .param p1, "port"    # I
    .param p2, "isUDP"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 153
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v4

    .line 156
    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, "ss":Ljava/net/ServerSocket;
    const/4 v0, 0x0

    .line 160
    .local v0, "ds":Ljava/net/DatagramSocket;
    if-nez p2, :cond_3

    .line 161
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, p1}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .local v3, "ss":Ljava/net/ServerSocket;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 170
    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    :goto_1
    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 174
    :cond_2
    if-eqz v2, :cond_0

    .line 176
    :try_start_2
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v5

    goto :goto_0

    .line 164
    :cond_3
    :try_start_3
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p1}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .local v1, "ds":Ljava/net/DatagramSocket;
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v1, v6}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v1

    .end local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    goto :goto_1

    .line 168
    :catch_1
    move-exception v4

    .line 170
    :goto_2
    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 174
    :cond_4
    if-eqz v2, :cond_5

    .line 176
    :try_start_5
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_3
    move v4, v5

    .line 182
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v0, :cond_6

    .line 171
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 174
    :cond_6
    if-eqz v2, :cond_7

    .line 176
    :try_start_6
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 179
    :cond_7
    :goto_5
    throw v4

    .line 177
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_5

    .line 170
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .restart local v3    # "ss":Ljava/net/ServerSocket;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    goto :goto_4

    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .restart local v1    # "ds":Ljava/net/DatagramSocket;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    goto :goto_4

    .line 168
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .restart local v3    # "ss":Ljava/net/ServerSocket;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    goto :goto_2

    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .restart local v1    # "ds":Ljava/net/DatagramSocket;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    goto :goto_2
.end method

.method private loginAccount()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 781
    const-wide/16 v6, -0x1

    .line 783
    .local v6, "acId":J
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 786
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 788
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 789
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 790
    new-instance v0, Lorg/abtollc/api/SipProfile;

    invoke-direct {v0, v8}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    iget-wide v6, v0, Lorg/abtollc/api/SipProfile;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    sget-object v1, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v6, v7, v1}, Lorg/abtollc/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lorg/abtollc/api/SipProfile;

    move-result-object v10

    .line 801
    .local v10, "currentAccount":Lorg/abtollc/api/SipProfile;
    const/4 v12, 0x0

    .line 803
    .local v12, "isNetworkOnline":Z
    :try_start_1
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 804
    .local v9, "cm":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 805
    .local v13, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v1, :cond_4

    .line 806
    const/4 v12, 0x1

    .line 818
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v13    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    iget-boolean v0, v10, Lorg/abtollc/api/SipProfile;->active:Z

    if-eqz v0, :cond_3

    if-eqz v12, :cond_3

    .line 821
    :try_start_2
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->addAllAccounts()V
    :try_end_2
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_2 .. :try_end_2} :catch_2

    .line 826
    :cond_3
    :goto_2
    return-void

    .line 792
    .end local v10    # "currentAccount":Lorg/abtollc/api/SipProfile;
    .end local v12    # "isNetworkOnline":Z
    :catch_0
    move-exception v11

    .line 793
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "Login Screen"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v11}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 808
    .restart local v9    # "cm":Landroid/net/ConnectivityManager;
    .restart local v10    # "currentAccount":Lorg/abtollc/api/SipProfile;
    .restart local v12    # "isNetworkOnline":Z
    .restart local v13    # "netInfo":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v9, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 809
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ne v0, v1, :cond_2

    .line 810
    const/4 v12, 0x1

    goto :goto_1

    .line 812
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v13    # "netInfo":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v11

    .line 813
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    const/4 v12, 0x0

    goto :goto_1

    .line 822
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 823
    .local v11, "e":Lorg/abtollc/service/ABTOSipService$SameThreadException;
    invoke-virtual {v11}, Lorg/abtollc/service/ABTOSipService$SameThreadException;->printStackTrace()V

    goto :goto_2
.end method

.method public static pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;
    .locals 4
    .param p0, "pjStr"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 2598
    if-eqz p0, :cond_0

    .line 2600
    :try_start_0
    invoke-virtual {p0}, Lorg/abtollc/jni/pj_str_t;->getSlen()I

    move-result v1

    .line 2602
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 2603
    invoke-static {p0}, Lorg/abtollc/jni/pjsua;->pj_ptr_to_string(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2619
    .end local v1    # "len":I
    :goto_0
    return-object v2

    .line 2616
    :catch_0
    move-exception v0

    .line 2617
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "SipService"

    const-string v3, "Impossible to retrieve string from pjsip "

    invoke-static {v2, v3, v0}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2619
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static resetCodecs()V
    .locals 2

    .prologue
    .line 1201
    sget-object v1, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1202
    :try_start_0
    sget-boolean v0, Lorg/abtollc/voip/SipService;->codecs_initialized:Z

    if-eqz v0, :cond_0

    .line 1203
    sget-object v0, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1204
    sget-object v0, Lorg/abtollc/voip/SipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1205
    const/4 v0, 0x0

    sput-boolean v0, Lorg/abtollc/voip/SipService;->codecs_initialized:Z

    .line 1207
    :cond_0
    monitor-exit v1

    .line 1208
    return-void

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 2503
    move-object v0, p1

    .line 2504
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "[\\.\\\\<>:; \"\'\\*]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2505
    return-object v0
.end method

.method private sendDtmf(ILjava/lang/String;)I
    .locals 12
    .param p1, "callId"    # I
    .param p2, "keyPressed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1603
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1604
    sget v7, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    .line 1693
    :cond_0
    :goto_0
    return v7

    .line 1607
    :cond_1
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->call_is_active(I)I

    move-result v9

    sget v10, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    if-eq v9, v10, :cond_2

    .line 1608
    const/4 v7, -0x1

    goto :goto_0

    .line 1611
    :cond_2
    move-object v1, p2

    .line 1612
    .local v1, "dtmfToDial":Ljava/lang/String;
    const-string v6, ""

    .line 1613
    .local v6, "remainingDtmf":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1614
    .local v4, "pauseBeforeRemaining":I
    const/4 v2, 0x0

    .line 1615
    .local v2, "foundSeparator":Z
    const-string v9, ","

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, ";"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1616
    :cond_3
    const-string v1, ""

    .line 1617
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 1618
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1619
    .local v0, "c":C
    if-nez v2, :cond_7

    .line 1620
    const/16 v9, 0x2c

    if-eq v0, v9, :cond_4

    const/16 v9, 0x3b

    if-ne v0, v9, :cond_6

    .line 1621
    :cond_4
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_5

    sget v9, Lorg/abtollc/voip/SipService;->DTMF_TONE_PAUSE_LENGTH:I

    :goto_2
    add-int/2addr v4, v9

    .line 1622
    const/4 v2, 0x1

    .line 1617
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1621
    :cond_5
    sget v9, Lorg/abtollc/voip/SipService;->DTMF_TONE_WAIT_LENGTH:I

    goto :goto_2

    .line 1624
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1627
    :cond_7
    const/16 v9, 0x2c

    if-eq v0, v9, :cond_8

    const/16 v9, 0x3b

    if-ne v0, v9, :cond_a

    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1628
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_9

    sget v9, Lorg/abtollc/voip/SipService;->DTMF_TONE_PAUSE_LENGTH:I

    :goto_4
    add-int/2addr v4, v9

    goto :goto_3

    :cond_9
    sget v9, Lorg/abtollc/voip/SipService;->DTMF_TONE_WAIT_LENGTH:I

    goto :goto_4

    .line 1630
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1637
    .end local v0    # "c":C
    .end local v3    # "i":I
    :cond_b
    const/4 v7, 0x0

    .line 1638
    .local v7, "res":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1639
    invoke-static {v1}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v5

    .line 1640
    .local v5, "pjKeyPressed":Lorg/abtollc/jni/pj_str_t;
    const/4 v7, -0x1

    .line 1641
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useSipInfoDtmf()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1642
    invoke-static {p1, v5}, Lorg/abtollc/jni/pjsua;->send_dtmf_info(ILorg/abtollc/jni/pj_str_t;)I

    move-result v7

    .line 1643
    const-string v9, "SipService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Has been sent DTMF INFO : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    .end local v5    # "pjKeyPressed":Lorg/abtollc/jni/pj_str_t;
    :cond_c
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1664
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1666
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->tasksTimer:Ljava/util/Timer;

    if-nez v9, :cond_d

    .line 1667
    new-instance v9, Ljava/util/Timer;

    const-string v10, "com.csipsimple.PjSipServiceTasks"

    invoke-direct {v9, v10}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/abtollc/voip/SipService;->tasksTimer:Ljava/util/Timer;

    .line 1669
    :cond_d
    new-instance v8, Lorg/abtollc/voip/SipService$1;

    invoke-direct {v8, p0, p1}, Lorg/abtollc/voip/SipService$1;-><init>(Lorg/abtollc/voip/SipService;I)V

    .line 1681
    .local v8, "tt":Ljava/util/TimerTask;
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1682
    const-string v9, "SipService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Schedule DTMF "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->tasksTimer:Ljava/util/Timer;

    int-to-long v10, v4

    invoke-virtual {v9, v8, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 1645
    .end local v8    # "tt":Ljava/util/TimerTask;
    .restart local v5    # "pjKeyPressed":Lorg/abtollc/jni/pj_str_t;
    :cond_e
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lorg/abtollc/utils/PreferencesProviderWrapper;->forceDtmfInBand()Z

    move-result v9

    if-nez v9, :cond_f

    .line 1647
    invoke-static {p1, v5}, Lorg/abtollc/jni/pjsua;->call_dial_dtmf(ILorg/abtollc/jni/pj_str_t;)I

    move-result v7

    .line 1648
    const-string v9, "SipService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Has been sent in RTP DTMF : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :cond_f
    sget v9, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    if-eq v7, v9, :cond_c

    iget-object v9, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lorg/abtollc/utils/PreferencesProviderWrapper;->forceDtmfRTP()Z

    move-result v9

    if-nez v9, :cond_c

    .line 1653
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_10

    .line 1654
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    new-instance v10, Lorg/abtollc/voip/StreamDialtoneGenerator;

    invoke-direct {v10, p1}, Lorg/abtollc/voip/StreamDialtoneGenerator;-><init>(I)V

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1656
    :cond_10
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/abtollc/voip/StreamDialtoneGenerator;

    invoke-virtual {v9, v1}, Lorg/abtollc/voip/StreamDialtoneGenerator;->sendPjMediaDialTone(Ljava/lang/String;)I

    move-result v7

    .line 1657
    const-string v9, "SipService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Has been sent DTMF analogic : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1685
    .end local v5    # "pjKeyPressed":Lorg/abtollc/jni/pj_str_t;
    :cond_11
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 1686
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1688
    :cond_12
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1689
    iget-object v9, p0, Lorg/abtollc/voip/SipService;->dtmfTasks:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private setCodecsPriorities()V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1277
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/ConnectivityManager;

    .line 1279
    .local v20, "cm":Landroid/net/ConnectivityManager;
    sget-object v34, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v34

    .line 1280
    :try_start_0
    sget-boolean v4, Lorg/abtollc/voip/SipService;->codecs_initialized:Z

    if-eqz v4, :cond_8

    .line 1281
    invoke-virtual/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v30

    .line 1282
    .local v30, "ni":Landroid/net/NetworkInfo;
    if-eqz v30, :cond_8

    .line 1284
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    .local v19, "audioSb":Ljava/lang/StringBuilder;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 1286
    .local v32, "videoSb":Ljava/lang/StringBuilder;
    const-string v4, "Audio codecs : "

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const-string v4, "Video codecs : "

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 1290
    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-static {v5, v6}, Lorg/abtollc/api/SipConfigManager;->getBandTypeKey(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wb"

    .line 1289
    invoke-virtual {v4, v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1292
    .local v25, "currentBandType":Ljava/lang/String;
    sget-object v35, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1294
    :try_start_1
    sget-object v4, Lorg/abtollc/voip/SipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1295
    .local v21, "codec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v6, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v18

    .line 1296
    .local v18, "aPrio":S
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/voip/SipService;->buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V

    .line 1297
    invoke-static/range {v21 .. v21}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v23

    .line 1298
    .local v23, "codecStr":Lorg/abtollc/jni/pj_str_t;
    if-ltz v18, :cond_1

    .line 1299
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsua;->codec_set_priority(Lorg/abtollc/jni/pj_str_t;S)I

    .line 1302
    :cond_1
    const-string v5, "fpp"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lorg/abtollc/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1304
    .local v22, "codecKey":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1306
    .local v26, "frmPerPacket":Ljava/lang/Integer;
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 1307
    const-string v5, "SipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set codec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lorg/abtollc/jni/pjsua;->codec_set_frames_per_packet(Lorg/abtollc/jni/pj_str_t;I)I

    goto :goto_0

    .line 1343
    .end local v18    # "aPrio":S
    .end local v21    # "codec":Ljava/lang/String;
    .end local v22    # "codecKey":Ljava/lang/String;
    .end local v23    # "codecStr":Lorg/abtollc/jni/pj_str_t;
    .end local v26    # "frmPerPacket":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1350
    .end local v19    # "audioSb":Ljava/lang/StringBuilder;
    .end local v25    # "currentBandType":Ljava/lang/String;
    .end local v30    # "ni":Landroid/net/NetworkInfo;
    .end local v32    # "videoSb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v4

    monitor-exit v34
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1312
    .restart local v19    # "audioSb":Ljava/lang/StringBuilder;
    .restart local v25    # "currentBandType":Ljava/lang/String;
    .restart local v30    # "ni":Landroid/net/NetworkInfo;
    .restart local v32    # "videoSb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    sget-object v4, Lorg/abtollc/voip/SipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_3
    :goto_1
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1313
    .restart local v21    # "codec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v18

    .line 1314
    .restart local v18    # "aPrio":S
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/voip/SipService;->buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V

    .line 1315
    if-ltz v18, :cond_4

    .line 1316
    invoke-static/range {v21 .. v21}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v4

    move/from16 v0, v18

    invoke-static {v4, v0}, Lorg/abtollc/jni/pjsua;->vid_codec_set_priority(Lorg/abtollc/jni/pj_str_t;S)I

    .line 1318
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "video_capture_size"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1319
    .local v33, "videoSize":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "0x0@0"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1320
    :cond_5
    invoke-static {}, Lorg/abtollc/utils/video/VideoUtilsWrapper;->getInstance()Lorg/abtollc/utils/video/VideoUtilsWrapper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    .line 1321
    invoke-virtual {v4, v5}, Lorg/abtollc/utils/video/VideoUtilsWrapper;->getVideoCaptureDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v24

    .line 1322
    .local v24, "cps":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1323
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;

    iget-object v4, v4, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    invoke-virtual {v4}, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->toPreferenceValue()Ljava/lang/String;

    move-result-object v33

    .line 1326
    .end local v24    # "cps":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    :cond_6
    new-instance v31, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;-><init>(Ljava/lang/String;)V

    .line 1327
    .local v31, "videoCap":Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    const-string v4, "H264"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "codec_h264_profile"

    const/16 v6, 0x42

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v29

    .line 1329
    .local v29, "h264profile":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "codec_h264_level"

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v28

    .line 1330
    .local v28, "h264level":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "codec_h264_bitrate"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v27

    .line 1332
    .local v27, "h264bitrate":I
    if-lez v29, :cond_3

    .line 1333
    move/from16 v0, v29

    int-to-long v4, v0

    move/from16 v0, v28

    int-to-long v6, v0

    move-object/from16 v0, v31

    iget v8, v0, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->width:I

    int-to-long v8, v8

    move-object/from16 v0, v31

    iget v10, v0, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->height:I

    int-to-long v10, v10

    move-object/from16 v0, v31

    iget v12, v0, Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->fps:I

    int-to-long v12, v12

    move/from16 v0, v27

    int-to-long v14, v0

    const-wide/16 v16, 0x0

    invoke-static/range {v4 .. v17}, Lorg/abtollc/jni/pjsua;->codec_h264_set_profile(JJJJJJJ)I

    .line 1338
    const-string v4, "SipService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set h264 profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1343
    .end local v18    # "aPrio":S
    .end local v21    # "codec":Ljava/lang/String;
    .end local v27    # "h264bitrate":I
    .end local v28    # "h264level":I
    .end local v29    # "h264profile":I
    .end local v31    # "videoCap":Lorg/abtollc/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    .end local v33    # "videoSize":Ljava/lang/String;
    :cond_7
    monitor-exit v35
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1345
    :try_start_4
    const-string v4, "SipService"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v4, "SipService"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    .end local v19    # "audioSb":Ljava/lang/StringBuilder;
    .end local v25    # "currentBandType":Ljava/lang/String;
    .end local v30    # "ni":Landroid/net/NetworkInfo;
    .end local v32    # "videoSb":Ljava/lang/StringBuilder;
    :cond_8
    monitor-exit v34
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1351
    return-void
.end method


# virtual methods
.method public addAccount(Lorg/abtollc/api/SipProfile;)I
    .locals 12
    .param p1, "profile"    # Lorg/abtollc/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 980
    sget v5, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    .line 981
    .local v5, "status":I
    iget-boolean v7, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v7, :cond_0

    .line 982
    const-string v7, "SipService"

    const-string v8, "SIP is not started here, nothing can be done"

    invoke-static {v7, v8}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 1086
    .end local v5    # "status":I
    .local v6, "status":I
    :goto_0
    return v6

    .line 986
    .end local v6    # "status":I
    .restart local v5    # "status":I
    :cond_0
    new-instance v0, Lorg/abtollc/voip/SipAccount;

    invoke-direct {v0, p1}, Lorg/abtollc/voip/SipAccount;-><init>(Lorg/abtollc/api/SipProfile;)V

    .line 988
    .local v0, "account":Lorg/abtollc/voip/SipAccount;
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0, v7}, Lorg/abtollc/voip/SipAccount;->applyExtraParams(Landroid/content/Context;)V

    .line 1001
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;

    move-result-object v1

    .line 1003
    .local v1, "currentAccountStatus":Lorg/abtollc/api/SipProfileState;
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->isAddedToStack()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1004
    iget-object v7, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v8, v0, Lorg/abtollc/voip/SipAccount;->css_cfg:Lorg/abtollc/jni/csipsimple_acc_config;

    invoke-static {v7, v8}, Lorg/abtollc/jni/pjsua;->csipsimple_set_acc_user_data(Lorg/abtollc/jni/pjsua_acc_config;Lorg/abtollc/jni/csipsimple_acc_config;)I

    .line 1005
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v7

    iget-object v8, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    invoke-static {v7, v8}, Lorg/abtollc/jni/pjsua;->acc_modify(ILorg/abtollc/jni/pjsua_acc_config;)I

    move-result v5

    .line 1006
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1007
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v7, "added_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1008
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v7}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v7}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v7

    sget-object v8, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v10, p1, Lorg/abtollc/api/SipProfile;->id:J

    .line 1009
    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1008
    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1011
    iget-object v7, v0, Lorg/abtollc/voip/SipAccount;->wizard:Ljava/lang/String;

    const-string v8, "LOCAL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1013
    sget v7, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v7, :cond_1

    .line 1014
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/abtollc/jni/pjsua;->acc_set_registration(II)I

    move-result v5

    .line 1015
    sget v7, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v7, :cond_1

    .line 1016
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/abtollc/jni/pjsua;->acc_set_online_status(II)I

    move-result v5

    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    move v6, v5

    .line 1086
    .end local v5    # "status":I
    .restart local v6    # "status":I
    goto :goto_0

    .line 1020
    .end local v6    # "status":I
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "status":I
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1021
    .local v3, "data":Landroid/os/Bundle;
    const-string v7, "acc_id"

    iget-object v8, v0, Lorg/abtollc/voip/SipAccount;->id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1022
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 1025
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lorg/abtollc/voip/SipService;->accId:[I

    .line 1057
    iget-object v7, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    iget-object v8, v0, Lorg/abtollc/voip/SipAccount;->css_cfg:Lorg/abtollc/jni/csipsimple_acc_config;

    invoke-static {v7, v8}, Lorg/abtollc/jni/pjsua;->csipsimple_set_acc_user_data(Lorg/abtollc/jni/pjsua_acc_config;Lorg/abtollc/jni/csipsimple_acc_config;)I

    .line 1058
    iget-object v7, v0, Lorg/abtollc/voip/SipAccount;->cfg:Lorg/abtollc/jni/pjsua_acc_config;

    sget v8, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    iget-object v9, p0, Lorg/abtollc/voip/SipService;->accId:[I

    invoke-static {v7, v8, v9}, Lorg/abtollc/jni/pjsua;->acc_add(Lorg/abtollc/jni/pjsua_acc_config;I[I)I

    move-result v5

    .line 1060
    iget-object v7, v0, Lorg/abtollc/voip/SipAccount;->wizard:Ljava/lang/String;

    const-string v8, "LOCAL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1061
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1062
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v7, "acc_id"

    iget-object v8, v0, Lorg/abtollc/voip/SipAccount;->id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1063
    sget v7, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v7, :cond_5

    .line 1064
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1074
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_4
    :goto_2
    sget v7, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v7, :cond_1

    .line 1075
    new-instance v4, Lorg/abtollc/api/SipProfileState;

    invoke-direct {v4, p1}, Lorg/abtollc/api/SipProfileState;-><init>(Lorg/abtollc/api/SipProfile;)V

    .line 1076
    .local v4, "ps":Lorg/abtollc/api/SipProfileState;
    invoke-virtual {v4, v5}, Lorg/abtollc/api/SipProfileState;->setAddedStatus(I)V

    .line 1077
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->accId:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v4, v7}, Lorg/abtollc/api/SipProfileState;->setAbsuaId(I)V

    .line 1078
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v7}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v7}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v7

    sget-object v8, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    iget-object v9, v0, Lorg/abtollc/voip/SipAccount;->id:Ljava/lang/Long;

    .line 1079
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1080
    invoke-virtual {v4}, Lorg/abtollc/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v9

    .line 1078
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1082
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->accId:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/abtollc/jni/pjsua;->acc_set_online_status(II)I

    goto/16 :goto_1

    .line 1066
    .end local v4    # "ps":Lorg/abtollc/api/SipProfileState;
    .restart local v3    # "data":Landroid/os/Bundle;
    :cond_5
    const-string v7, "status_code"

    const/16 v8, 0x1f4

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    const-string v7, "status_text"

    const-string v8, "Error adding local account"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v7, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v8, 0x6

    invoke-virtual {v7, v8, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method public addBuddy(Ljava/lang/String;)I
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1757
    iget-boolean v2, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v2, :cond_0

    .line 1758
    const/4 v2, -0x1

    .line 1769
    :goto_0
    return v2

    .line 1760
    :cond_0
    new-array v1, v3, [I

    .line 1762
    .local v1, "p_buddy_id":[I
    new-instance v0, Lorg/abtollc/jni/pjsua_buddy_config;

    invoke-direct {v0}, Lorg/abtollc/jni/pjsua_buddy_config;-><init>()V

    .line 1763
    .local v0, "buddy_cfg":Lorg/abtollc/jni/pjsua_buddy_config;
    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->buddy_config_default(Lorg/abtollc/jni/pjsua_buddy_config;)V

    .line 1764
    invoke-virtual {v0, v3}, Lorg/abtollc/jni/pjsua_buddy_config;->setSubscribe(I)V

    .line 1765
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/abtollc/jni/pjsua_buddy_config;->setUri(Lorg/abtollc/jni/pj_str_t;)V

    .line 1767
    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsua;->buddy_add(Lorg/abtollc/jni/pjsua_buddy_config;[I)I

    .line 1769
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
    .line 1894
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/abtollc/service/MediaManager;->adjustStreamVolume(III)V

    .line 1897
    :cond_0
    return-void
.end method

.method public callAnswer(IIZ)I
    .locals 9
    .param p1, "callId"    # I
    .param p2, "code"    # I
    .param p3, "withVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1366
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v0}, Lorg/abtollc/service/MediaManager;->stopRing()V

    .line 1372
    :cond_0
    new-instance v1, Lorg/abtollc/jni/pjsua_call_setting;

    invoke-direct {v1}, Lorg/abtollc/jni/pjsua_call_setting;-><init>()V

    .line 1373
    .local v1, "cs":Lorg/abtollc/jni/pjsua_call_setting;
    invoke-static {v1}, Lorg/abtollc/jni/pjsua;->call_setting_default(Lorg/abtollc/jni/pjsua_call_setting;)V

    .line 1374
    invoke-virtual {v1, v2, v3}, Lorg/abtollc/jni/pjsua_call_setting;->setAud_cnt(J)V

    .line 1375
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v5, "use_video"

    invoke-virtual {v0, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/abtollc/jni/pjsua_call_setting;->setVid_cnt(J)V

    .line 1376
    invoke-virtual {v1, v6, v7}, Lorg/abtollc/jni/pjsua_call_setting;->setFlag(J)V

    .line 1378
    div-int/lit8 v0, p2, 0xa

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    .line 1379
    int-to-long v2, p2

    move v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsua;->call_answer2(ILorg/abtollc/jni/pjsua_call_setting;JLorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_msg_data;)I

    move-result v0

    .line 1384
    .end local v1    # "cs":Lorg/abtollc/jni/pjsua_call_setting;
    :goto_1
    return v0

    .restart local v1    # "cs":Lorg/abtollc/jni/pjsua_call_setting;
    :cond_1
    move-wide v2, v6

    .line 1375
    goto :goto_0

    .line 1381
    :cond_2
    int-to-long v5, p2

    move v3, p1

    move-object v7, v4

    move-object v8, v4

    invoke-static/range {v3 .. v8}, Lorg/abtollc/jni/pjsua;->call_answer2(ILorg/abtollc/jni/pjsua_call_setting;JLorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_msg_data;)I

    move-result v0

    goto :goto_1

    .line 1384
    .end local v1    # "cs":Lorg/abtollc/jni/pjsua_call_setting;
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public callHangup(II)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1397
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    .line 1398
    int-to-long v0, p2

    invoke-static {p1, v0, v1, v2, v2}, Lorg/abtollc/jni/pjsua;->call_hangup(IJLorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_msg_data;)I

    move-result v0

    .line 1400
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
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1811
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    .line 1812
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/abtollc/jni/pjsua;->call_set_hold(ILorg/abtollc/jni/pjsua_msg_data;)I

    move-result v0

    .line 1814
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
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1818
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_1

    .line 1819
    if-eqz p2, :cond_0

    sget-object v0, Lorg/abtollc/jni/pjsua_call_flag;->PJSUA_CALL_UNHOLD:Lorg/abtollc/jni/pjsua_call_flag;

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_call_flag;->swigValue()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/abtollc/jni/pjsua;->call_reinvite(IJLorg/abtollc/jni/pjsua_msg_data;)I

    move-result v0

    .line 1822
    :goto_1
    return v0

    .line 1819
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1822
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
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1404
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    .line 1405
    invoke-static {p2}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/abtollc/jni/pjsua;->call_xfer(ILorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_msg_data;)I

    move-result v0

    .line 1407
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
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1411
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    .line 1412
    int-to-long v0, p3

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/abtollc/jni/pjsua;->call_xfer_replaces(IIJLorg/abtollc/jni/pjsua_msg_data;)I

    move-result v0

    .line 1414
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

    .line 2453
    iget-boolean v4, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v4, :cond_1

    .line 2467
    :cond_0
    :goto_0
    return v2

    .line 2457
    :cond_1
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->getCallInfo(I)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 2458
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 2462
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->getMediaStatus()I

    move-result v1

    .line 2463
    .local v1, "ms":I
    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    :cond_2
    move v2, v3

    .line 2467
    goto :goto_0
.end method

.method public confAdjustRxLevel(IF)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1880
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1881
    invoke-static {p1, p2}, Lorg/abtollc/jni/pjsua;->conf_adjust_rx_level(IF)I

    .line 1883
    :cond_0
    return-void
.end method

.method public confAdjustTxLevel(IF)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1874
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1875
    invoke-static {p1, p2}, Lorg/abtollc/jni/pjsua;->conf_adjust_tx_level(IF)I

    .line 1877
    :cond_0
    return-void
.end method

.method public createTransports()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x8

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local v0, "err_msg":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isUDPEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 677
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUDPTransportPort()I

    move-result v4

    .line 679
    .local v4, "udpPort":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "network_udp_transport_port"

    invoke-direct {p0, v5, v7, v8}, Lorg/abtollc/voip/SipService;->getAvailablePort(Ljava/lang/Integer;ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 680
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 681
    .local v1, "eventData":Landroid/os/Bundle;
    const-string v5, "init_state"

    sget-object v8, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->WARNING:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 682
    invoke-virtual {v8}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v8

    .line 681
    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    const-string v5, "message"

    const-string v8, "Available port for UDP is not found, will be setting the random port"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5, v9, v1}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 688
    .end local v1    # "eventData":Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUDPTransportPort()I

    move-result v4

    .line 690
    sget-object v5, Lorg/abtollc/jni/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP:Lorg/abtollc/jni/pjsip_transport_type_e;

    invoke-direct {p0, v5, v4, v0}, Lorg/abtollc/voip/SipService;->createLocalTransportAndAccount(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/voip/SipService;->localUdpAccPjId:Ljava/lang/Integer;

    .line 692
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->localUdpAccPjId:Ljava/lang/Integer;

    if-nez v5, :cond_1

    .line 693
    invoke-direct {p0}, Lorg/abtollc/voip/SipService;->cleanPjsua()V

    .line 694
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 695
    .restart local v1    # "eventData":Landroid/os/Bundle;
    const-string v5, "init_state"

    sget-object v7, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 696
    invoke-virtual {v7}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v7

    .line 695
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    const-string v5, "message"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating UDP transport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5, v9, v1}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    move v5, v6

    .line 776
    .end local v1    # "eventData":Landroid/os/Bundle;
    .end local v4    # "udpPort":I
    :goto_0
    return v5

    .line 702
    .restart local v4    # "udpPort":I
    :cond_1
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 703
    sget-object v5, Lorg/abtollc/jni/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP6:Lorg/abtollc/jni/pjsip_transport_type_e;

    if-nez v4, :cond_4

    .end local v4    # "udpPort":I
    :goto_1
    invoke-direct {p0, v5, v4, v0}, Lorg/abtollc/voip/SipService;->createLocalTransportAndAccount(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/voip/SipService;->localUdp6AccPjId:Ljava/lang/Integer;

    .line 709
    :cond_2
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isTCPEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 711
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTCPTransportPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 712
    .local v2, "tcpPort":Ljava/lang/Integer;
    const-string v5, "network_tcp_transport_port"

    invoke-direct {p0, v2, v6, v5}, Lorg/abtollc/voip/SipService;->getAvailablePort(Ljava/lang/Integer;ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 713
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 714
    .restart local v1    # "eventData":Landroid/os/Bundle;
    const-string v5, "init_state"

    sget-object v8, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->WARNING:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 715
    invoke-virtual {v8}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v8

    .line 714
    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    const-string v5, "message"

    const-string v8, "Available port for TCP is not found, will be setting the random port"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5, v9, v1}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 721
    .end local v1    # "eventData":Landroid/os/Bundle;
    :cond_3
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTCPTransportPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 723
    sget-object v5, Lorg/abtollc/jni/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP:Lorg/abtollc/jni/pjsip_transport_type_e;

    .line 724
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 723
    invoke-direct {p0, v5, v8, v0}, Lorg/abtollc/voip/SipService;->createLocalTransportAndAccount(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/voip/SipService;->localTcpAccPjId:Ljava/lang/Integer;

    .line 725
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->localTcpAccPjId:Ljava/lang/Integer;

    if-nez v5, :cond_5

    .line 726
    invoke-direct {p0}, Lorg/abtollc/voip/SipService;->cleanPjsua()V

    .line 727
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 728
    .restart local v1    # "eventData":Landroid/os/Bundle;
    const-string v5, "init_state"

    sget-object v7, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 729
    invoke-virtual {v7}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v7

    .line 728
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    const-string v5, "message"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating TCP transport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5, v9, v1}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    move v5, v6

    .line 732
    goto/16 :goto_0

    .line 703
    .end local v1    # "eventData":Landroid/os/Bundle;
    .end local v2    # "tcpPort":Ljava/lang/Integer;
    .restart local v4    # "udpPort":I
    :cond_4
    add-int/lit8 v4, v4, 0xa

    goto/16 :goto_1

    .line 736
    .end local v4    # "udpPort":I
    .restart local v2    # "tcpPort":Ljava/lang/Integer;
    :cond_5
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 737
    sget-object v8, Lorg/abtollc/jni/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP6:Lorg/abtollc/jni/pjsip_transport_type_e;

    .line 738
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 737
    :goto_2
    invoke-direct {p0, v8, v5, v0}, Lorg/abtollc/voip/SipService;->createLocalTransportAndAccount(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/voip/SipService;->localTcp6AccPjId:Ljava/lang/Integer;

    .line 743
    .end local v2    # "tcpPort":Ljava/lang/Integer;
    :cond_6
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isTLSEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 744
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTLSTransportPort()I

    move-result v3

    .line 746
    .local v3, "tlsPort":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "network_tls_transport_port"

    invoke-direct {p0, v5, v6, v8}, Lorg/abtollc/voip/SipService;->getAvailablePort(Ljava/lang/Integer;ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 747
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 748
    .restart local v1    # "eventData":Landroid/os/Bundle;
    const-string v5, "init_state"

    sget-object v8, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->WARNING:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 749
    invoke-virtual {v8}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v8

    .line 748
    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 750
    const-string v5, "message"

    const-string v8, "Available port is not found, will be setting the random port"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5, v9, v1}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 755
    .end local v1    # "eventData":Landroid/os/Bundle;
    :cond_7
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTLSTransportPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 757
    sget-object v5, Lorg/abtollc/jni/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/abtollc/jni/pjsip_transport_type_e;

    invoke-direct {p0, v5, v3, v0}, Lorg/abtollc/voip/SipService;->createLocalTransportAndAccount(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/voip/SipService;->localTlsAccPjId:Ljava/lang/Integer;

    .line 759
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->localTlsAccPjId:Ljava/lang/Integer;

    if-nez v5, :cond_9

    .line 760
    invoke-direct {p0}, Lorg/abtollc/voip/SipService;->cleanPjsua()V

    .line 761
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 762
    .restart local v1    # "eventData":Landroid/os/Bundle;
    const-string v5, "init_state"

    sget-object v7, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 763
    invoke-virtual {v7}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v7

    .line 762
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 764
    const-string v5, "message"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating TLS transport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5, v9, v1}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    move v5, v6

    .line 766
    goto/16 :goto_0

    .line 738
    .end local v1    # "eventData":Landroid/os/Bundle;
    .end local v3    # "tlsPort":I
    .restart local v2    # "tcpPort":Ljava/lang/Integer;
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    goto/16 :goto_2

    .line 770
    .end local v2    # "tcpPort":Ljava/lang/Integer;
    .restart local v3    # "tlsPort":I
    :cond_9
    iget-object v5, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 771
    sget-object v5, Lorg/abtollc/jni/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS6:Lorg/abtollc/jni/pjsip_transport_type_e;

    if-nez v3, :cond_b

    .end local v3    # "tlsPort":I
    :goto_3
    invoke-direct {p0, v5, v3, v0}, Lorg/abtollc/voip/SipService;->createLocalTransportAndAccount(Lorg/abtollc/jni/pjsip_transport_type_e;ILjava/lang/StringBuilder;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/voip/SipService;->localTls6AccPjId:Ljava/lang/Integer;

    :cond_a
    move v5, v7

    .line 776
    goto/16 :goto_0

    .line 771
    .restart local v3    # "tlsPort":I
    :cond_b
    add-int/lit8 v3, v3, 0xa

    goto :goto_3
.end method

.method public getAccountForPjsipId(I)Lorg/abtollc/api/SipProfile;
    .locals 4
    .param p1, "pjId"    # I

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->getAccountIdForPjsipId(I)J

    move-result-wide v0

    .line 2058
    .local v0, "accId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2059
    const/4 v2, 0x0

    .line 2061
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2, v0, v1}, Lorg/abtollc/service/ABTOSipService;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v2

    goto :goto_0
.end method

.method public getAccountIdForPjsipId(I)J
    .locals 11
    .param p1, "pjId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2033
    const-wide/16 v6, -0x1

    .line 2035
    .local v6, "accId":J
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2036
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2038
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2040
    :cond_0
    const-string v0, "absua_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2041
    .local v10, "pjsuaId":I
    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found pjsua "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " searching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    if-ne v10, p1, :cond_2

    .line 2043
    const-string v0, "account_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v6, v0

    .line 2050
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2053
    .end local v10    # "pjsuaId":I
    :cond_1
    :goto_1
    return-wide v6

    .line 2046
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

    .line 2047
    .end local v10    # "pjsuaId":I
    :catch_0
    move-exception v9

    .line 2048
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "SipService"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v9}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2050
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;
    .locals 1

    .prologue
    .line 2086
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    invoke-virtual {v0}, Lorg/abtollc/voip/UAStateReceiver;->getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 2089
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallInfo(I)Lorg/abtollc/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 1826
    iget-boolean v1, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v1, :cond_0

    .line 1827
    iget-object v1, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/abtollc/voip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1830
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCalls()[Lorg/abtollc/api/SipCallSession;
    .locals 2

    .prologue
    .line 1866
    iget-boolean v1, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v1, :cond_0

    .line 1867
    iget-object v1, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    invoke-virtual {v1}, Lorg/abtollc/voip/UAStateReceiver;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1870
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/abtollc/api/SipCallSession;

    goto :goto_0
.end method

.method public getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;
    .locals 9
    .param p1, "account"    # Lorg/abtollc/api/SipProfile;

    .prologue
    const/4 v2, 0x0

    .line 1169
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-object v2

    .line 1172
    :cond_1
    iget-wide v0, p1, Lorg/abtollc/api/SipProfile;->id:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1175
    new-instance v6, Lorg/abtollc/api/SipProfileState;

    invoke-direct {v6, p1}, Lorg/abtollc/api/SipProfileState;-><init>(Lorg/abtollc/api/SipProfile;)V

    .line 1176
    .local v6, "accountInfo":Lorg/abtollc/api/SipProfileState;
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v4, p1, Lorg/abtollc/api/SipProfile;->id:J

    .line 1177
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1176
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1178
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1180
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1181
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1182
    invoke-virtual {v6, v7}, Lorg/abtollc/api/SipProfileState;->createFromDb(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v2, v6

    .line 1190
    goto :goto_0

    .line 1184
    :catch_0
    move-exception v8

    .line 1185
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipService"

    const-string v1, "Error on looping over sip profiles states"

    invoke-static {v0, v1, v8}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getRxTxLevel(I)J
    .locals 6
    .param p1, "port"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2623
    new-array v0, v2, [J

    .line 2624
    .local v0, "rx_level":[J
    new-array v1, v2, [J

    .line 2625
    .local v1, "tx_level":[J
    invoke-static {p1, v1, v0}, Lorg/abtollc/jni/pjsua;->conf_get_signal_level(I[J[J)I

    .line 2626
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
    .line 128
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    return v0
.end method

.method public isRecording(I)Z
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2479
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->call_recording_status(I)I

    move-result v0

    sget v1, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeCall(Ljava/lang/String;JLandroid/os/Bundle;)I
    .locals 26
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1425
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/abtollc/voip/SipService;->created:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 1426
    const/16 v18, -0x1

    .line 1510
    :goto_0
    return v18

    .line 1429
    :cond_0
    invoke-virtual/range {p0 .. p3}, Lorg/abtollc/voip/SipService;->sanitizeSipUri(Ljava/lang/String;J)Lorg/abtollc/service/ABTOSipService$ToCall;

    move-result-object v19

    .line 1430
    .local v19, "toCall":Lorg/abtollc/service/ABTOSipService$ToCall;
    if-eqz v19, :cond_5

    .line 1431
    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/service/ABTOSipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v5

    .line 1434
    .local v5, "uri":Lorg/abtollc/jni/pj_str_t;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 1435
    .local v7, "userData":[B
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v9, v0, [I

    .line 1436
    .local v9, "callId":[I
    new-instance v6, Lorg/abtollc/jni/pjsua_call_setting;

    invoke-direct {v6}, Lorg/abtollc/jni/pjsua_call_setting;-><init>()V

    .line 1437
    .local v6, "cs":Lorg/abtollc/jni/pjsua_call_setting;
    new-instance v8, Lorg/abtollc/jni/pjsua_msg_data;

    invoke-direct {v8}, Lorg/abtollc/jni/pjsua_msg_data;-><init>()V

    .line 1438
    .local v8, "msgData":Lorg/abtollc/jni/pjsua_msg_data;
    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/service/ABTOSipService$ToCall;->getPjsipAccountId()Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1441
    .local v4, "pjsuaAccId":I
    invoke-static {v6}, Lorg/abtollc/jni/pjsua;->call_setting_default(Lorg/abtollc/jni/pjsua_call_setting;)V

    .line 1442
    const-wide/16 v22, 0x1

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lorg/abtollc/jni/pjsua_call_setting;->setAud_cnt(J)V

    .line 1443
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lorg/abtollc/jni/pjsua_call_setting;->setVid_cnt(J)V

    .line 1444
    if-eqz p4, :cond_1

    const-string v21, "opt_call_video"

    const/16 v22, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1445
    const-wide/16 v22, 0x1

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lorg/abtollc/jni/pjsua_call_setting;->setVid_cnt(J)V

    .line 1447
    :cond_1
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lorg/abtollc/jni/pjsua_call_setting;->setFlag(J)V

    .line 1449
    const-string v21, "call_tmp"

    const-wide/16 v22, 0x200

    const-wide/16 v24, 0x200

    invoke-static/range {v21 .. v25}, Lorg/abtollc/jni/pjsua;->pool_create(Ljava/lang/String;JJ)Lorg/abtollc/jni/pj_pool_t;

    move-result-object v16

    .line 1452
    .local v16, "pool":Lorg/abtollc/jni/pj_pool_t;
    invoke-static {v8}, Lorg/abtollc/jni/pjsua;->msg_data_init(Lorg/abtollc/jni/pjsua_msg_data;)V

    .line 1453
    move-object/from16 v0, v16

    invoke-static {v0, v4, v8}, Lorg/abtollc/jni/pjsua;->csipsimple_init_acc_msg_data(Lorg/abtollc/jni/pj_pool_t;ILorg/abtollc/jni/pjsua_msg_data;)I

    .line 1454
    if-eqz p4, :cond_3

    .line 1455
    const-string v21, "opt_call_extra_headers"

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 1456
    .local v14, "extraHeaders":Landroid/os/Bundle;
    if-eqz v14, :cond_3

    .line 1457
    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1459
    .local v15, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1460
    .local v20, "value":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1462
    invoke-static {v15}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v23

    .line 1461
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v8, v1, v2}, Lorg/abtollc/jni/pjsua;->csipsimple_msg_data_add_string_hdr(Lorg/abtollc/jni/pj_pool_t;Lorg/abtollc/jni/pjsua_msg_data;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;)I

    move-result v17

    .line 1463
    .local v17, "res":I
    sget v22, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 1464
    const-string v22, "SipService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to add Xtra hdr ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") probably not X- header"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1468
    .end local v17    # "res":I
    .end local v20    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1469
    .local v11, "e":Ljava/lang/Exception;
    const-string v22, "SipService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid header value for key : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1475
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "extraHeaders":Landroid/os/Bundle;
    .end local v15    # "key":Ljava/lang/String;
    :cond_3
    invoke-static/range {v4 .. v9}, Lorg/abtollc/jni/pjsua;->call_make_call(ILorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_call_setting;[BLorg/abtollc/jni/pjsua_msg_data;[I)I

    move-result v18

    .line 1476
    .local v18, "status":I
    sget v21, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1478
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1479
    .local v10, "args":Landroid/os/Bundle;
    const-string v21, "call_id"

    const/16 v22, 0x0

    aget v22, v9, v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v21, v0

    const/16 v22, 0xf

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v9, v22

    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/service/ABTOSipService$ToCall;->getDtmf()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1483
    const-string v21, "SipService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DTMF - Store for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget v23, v9, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/service/ABTOSipService$ToCall;->getDtmf()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    .end local v10    # "args":Landroid/os/Bundle;
    :goto_2
    invoke-static/range {v16 .. v16}, Lorg/abtollc/jni/pjsua;->pj_pool_release(Lorg/abtollc/jni/pj_pool_t;)V

    goto/16 :goto_0

    .line 1485
    :cond_4
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1486
    .local v13, "errorData":Landroid/os/Bundle;
    const-string v12, ""

    .line 1488
    .local v12, "error":Ljava/lang/String;
    move/from16 v0, v18

    invoke-static {v12, v0}, Lorg/abtollc/jni/pjsua;->strerror(Ljava/lang/String;I)V

    .line 1489
    const-string v21, "message"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const-string v21, "code"

    const/16 v22, 0x1f4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1491
    const-string v21, "remote_contact"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 1499
    .end local v4    # "pjsuaAccId":I
    .end local v5    # "uri":Lorg/abtollc/jni/pj_str_t;
    .end local v6    # "cs":Lorg/abtollc/jni/pjsua_call_setting;
    .end local v7    # "userData":[B
    .end local v8    # "msgData":Lorg/abtollc/jni/pjsua_msg_data;
    .end local v9    # "callId":[I
    .end local v12    # "error":Ljava/lang/String;
    .end local v13    # "errorData":Landroid/os/Bundle;
    .end local v16    # "pool":Lorg/abtollc/jni/pj_pool_t;
    .end local v18    # "status":I
    :cond_5
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1500
    .restart local v13    # "errorData":Landroid/os/Bundle;
    const-string v21, "message"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sip uri is invalid for call : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    const-string v21, "code"

    const/16 v22, 0x1f4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1502
    const-string v21, "remote_contact"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1505
    const-string v21, "SipService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sip uri is invalid for call: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const/16 v18, -0x1

    goto/16 :goto_0
.end method

.method public onGSMStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2231
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v2, :cond_0

    .line 2236
    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v2, :cond_3

    .line 2237
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    invoke-virtual {v2}, Lorg/abtollc/voip/UAStateReceiver;->getActiveCallOngoing()Lorg/abtollc/api/SipCallSession;

    move-result-object v1

    .line 2239
    .local v1, "currentActiveCall":Lorg/abtollc/api/SipCallSession;
    if-eqz v1, :cond_1

    .line 2240
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2241
    .local v0, "am":Landroid/media/AudioManager;
    if-ne p1, v6, :cond_2

    .line 2243
    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 2244
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/abtollc/voip/SipService;->callHold(I)I

    .line 2245
    invoke-static {}, Lorg/abtollc/jni/pjsua;->set_no_snd_dev()Lorg/abtollc/jni/pjmedia_port;

    .line 2247
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 2276
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "currentActiveCall":Lorg/abtollc/api/SipCallSession;
    :cond_1
    :goto_0
    return-void

    .line 2251
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "currentActiveCall":Lorg/abtollc/api/SipCallSession;
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    .line 2252
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2254
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v2, :cond_1

    .line 2255
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v2, v5}, Lorg/abtollc/service/MediaManager;->playInCallTone(I)V

    goto :goto_0

    .line 2262
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "currentActiveCall":Lorg/abtollc/api/SipCallSession;
    :cond_3
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/abtollc/voip/SipService;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2263
    invoke-static {v4, v4}, Lorg/abtollc/jni/pjsua;->set_snd_dev(II)I

    .line 2264
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v5}, Lorg/abtollc/voip/SipService;->callReinvite(IZ)I

    .line 2265
    iput-object v7, p0, Lorg/abtollc/voip/SipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 2270
    :cond_4
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2271
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2272
    .restart local v0    # "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2273
    iput-object v7, p0, Lorg/abtollc/voip/SipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public playWaveFile(Ljava/lang/String;II)V
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callId"    # I
    .param p3, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 2532
    iget-boolean v6, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v6, :cond_1

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2537
    :cond_1
    invoke-virtual {p0, p2}, Lorg/abtollc/voip/SipService;->stopPlaying(I)V

    .line 2539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2546
    new-array v1, v7, [I

    .line 2547
    .local v1, "plId":[I
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v6, v8, v9, v1}, Lorg/abtollc/jni/pjsua;->player_create(Lorg/abtollc/jni/pj_str_t;J[I)I

    move-result v3

    .line 2549
    .local v3, "status":I
    sget v6, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v3, v6, :cond_0

    .line 2551
    aget v2, v1, v10

    .line 2552
    .local v2, "playerId":I
    iget-object v6, p0, Lorg/abtollc/voip/SipService;->playedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2555
    invoke-static {v2}, Lorg/abtollc/jni/pjsua;->player_get_conf_port(I)I

    move-result v5

    .line 2556
    .local v5, "wavPort":I
    and-int/lit8 v6, p3, 0x1

    if-ne v6, v7, :cond_2

    .line 2557
    invoke-virtual {p0, p2}, Lorg/abtollc/voip/SipService;->getCallInfo(I)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 2558
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->getConfPort()I

    move-result v4

    .line 2559
    .local v4, "wavConfPort":I
    invoke-static {v5, v4}, Lorg/abtollc/jni/pjsua;->conf_connect(II)I

    .line 2561
    .end local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v4    # "wavConfPort":I
    :cond_2
    and-int/lit8 v6, p3, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 2562
    invoke-static {v5, v10}, Lorg/abtollc/jni/pjsua;->conf_connect(II)I

    .line 2565
    :cond_3
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lorg/abtollc/jni/pjsua;->player_set_pos(IJ)I

    goto :goto_0
.end method

.method public refreshCallMediaState(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 2093
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/voip/SipService$2;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/voip/SipService$2;-><init>(Lorg/abtollc/voip/SipService;I)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2101
    return-void
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 2
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1780
    iget-boolean v1, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v1, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return-void

    .line 1783
    :cond_1
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/jni/pjsua;->buddy_find(Lorg/abtollc/jni/pj_str_t;)I

    move-result v0

    .line 1784
    .local v0, "buddyId":I
    if-ltz v0, :cond_0

    .line 1785
    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->buddy_del(I)I

    goto :goto_0
.end method

.method public sanitizeSipUri(Ljava/lang/String;J)Lorg/abtollc/service/ABTOSipService$ToCall;
    .locals 24
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2116
    const/16 v18, -0x1

    .line 2120
    .local v18, "pjsipAccountId":I
    new-instance v8, Lorg/abtollc/api/SipProfile;

    invoke-direct {v8}, Lorg/abtollc/api/SipProfile;-><init>()V

    .line 2121
    .local v8, "account":Lorg/abtollc/api/SipProfile;
    move-wide/from16 v0, p2

    iput-wide v0, v8, Lorg/abtollc/api/SipProfile;->id:J

    .line 2122
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/abtollc/voip/SipService;->getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;

    move-result-object v19

    .line 2123
    .local v19, "profileState":Lorg/abtollc/api/SipProfileState;
    move-wide/from16 v16, p2

    .line 2126
    .local v16, "finalAccountId":J
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2127
    :cond_0
    invoke-static {}, Lorg/abtollc/jni/pjsua;->acc_get_default()I

    move-result v12

    .line 2129
    .local v12, "defaultPjsipAccount":I
    const/16 v22, 0x0

    .line 2130
    .local v22, "valid":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/abtollc/voip/SipService;->getAccountForPjsipId(I)Lorg/abtollc/api/SipProfile;

    move-result-object v8

    .line 2131
    if-eqz v8, :cond_1

    .line 2132
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/abtollc/voip/SipService;->getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;

    move-result-object v19

    .line 2133
    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/api/SipProfileState;->isAddedToStack()Z

    move-result v22

    .line 2136
    :cond_1
    const-string v3, "SipService"

    const-string v4, "Account %1$s null and it is %2$s valid"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v8, :cond_5

    const-string v2, "is"

    :goto_0
    aput-object v2, v5, v6

    const/4 v6, 0x1

    if-eqz v22, :cond_6

    const-string v2, ""

    :goto_1
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    if-nez v22, :cond_8

    .line 2141
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2142
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 2144
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 2145
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2147
    :cond_2
    new-instance v20, Lorg/abtollc/api/SipProfileState;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lorg/abtollc/api/SipProfileState;-><init>(Landroid/database/Cursor;)V

    .line 2148
    .local v20, "ps":Lorg/abtollc/api/SipProfileState;
    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/api/SipProfileState;->isValidForCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2149
    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/api/SipProfileState;->getAccountId()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 2150
    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 2158
    .end local v20    # "ps":Lorg/abtollc/api/SipProfileState;
    :cond_3
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2173
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "defaultPjsipAccount":I
    .end local v22    # "valid":Z
    :cond_4
    :goto_3
    move/from16 v0, v18

    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 2174
    const-string v2, "SipService"

    const-string v3, "Unable to find a valid account for this call"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    const/4 v2, 0x0

    .line 2226
    :goto_4
    return-object v2

    .line 2136
    .restart local v12    # "defaultPjsipAccount":I
    .restart local v22    # "valid":Z
    :cond_5
    const-string v2, "not"

    goto :goto_0

    :cond_6
    const-string v2, "not"

    goto :goto_1

    .line 2153
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v20    # "ps":Lorg/abtollc/api/SipProfileState;
    :cond_7
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 2155
    .end local v20    # "ps":Lorg/abtollc/api/SipProfileState;
    :catch_0
    move-exception v14

    .line 2156
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SipService"

    const-string v3, "Error on looping over sip profiles state"

    invoke-static {v2, v3, v14}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2158
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2163
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/api/SipProfileState;->getAccountId()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 2164
    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v18

    .line 2165
    const-string v2, "SipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PJSIP account is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2169
    .end local v12    # "defaultPjsipAccount":I
    .end local v22    # "valid":Z
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v18

    .line 2170
    const-string v2, "SipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PJSUA account is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2180
    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v15

    .line 2182
    .local v15, "finalCallee":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2183
    :cond_b
    const-string v2, "SipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default acc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lorg/abtollc/service/ABTOSipService;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v8

    .line 2187
    :cond_c
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2188
    invoke-virtual {v8}, Lorg/abtollc/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v11

    .line 2189
    .local v11, "defaultDomain":Ljava/lang/String;
    iput-object v11, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 2191
    .end local v11    # "defaultDomain":Ljava/lang/String;
    :cond_d
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2192
    iget-object v2, v8, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 2193
    const-string v2, "sips"

    iput-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 2199
    :cond_e
    :goto_5
    iget-object v2, v8, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 2200
    const-string v2, "tcp"

    iput-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->transport:Ljava/lang/String;

    .line 2203
    :cond_f
    const/4 v13, 0x0

    .line 2204
    .local v13, "digitsToAdd":Ljava/lang/String;
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ","

    .line 2205
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2206
    :cond_10
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 2207
    .local v10, "commaIndex":I
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 2208
    .local v21, "semiColumnIndex":I
    if-lez v21, :cond_11

    move/from16 v0, v21

    if-ge v0, v10, :cond_11

    .line 2209
    move/from16 v10, v21

    .line 2211
    :cond_11
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2212
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 2215
    .end local v10    # "commaIndex":I
    .end local v21    # "semiColumnIndex":I
    :cond_12
    const-string v2, "SipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "will call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/abtollc/jni/pjsua;->verify_sip_url(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    .line 2220
    move/from16 v0, v18

    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 2221
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v2

    invoke-static {v2}, Lorg/abtollc/jni/pjsua;->acc_find_for_outgoing(Lorg/abtollc/jni/pj_str_t;)I

    move-result v18

    .line 2223
    :cond_13
    new-instance v2, Lorg/abtollc/service/ABTOSipService$ToCall;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lorg/abtollc/service/ABTOSipService$ToCall;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2195
    .end local v13    # "digitsToAdd":Ljava/lang/String;
    :cond_14
    const-string v2, "sip"

    iput-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    goto/16 :goto_5

    .line 2226
    .restart local v13    # "digitsToAdd":Ljava/lang/String;
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method public sendDtmf(II)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1569
    iget-boolean v3, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v3, :cond_0

    .line 1570
    const/4 v3, -0x1

    .line 1599
    :goto_0
    return v3

    .line 1572
    :cond_0
    const/4 v2, -0x1

    .line 1573
    .local v2, "res":I
    const-string v0, ""

    .line 1577
    .local v0, "keyPressed":Ljava/lang/String;
    const/4 v3, 0x7

    if-lt p2, v3, :cond_1

    const/16 v3, 0x10

    if-gt p2, v3, :cond_1

    .line 1578
    add-int/lit8 v3, p2, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1599
    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/abtollc/voip/SipService;->sendDtmf(ILjava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1579
    :cond_1
    const/16 v3, 0x12

    if-ne p2, v3, :cond_2

    .line 1580
    const-string v0, "#"

    goto :goto_1

    .line 1581
    :cond_2
    const/16 v3, 0x11

    if-ne p2, v3, :cond_3

    .line 1582
    const-string v0, "*"

    goto :goto_1

    .line 1583
    :cond_3
    const/16 v3, 0x1d

    if-ne p2, v3, :cond_4

    .line 1584
    const-string v0, "A"

    goto :goto_1

    .line 1585
    :cond_4
    const/16 v3, 0x1e

    if-ne p2, v3, :cond_5

    .line 1586
    const-string v0, "B"

    goto :goto_1

    .line 1587
    :cond_5
    const/16 v3, 0x1f

    if-ne p2, v3, :cond_6

    .line 1588
    const-string v0, "C"

    goto :goto_1

    .line 1589
    :cond_6
    const/16 v3, 0x20

    if-ne p2, v3, :cond_7

    .line 1590
    const-string v0, "D"

    goto :goto_1

    .line 1591
    :cond_7
    const/16 v3, 0x22

    if-ne p2, v3, :cond_8

    .line 1592
    const-string v0, "F"

    goto :goto_1

    .line 1596
    :cond_8
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 1597
    .local v1, "km":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1, p2}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;J)Lorg/abtollc/service/ABTOSipService$ToCall;
    .locals 9
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1700
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v0, :cond_1

    move-object v7, v2

    .line 1720
    :cond_0
    :goto_0
    return-object v7

    .line 1704
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/abtollc/voip/SipService;->sanitizeSipUri(Ljava/lang/String;J)Lorg/abtollc/service/ABTOSipService$ToCall;

    move-result-object v7

    .line 1705
    .local v7, "toCall":Lorg/abtollc/service/ABTOSipService$ToCall;
    if-eqz v7, :cond_0

    .line 1707
    invoke-virtual {v7}, Lorg/abtollc/service/ABTOSipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v1

    .line 1708
    .local v1, "uri":Lorg/abtollc/jni/pj_str_t;
    invoke-static {p2}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v3

    .line 1715
    .local v3, "text":Lorg/abtollc/jni/pj_str_t;
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 1717
    .local v5, "userData":[B
    invoke-virtual {v7}, Lorg/abtollc/service/ABTOSipService$ToCall;->getPjsipAccountId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lorg/abtollc/jni/pjsua;->im_send(ILorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_msg_data;[B)I

    move-result v6

    .line 1718
    .local v6, "status":I
    sget v0, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v6, v0, :cond_0

    move-object v7, v2

    goto :goto_0
.end method

.method public sendNotify(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/abtollc/service/ABTOSipService$ToCall;
    .locals 9
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .param p5, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1724
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v0, :cond_1

    move-object v8, v2

    .line 1746
    :cond_0
    :goto_0
    return-object v8

    .line 1728
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/abtollc/voip/SipService;->sanitizeSipUri(Ljava/lang/String;J)Lorg/abtollc/service/ABTOSipService$ToCall;

    move-result-object v8

    .line 1729
    .local v8, "toCall":Lorg/abtollc/service/ABTOSipService$ToCall;
    if-eqz v8, :cond_0

    .line 1731
    invoke-virtual {v8}, Lorg/abtollc/service/ABTOSipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v1

    .line 1732
    .local v1, "uri":Lorg/abtollc/jni/pj_str_t;
    invoke-static {p2}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v3

    .line 1734
    .local v3, "text":Lorg/abtollc/jni/pj_str_t;
    invoke-static {p5}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    .line 1741
    .local v6, "evnt":Lorg/abtollc/jni/pj_str_t;
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 1743
    .local v5, "userData":[B
    invoke-virtual {v8}, Lorg/abtollc/service/ABTOSipService$ToCall;->getPjsipAccountId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lorg/abtollc/jni/pjsua;->ev_notify(ILorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_msg_data;[BLorg/abtollc/jni/pj_str_t;)I

    move-result v7

    .line 1744
    .local v7, "status":I
    sget v0, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v7, v0, :cond_0

    move-object v8, v2

    goto :goto_0
.end method

.method public sendPendingDtmf(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1790
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1791
    const-string v1, "SipService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF - Send pending dtmf "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/abtollc/voip/SipService;->sendDtmf(ILjava/lang/String;)I

    .line 1794
    :cond_0
    return-void
.end method

.method public setAccountRegistration(Lorg/abtollc/api/SipProfile;IZ)Z
    .locals 11
    .param p1, "account"    # Lorg/abtollc/api/SipProfile;
    .param p2, "renew"    # I
    .param p3, "forceReAdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1919
    const/4 v2, -0x1

    .line 1920
    .local v2, "status":I
    iget-boolean v3, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 1921
    :cond_0
    const-string v3, "SipService"

    const-string v4, "PJSIP is not started here, nothing can be done"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    :goto_0
    return v5

    .line 1924
    :cond_1
    iget-wide v6, p1, Lorg/abtollc/api/SipProfile;->id:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 1925
    const-string v3, "SipService"

    const-string v4, "Trying to set registration on a deleted account"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1937
    :cond_2
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;

    move-result-object v1

    .line 1942
    .local v1, "profileState":Lorg/abtollc/api/SipProfileState;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->isAddedToStack()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1944
    iget-object v3, p1, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    const-string v6, "LOCAL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1945
    const-string v3, "SipService"

    const-string v6, "Account already added to stack, remove and re-load or delete"

    invoke-static {v3, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    if-ne p2, v4, :cond_4

    .line 1947
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v3}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    sget-object v6, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lorg/abtollc/api/SipProfile;->id:J

    .line 1948
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1947
    invoke-virtual {v3, v6, v10, v10}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1949
    if-eqz p3, :cond_3

    .line 1950
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v3

    invoke-static {v3}, Lorg/abtollc/jni/pjsua;->acc_del(I)I

    move-result v2

    .line 1951
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->addAccount(Lorg/abtollc/api/SipProfile;)I

    .line 1981
    :goto_1
    if-nez v2, :cond_8

    move v3, v4

    :goto_2
    move v5, v3

    goto :goto_0

    .line 1953
    :cond_3
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v3

    iget-object v6, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    .line 1954
    invoke-virtual {v6}, Lorg/abtollc/service/ABTOSipService;->getPresence()Lorg/abtollc/api/SipManager$PresenceStatus;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/abtollc/voip/SipService;->getOnlineForStatus(Lorg/abtollc/api/SipManager$PresenceStatus;)I

    move-result v6

    .line 1953
    invoke-static {v3, v6}, Lorg/abtollc/jni/pjsua;->acc_set_online_status(II)I

    .line 1955
    const-string v3, "SipService"

    const-string v6, ">>>>>>setAccountRegistration<<<<<<"

    invoke-static {v3, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v3

    invoke-static {v3, p2}, Lorg/abtollc/jni/pjsua;->acc_set_registration(II)I

    move-result v2

    goto :goto_1

    .line 1960
    :cond_4
    const-string v3, "SipService"

    const-string v6, "Delete account !!"

    invoke-static {v3, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v3

    invoke-static {v3, p2}, Lorg/abtollc/jni/pjsua;->acc_set_registration(II)I

    move-result v2

    goto :goto_1

    .line 1964
    :cond_5
    const-string v3, "SipService"

    const-string v6, "Delete Local account !!"

    invoke-static {v3, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    invoke-virtual {v1}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v3

    invoke-static {v3}, Lorg/abtollc/jni/pjsua;->acc_del(I)I

    move-result v2

    .line 1966
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1967
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "acc_id"

    iget-wide v6, p1, Lorg/abtollc/api/SipProfile;->id:J

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1968
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v6, 0x5

    invoke-virtual {v3, v6, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1969
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v3}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    sget-object v6, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lorg/abtollc/api/SipProfile;->id:J

    .line 1970
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1969
    invoke-virtual {v3, v6, v10, v10}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1973
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_6
    if-ne p2, v4, :cond_7

    .line 1974
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->addAccount(Lorg/abtollc/api/SipProfile;)I

    goto :goto_1

    .line 1976
    :cond_7
    const-string v3, "SipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ask to unregister an unexisting account !!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lorg/abtollc/api/SipProfile;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move v3, v5

    .line 1981
    goto/16 :goto_2
.end method

.method public setAudioInCall(I)V
    .locals 2
    .param p1, "beforeInit"    # I

    .prologue
    .line 2073
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 2074
    iget-object v1, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    sget v0, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/abtollc/service/MediaManager;->setAudioInCall(Z)V

    .line 2076
    :cond_0
    return-void

    .line 2074
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBluetoothOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1834
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v0, p1}, Lorg/abtollc/service/MediaManager;->setBluetoothOn(Z)V

    .line 1837
    :cond_0
    return-void
.end method

.method public setEchoCancellation(Z)V
    .locals 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1886
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1887
    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set echo cancelation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getEchoCancellationTail()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "echo_mode"

    .line 1889
    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 1888
    invoke-static {v0, v1, v2, v3}, Lorg/abtollc/jni/pjsua;->set_ec(JJ)I

    .line 1891
    :cond_0
    return-void

    .line 1888
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1847
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v0, p1}, Lorg/abtollc/service/MediaManager;->setMicrophoneMute(Z)V

    .line 1850
    :cond_0
    return-void
.end method

.method public setNoSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2365
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v0, :cond_0

    .line 2369
    :goto_0
    return-void

    .line 2368
    :cond_0
    invoke-static {}, Lorg/abtollc/jni/pjsua;->set_no_snd_dev()Lorg/abtollc/jni/pjmedia_port;

    goto :goto_0
.end method

.method public setPresence(Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;J)V
    .locals 7
    .param p1, "presence"    # Lorg/abtollc/api/SipManager$PresenceStatus;
    .param p2, "statusText"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1994
    iget-boolean v3, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v3, :cond_1

    .line 1995
    const-string v3, "SipService"

    const-string v4, "PJSIP is not started here, nothing can be done"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 1998
    :cond_1
    new-instance v0, Lorg/abtollc/api/SipProfile;

    invoke-direct {v0}, Lorg/abtollc/api/SipProfile;-><init>()V

    .line 1999
    .local v0, "account":Lorg/abtollc/api/SipProfile;
    iput-wide p3, v0, Lorg/abtollc/api/SipProfile;->id:J

    .line 2000
    invoke-virtual {p0, v0}, Lorg/abtollc/voip/SipService;->getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;

    move-result-object v2

    .line 2005
    .local v2, "profileState":Lorg/abtollc/api/SipProfileState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/abtollc/api/SipProfileState;->isAddedToStack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2008
    const-string v3, "SipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set presence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    sget-object v3, Lorg/abtollc/voip/SipService$3;->$SwitchMap$org$abtollc$api$SipManager$PresenceStatus:[I

    invoke-virtual {p1}, Lorg/abtollc/api/SipManager$PresenceStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2019
    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_UNKNOWN:Lorg/abtollc/jni/pjrpid_activity;

    .line 2023
    .local v1, "activity":Lorg/abtollc/jni/pjrpid_activity;
    :goto_1
    invoke-virtual {v2}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v3

    invoke-direct {p0, p1}, Lorg/abtollc/voip/SipService;->getOnlineForStatus(Lorg/abtollc/api/SipManager$PresenceStatus;)I

    move-result v4

    invoke-static {p2}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lorg/abtollc/jni/pjsua;->acc_set_online_status3(IILorg/abtollc/jni/pjrpid_activity;Lorg/abtollc/jni/pj_str_t;)I

    goto :goto_0

    .line 2013
    .end local v1    # "activity":Lorg/abtollc/jni/pjrpid_activity;
    :pswitch_0
    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_AWAY:Lorg/abtollc/jni/pjrpid_activity;

    .line 2014
    .restart local v1    # "activity":Lorg/abtollc/jni/pjrpid_activity;
    goto :goto_1

    .line 2016
    .end local v1    # "activity":Lorg/abtollc/jni/pjrpid_activity;
    :pswitch_1
    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_BUSY:Lorg/abtollc/jni/pjrpid_activity;

    .line 2017
    .restart local v1    # "activity":Lorg/abtollc/jni/pjrpid_activity;
    goto :goto_1

    .line 2011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setService(Lorg/abtollc/service/ABTOSipService;)V
    .locals 1
    .param p1, "aService"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    .line 124
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 125
    return-void
.end method

.method public setSnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2372
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v0, :cond_0

    .line 2376
    :goto_0
    return-void

    .line 2375
    :cond_0
    invoke-static {v1, v1}, Lorg/abtollc/jni/pjsua;->set_snd_dev(II)I

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1860
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v0, p1}, Lorg/abtollc/service/MediaManager;->setSpeakerphoneOn(Z)V

    .line 1863
    :cond_0
    return-void
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v0}, Lorg/abtollc/service/MediaManager;->stopRingAndUnfocus()V

    .line 1903
    :cond_0
    return-void
.end method

.method public sipStart()Z
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/abtollc/voip/SipService;->hasSipStack:Z

    move/from16 v44, v0

    if-nez v44, :cond_0

    .line 231
    const-string v44, "SipService"

    const-string v45, "We have no sip stack, we can\'t start"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v16, "eventData":Landroid/os/Bundle;
    const-string v44, "init_state"

    sget-object v45, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 234
    invoke-virtual/range {v45 .. v45}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v45

    .line 233
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v44, "message"

    const-string v45, "We have no sip stack, we can\'t start"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 237
    const/16 v44, 0x0

    .line 667
    .end local v16    # "eventData":Landroid/os/Bundle;
    :goto_0
    return v44

    .line 240
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/service/ABTOSipService;->isConnectivityValid()Z

    move-result v44

    if-nez v44, :cond_1

    .line 241
    const-string v44, "SipService"

    const-string v45, "Selected network route not allowed with current settings you have setup"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 243
    .restart local v16    # "eventData":Landroid/os/Bundle;
    const-string v44, "init_state"

    sget-object v45, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 244
    invoke-virtual/range {v45 .. v45}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v45

    .line 243
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v44, "message"

    const-string v45, "Selected network route not allowed with current settings you have setup"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 247
    const/16 v44, 0x0

    goto :goto_0

    .line 251
    .end local v16    # "eventData":Landroid/os/Bundle;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/abtollc/voip/SipService;->created:Z

    move/from16 v44, v0

    if-nez v44, :cond_2a

    .line 252
    const-string v44, "SipService"

    const-string v45, "Starting sip stack"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 255
    .restart local v16    # "eventData":Landroid/os/Bundle;
    const-string v44, "init_state"

    sget-object v45, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->START:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 256
    invoke-virtual/range {v45 .. v45}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v45

    .line 255
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v44, "message"

    const-string v45, "Starting sip stack"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lorg/abtollc/utils/TimerWrapper;->create(Lorg/abtollc/service/ABTOSipService;)V

    .line 264
    invoke-static {}, Lorg/abtollc/jni/pjsua;->create()I

    move-result v33

    .line 266
    .local v33, "status":I
    const-string v44, "SipService"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Created "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/16 v34, 0x0

    .line 270
    .local v34, "stunServers":[Lorg/abtollc/jni/pj_str_t;
    const/16 v35, 0x0

    .line 271
    .local v35, "stunServersCount":I
    new-instance v7, Lorg/abtollc/jni/pjsua_config;

    invoke-direct {v7}, Lorg/abtollc/jni/pjsua_config;-><init>()V

    .line 272
    .local v7, "cfg":Lorg/abtollc/jni/pjsua_config;
    new-instance v22, Lorg/abtollc/jni/pjsua_logging_config;

    invoke-direct/range {v22 .. v22}, Lorg/abtollc/jni/pjsua_logging_config;-><init>()V

    .line 273
    .local v22, "logCfg":Lorg/abtollc/jni/pjsua_logging_config;
    new-instance v23, Lorg/abtollc/jni/pjsua_media_config;

    invoke-direct/range {v23 .. v23}, Lorg/abtollc/jni/pjsua_media_config;-><init>()V

    .line 274
    .local v23, "mediaCfg":Lorg/abtollc/jni/pjsua_media_config;
    new-instance v11, Lorg/abtollc/jni/csipsimple_config;

    invoke-direct {v11}, Lorg/abtollc/jni/csipsimple_config;-><init>()V

    .line 278
    .local v11, "cssCfg":Lorg/abtollc/jni/csipsimple_config;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    move-object/from16 v44, v0

    if-nez v44, :cond_2

    .line 279
    const-string v44, "SipService"

    const-string v45, "create receiver...."

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v44, Lorg/abtollc/voip/UAStateReceiver;

    invoke-direct/range {v44 .. v44}, Lorg/abtollc/voip/UAStateReceiver;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/abtollc/voip/UAStateReceiver;->initService(Lorg/abtollc/voip/SipService;)V

    .line 283
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->zrtpReceiver:Lorg/abtollc/voip/ZrtpStateReceiver;

    move-object/from16 v44, v0

    if-nez v44, :cond_3

    .line 284
    const-string v44, "SipService"

    const-string v45, "create zrtp receiver"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v44, Lorg/abtollc/voip/ZrtpStateReceiver;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/abtollc/voip/ZrtpStateReceiver;-><init>(Lorg/abtollc/voip/SipService;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/abtollc/voip/SipService;->zrtpReceiver:Lorg/abtollc/voip/ZrtpStateReceiver;

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    move-object/from16 v44, v0

    if-nez v44, :cond_4

    .line 288
    new-instance v44, Lorg/abtollc/service/MediaManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v45, v0

    invoke-direct/range {v44 .. v45}, Lorg/abtollc/service/MediaManager;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    .line 291
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/service/MediaManager;->startService()V

    .line 293
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->initModules()V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "dtmf_pause_time"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v44

    sput v44, Lorg/abtollc/voip/SipService;->DTMF_TONE_PAUSE_LENGTH:I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "dtmf_wait_time"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v44

    sput v44, Lorg/abtollc/voip/SipService;->DTMF_TONE_WAIT_LENGTH:I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->setCallbackObject(Lorg/abtollc/jni/Callback;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->zrtpReceiver:Lorg/abtollc/voip/ZrtpStateReceiver;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->setZrtpCallbackObject(Lorg/abtollc/jni/ZrtpCallback;)V

    .line 301
    const-string v44, "SipService"

    const-string v45, "Attach is done to callback"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {v11}, Lorg/abtollc/jni/pjsua;->csipsimple_config_default(Lorg/abtollc/jni/csipsimple_config;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "use_compact_form"

    .line 306
    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_d

    sget v44, Lorg/abtollc/jni/pjsua;->PJ_TRUE:I

    .line 305
    :goto_1
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setUse_compact_form_headers(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "use_compact_form"

    .line 308
    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_e

    sget v44, Lorg/abtollc/jni/pjsua;->PJ_TRUE:I

    .line 307
    :goto_2
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setUse_compact_form_sdp(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "force_no_update"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_f

    sget v44, Lorg/abtollc/jni/pjsua;->PJ_TRUE:I

    :goto_3
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setUse_no_update(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "enable_ns"

    .line 312
    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_10

    sget v44, Lorg/abtollc/jni/pjsua;->PJ_TRUE:I

    .line 311
    :goto_4
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setUse_noise_suppressor(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTcpKeepAliveInterval()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTcp_keep_alive_interval(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTlsKeepAliveInterval()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTls_keep_alive_interval(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "disable_tcp_switch"

    .line 319
    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_11

    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    .line 318
    :goto_5
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setDisable_tcp_switch(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "disable_rport"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_12

    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    :goto_6
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setDisable_rport(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "add_bandwidth_tias_in_sdp"

    .line 324
    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_13

    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    .line 323
    :goto_7
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setAdd_bandwidth_tias_in_sdp(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "tsx_t1_timeout"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v39

    .line 329
    .local v39, "tsx_to":I
    if-lez v39, :cond_5

    .line 330
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTsx_t1_timeout(I)V

    .line 332
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "tsx_t2_timeout"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v39

    .line 333
    if-lez v39, :cond_6

    .line 334
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTsx_t2_timeout(I)V

    .line 336
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "tsx_t4_timeout"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v39

    .line 337
    if-lez v39, :cond_7

    .line 338
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTsx_t4_timeout(I)V

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "tsx_td_timeout"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v39

    .line 341
    if-lez v39, :cond_8

    .line 342
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTsx_td_timeout(I)V

    .line 345
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "tsx_rtd_timeout"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v39

    .line 346
    if-lez v39, :cond_9

    .line 347
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTsx_rtd_timeout(I)V

    .line 350
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "tsx_ctd_timeout"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v39

    .line 351
    if-lez v39, :cond_a

    .line 352
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTsx_ctd_timeout(I)V

    .line 355
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "tsx_btd_timeout"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v39

    .line 356
    if-lez v39, :cond_b

    .line 357
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setTsx_btd_timeout(I)V

    .line 361
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesWrapper;->getZrtpFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v43

    .line 362
    .local v43, "zrtpFolder":Ljava/io/File;
    if-eqz v43, :cond_15

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "use_zrtp"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_14

    sget v44, Lorg/abtollc/jni/pjsua;->PJ_TRUE:I

    :goto_8
    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setUse_zrtp(I)V

    .line 365
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setStorage_folder(Lorg/abtollc/jni/pj_str_t;)V

    .line 371
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const-string v45, "org.abtollc.codecs.action.REGISTER_CODEC"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/ExtraPlugins;->getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 373
    .local v6, "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-virtual {v11}, Lorg/abtollc/jni/csipsimple_config;->getExtra_aud_codecs()[Lorg/abtollc/jni/dynamic_factory;

    move-result-object v12

    .line 374
    .local v12, "cssCodecs":[Lorg/abtollc/jni/dynamic_factory;
    const/16 v17, 0x0

    .line 375
    .local v17, "i":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_c
    :goto_a
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_16

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 376
    .local v5, "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    .line 377
    .local v14, "dyn":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v45

    if-nez v45, :cond_c

    .line 378
    aget-object v45, v12, v17

    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lorg/abtollc/jni/dynamic_factory;->setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V

    .line 379
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "i":I
    .local v18, "i":I
    aget-object v45, v12, v17

    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lorg/abtollc/jni/dynamic_factory;->setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V

    .line 380
    const-string v45, "SipService"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "init function for codecs: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v18

    .end local v18    # "i":I
    .restart local v17    # "i":I
    goto :goto_a

    .line 306
    .end local v5    # "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v6    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v12    # "cssCodecs":[Lorg/abtollc/jni/dynamic_factory;
    .end local v14    # "dyn":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v17    # "i":I
    .end local v39    # "tsx_to":I
    .end local v43    # "zrtpFolder":Ljava/io/File;
    :cond_d
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    goto/16 :goto_1

    .line 308
    :cond_e
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    goto/16 :goto_2

    .line 309
    :cond_f
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    goto/16 :goto_3

    .line 312
    :cond_10
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    goto/16 :goto_4

    .line 319
    :cond_11
    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_5

    .line 321
    :cond_12
    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_6

    .line 324
    :cond_13
    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_7

    .line 363
    .restart local v39    # "tsx_to":I
    .restart local v43    # "zrtpFolder":Ljava/io/File;
    :cond_14
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    goto/16 :goto_8

    .line 367
    :cond_15
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    move/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setUse_zrtp(I)V

    .line 368
    const-string v44, ""

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Lorg/abtollc/jni/csipsimple_config;->setStorage_folder(Lorg/abtollc/jni/pj_str_t;)V

    goto/16 :goto_9

    .line 383
    .restart local v6    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .restart local v12    # "cssCodecs":[Lorg/abtollc/jni/dynamic_factory;
    .restart local v17    # "i":I
    :cond_16
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v11, v0, v1}, Lorg/abtollc/jni/csipsimple_config;->setExtra_aud_codecs_cnt(J)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "audio_implementation"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v19

    .line 387
    .local v19, "implementation":I
    const/16 v44, 0x1

    move/from16 v0, v19

    move/from16 v1, v44

    if-ne v0, v1, :cond_17

    .line 388
    invoke-virtual {v11}, Lorg/abtollc/jni/csipsimple_config;->getAudio_implementation()Lorg/abtollc/jni/dynamic_factory;

    move-result-object v4

    .line 389
    .local v4, "audImp":Lorg/abtollc/jni/dynamic_factory;
    const-string v44, "pjmedia_opensl_factory"

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lorg/abtollc/jni/dynamic_factory;->setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const-string v45, "libopensl_dev.so"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/voip/NativeLibManager;->getBundledStackLibFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    .line 391
    .local v27, "openslLib":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lorg/abtollc/jni/dynamic_factory;->setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V

    .line 392
    invoke-virtual {v11, v4}, Lorg/abtollc/jni/csipsimple_config;->setAudio_implementation(Lorg/abtollc/jni/dynamic_factory;)V

    .line 393
    const-string v44, "SipService"

    const-string v45, "Use OpenSL-ES implementation"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v4    # "audImp":Lorg/abtollc/jni/dynamic_factory;
    .end local v27    # "openslLib":Ljava/io/File;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "use_video"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1a

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const-string v45, "org.abtollc.plugins.action.REGISTER_VIDEO"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/ExtraPlugins;->getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v42

    .line 403
    .local v42, "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface/range {v42 .. v42}, Ljava/util/Map;->size()I

    move-result v44

    if-lez v44, :cond_1a

    .line 404
    invoke-interface/range {v42 .. v42}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    .line 405
    .local v41, "videoPlugin":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    move-object/from16 v0, v41

    iget-object v0, v0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v29

    .line 406
    .local v29, "pjVideoFile":Lorg/abtollc/jni/pj_str_t;
    const-string v44, "SipService"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Load video plugin at "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v41

    iget-object v0, v0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v11}, Lorg/abtollc/jni/csipsimple_config;->getVideo_render_implementation()Lorg/abtollc/jni/dynamic_factory;

    move-result-object v40

    .line 410
    .local v40, "vidImpl":Lorg/abtollc/jni/dynamic_factory;
    const-string v44, "pjmedia_webrtc_vid_render_factory"

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/dynamic_factory;->setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V

    .line 411
    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/dynamic_factory;->setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V

    .line 415
    invoke-virtual {v11}, Lorg/abtollc/jni/csipsimple_config;->getVideo_capture_implementation()Lorg/abtollc/jni/dynamic_factory;

    move-result-object v40

    .line 416
    const-string v44, "pjmedia_webrtc_vid_capture_factory"

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/dynamic_factory;->setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V

    .line 417
    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/dynamic_factory;->setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const-string v45, "org.abtollc.codecs.action.REGISTER_VIDEO_CODEC"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/ExtraPlugins;->getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 436
    invoke-virtual {v11}, Lorg/abtollc/jni/csipsimple_config;->getExtra_vid_codecs()[Lorg/abtollc/jni/dynamic_factory;

    move-result-object v12

    .line 437
    invoke-virtual {v11}, Lorg/abtollc/jni/csipsimple_config;->getExtra_vid_codecs_destroy()[Lorg/abtollc/jni/dynamic_factory;

    move-result-object v13

    .line 438
    .local v13, "cssCodecsDestroy":[Lorg/abtollc/jni/dynamic_factory;
    const/16 v17, 0x0

    .line 439
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :goto_b
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_19

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 440
    .restart local v5    # "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    .line 441
    .restart local v14    # "dyn":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v45

    if-nez v45, :cond_18

    .line 443
    aget-object v45, v12, v17

    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lorg/abtollc/jni/dynamic_factory;->setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V

    .line 444
    aget-object v45, v12, v17

    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lorg/abtollc/jni/dynamic_factory;->setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V

    .line 446
    aget-object v45, v13, v17

    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lorg/abtollc/jni/dynamic_factory;->setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V

    .line 447
    aget-object v45, v13, v17

    iget-object v0, v14, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryDeinitFunction:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lorg/abtollc/jni/dynamic_factory;->setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V

    .line 449
    :cond_18
    add-int/lit8 v17, v17, 0x1

    .line 450
    goto :goto_b

    .line 451
    .end local v5    # "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v14    # "dyn":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    :cond_19
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v11, v0, v1}, Lorg/abtollc/jni/csipsimple_config;->setExtra_vid_codecs_cnt(J)V

    .line 454
    invoke-virtual {v11}, Lorg/abtollc/jni/csipsimple_config;->getVid_converter()Lorg/abtollc/jni/dynamic_factory;

    move-result-object v10

    .line 455
    .local v10, "convertImpl":Lorg/abtollc/jni/dynamic_factory;
    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/abtollc/jni/dynamic_factory;->setShared_lib_path(Lorg/abtollc/jni/pj_str_t;)V

    .line 456
    const-string v44, "pjmedia_libswscale_converter_init"

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Lorg/abtollc/jni/dynamic_factory;->setInit_factory_name(Lorg/abtollc/jni/pj_str_t;)V

    .line 461
    .end local v10    # "convertImpl":Lorg/abtollc/jni/dynamic_factory;
    .end local v13    # "cssCodecsDestroy":[Lorg/abtollc/jni/dynamic_factory;
    .end local v29    # "pjVideoFile":Lorg/abtollc/jni/pj_str_t;
    .end local v40    # "vidImpl":Lorg/abtollc/jni/dynamic_factory;
    .end local v41    # "videoPlugin":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v42    # "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    :cond_1a
    invoke-static {v7}, Lorg/abtollc/jni/pjsua;->config_default(Lorg/abtollc/jni/pjsua_config;)V

    .line 462
    sget-object v44, Lorg/abtollc/jni/pjsuaConstants;->WRAPPER_CALLBACK_STRUCT:Lorg/abtollc/jni/pjsua_callback;

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setCb(Lorg/abtollc/jni/pjsua_callback;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUserAgent()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setUser_agent(Lorg/abtollc/jni/pj_str_t;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "thread_count"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v36

    .line 468
    .local v36, "threadCount":I
    if-gtz v36, :cond_1b

    .line 469
    const/16 v36, 0x1

    .line 471
    :cond_1b
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v7, v0, v1}, Lorg/abtollc/jni/pjsua_config;->setThread_cnt(J)V

    .line 472
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->getUseSrtp()Lorg/abtollc/jni/pjmedia_srtp_use;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setUse_srtp(Lorg/abtollc/jni/pjmedia_srtp_use;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "signaling_transport"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 475
    .local v38, "transport":I
    const/16 v44, 0x3

    move/from16 v0, v38

    move/from16 v1, v44

    if-ne v0, v1, :cond_1e

    const/16 v44, 0x1

    :goto_c
    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setSrtp_secure_signaling(I)V

    .line 477
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setNat_type_in_sdp(I)V

    .line 479
    invoke-virtual {v7}, Lorg/abtollc/jni/pjsua_config;->getTimer_setting()Lorg/abtollc/jni/pjsip_timer_setting;

    move-result-object v37

    .line 480
    .local v37, "timerSetting":Lorg/abtollc/jni/pjsip_timer_setting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "timer_min_se"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v24

    .line 481
    .local v24, "minSe":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "timer_sess_expires"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v32

    .line 482
    .local v32, "sessExp":I
    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_1c

    const/16 v44, 0x5a

    move/from16 v0, v24

    move/from16 v1, v44

    if-lt v0, v1, :cond_1c

    .line 483
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsip_timer_setting;->setMin_se(J)V

    .line 484
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsip_timer_setting;->setSess_expires(J)V

    .line 485
    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setTimer_setting(Lorg/abtollc/jni/pjsip_timer_setting;)V

    .line 488
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->enableDNSSRV()Z

    move-result v44

    if-eqz v44, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v44

    if-nez v44, :cond_1d

    .line 489
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->getNameservers()[Lorg/abtollc/jni/pj_str_t;

    move-result-object v26

    .line 490
    .local v26, "nameservers":[Lorg/abtollc/jni/pj_str_t;
    if-eqz v26, :cond_1f

    .line 491
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v7, v0, v1}, Lorg/abtollc/jni/pjsua_config;->setNameserver_count(J)V

    .line 492
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setNameserver([Lorg/abtollc/jni/pj_str_t;)V

    .line 498
    .end local v26    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    :cond_1d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getStunEnabled()I

    move-result v20

    .line 499
    .local v20, "isStunEnabled":I
    const/16 v44, 0x1

    move/from16 v0, v20

    move/from16 v1, v44

    if-ne v0, v1, :cond_21

    .line 501
    const-string v44, "SipService"

    const-string v45, "Stun is Enabled"

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "stun_server"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v45, ","

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 504
    .local v31, "servers":[Ljava/lang/String;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v7, v0, v1}, Lorg/abtollc/jni/pjsua_config;->setStun_srv_cnt(J)V

    .line 505
    invoke-virtual {v7}, Lorg/abtollc/jni/pjsua_config;->getStun_srv()[Lorg/abtollc/jni/pj_str_t;

    move-result-object v34

    .line 506
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v45, v0

    const/16 v44, 0x0

    :goto_e
    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_20

    aget-object v30, v31, v44

    .line 507
    .local v30, "server":Ljava/lang/String;
    const-string v46, "SipService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "add server "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    aput-object v46, v34, v35

    .line 509
    add-int/lit8 v35, v35, 0x1

    .line 506
    add-int/lit8 v44, v44, 0x1

    goto :goto_e

    .line 475
    .end local v20    # "isStunEnabled":I
    .end local v24    # "minSe":I
    .end local v30    # "server":Ljava/lang/String;
    .end local v31    # "servers":[Ljava/lang/String;
    .end local v32    # "sessExp":I
    .end local v37    # "timerSetting":Lorg/abtollc/jni/pjsip_timer_setting;
    :cond_1e
    const/16 v44, 0x0

    goto/16 :goto_c

    .line 494
    .restart local v24    # "minSe":I
    .restart local v26    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    .restart local v32    # "sessExp":I
    .restart local v37    # "timerSetting":Lorg/abtollc/jni/pjsip_timer_setting;
    :cond_1f
    const-wide/16 v44, 0x0

    move-wide/from16 v0, v44

    invoke-virtual {v7, v0, v1}, Lorg/abtollc/jni/pjsua_config;->setNameserver_count(J)V

    goto/16 :goto_d

    .line 511
    .end local v26    # "nameservers":[Lorg/abtollc/jni/pj_str_t;
    .restart local v20    # "isStunEnabled":I
    .restart local v31    # "servers":[Ljava/lang/String;
    :cond_20
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setStun_srv([Lorg/abtollc/jni/pj_str_t;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "enable_stun2"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_24

    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    :goto_f
    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/abtollc/jni/pjsua_config;->setStun_map_use_stun2(I)V

    .line 518
    .end local v31    # "servers":[Ljava/lang/String;
    :cond_21
    invoke-static/range {v22 .. v22}, Lorg/abtollc/jni/pjsua;->logging_config_default(Lorg/abtollc/jni/pjsua_logging_config;)V

    .line 519
    invoke-static {}, Lorg/abtollc/utils/Log;->getLogLevel()I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_logging_config;->setConsole_level(J)V

    .line 520
    invoke-static {}, Lorg/abtollc/utils/Log;->getLogLevel()I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_logging_config;->setLevel(J)V

    .line 521
    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_TRUE:I

    move-object/from16 v0, v22

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_logging_config;->setMsg_logging(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "log_use_direct_file"

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v44

    if-eqz v44, :cond_22

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-static/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesWrapper;->getLogsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v28

    .line 525
    .local v28, "outFile":Ljava/io/File;
    if-eqz v28, :cond_22

    .line 526
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_logging_config;->setLog_filename(Lorg/abtollc/jni/pj_str_t;)V

    .line 527
    const-wide/16 v44, 0x1108

    move-object/from16 v0, v22

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_logging_config;->setLog_file_flags(J)V

    .line 532
    .end local v28    # "outFile":Ljava/io/File;
    :cond_22
    invoke-static/range {v23 .. v23}, Lorg/abtollc/jni/pjsua;->media_config_default(Lorg/abtollc/jni/pjsua_media_config;)V

    .line 535
    const-wide/16 v44, 0x1

    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_media_config;->setChannel_count(J)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getAutoCloseTime()I

    move-result v44

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_media_config;->setSnd_auto_close_time(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getEchoCancellationTail()J

    move-result-wide v44

    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_media_config;->setEc_tail_len(J)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "echo_mode"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v15

    .line 540
    .local v15, "echoMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getClockRate()J

    move-result-wide v8

    .line 541
    .local v8, "clockRate":J
    const-wide/16 v44, 0x3e80

    cmp-long v44, v8, v44

    if-lez v44, :cond_23

    const/16 v44, 0x3

    move/from16 v0, v44

    if-ne v15, v0, :cond_23

    .line 544
    const/4 v15, 0x1

    .line 546
    :cond_23
    int-to-long v0, v15

    move-wide/from16 v44, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_media_config;->setEc_options(J)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "enable_vad"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_25

    const/16 v44, 0x0

    :goto_10
    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_media_config;->setNo_vad(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getMediaQuality()J

    move-result-wide v44

    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_media_config;->setQuality(J)V

    .line 549
    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lorg/abtollc/jni/pjsua_media_config;->setClock_rate(J)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "snd_ptime"

    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/jni/pjsua_media_config;->setAudio_frame_ptime(J)V

    .line 554
    const/16 v44, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_media_config;->setHas_ioqueue(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getIceEnabled()I

    move-result v44

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_media_config;->setEnable_ice(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTurnEnabled()I

    move-result v21

    .line 564
    .local v21, "isTurnEnabled":I
    const/16 v44, 0x1

    move/from16 v0, v21

    move/from16 v1, v44

    if-ne v0, v1, :cond_26

    .line 565
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_media_config;->setEnable_turn(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTurnServer()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_media_config;->setTurn_server(Lorg/abtollc/jni/pj_str_t;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v44, v0

    const-string v45, "turn_username"

    .line 568
    invoke-virtual/range {v44 .. v45}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-object/from16 v45, v0

    const-string v46, "turn_password"

    .line 569
    invoke-virtual/range {v45 .. v46}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v45

    const-string v46, "*"

    .line 570
    invoke-static/range {v46 .. v46}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v46

    invoke-virtual/range {v23 .. v23}, Lorg/abtollc/jni/pjsua_media_config;->getTurn_auth_cred()Lorg/abtollc/jni/SWIGTYPE_p_pj_stun_auth_cred;

    move-result-object v47

    .line 567
    invoke-static/range {v44 .. v47}, Lorg/abtollc/jni/pjsua;->set_turn_credentials(Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/SWIGTYPE_p_pj_stun_auth_cred;)I

    .line 576
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v44

    invoke-static {v7, v0, v1, v11, v2}, Lorg/abtollc/jni/pjsua;->csipsimple_init(Lorg/abtollc/jni/pjsua_config;Lorg/abtollc/jni/pjsua_logging_config;Lorg/abtollc/jni/pjsua_media_config;Lorg/abtollc/jni/csipsimple_config;Ljava/lang/Object;)I

    move-result v33

    .line 577
    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    move/from16 v0, v33

    move/from16 v1, v44

    if-eq v0, v1, :cond_27

    .line 578
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Fail to init pjsua "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v33 .. v33}, Lorg/abtollc/jni/pjsua;->get_error_message(I)Lorg/abtollc/jni/pj_str_t;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 579
    .local v25, "msg":Ljava/lang/String;
    const-string v44, "SipService"

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->cleanPjsua()V

    .line 582
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "eventData":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 583
    .restart local v16    # "eventData":Landroid/os/Bundle;
    const-string v44, "init_state"

    sget-object v45, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 584
    invoke-virtual/range {v45 .. v45}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v45

    .line 583
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 585
    const-string v44, "message"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 587
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 512
    .end local v8    # "clockRate":J
    .end local v15    # "echoMode":I
    .end local v21    # "isTurnEnabled":I
    .end local v25    # "msg":Ljava/lang/String;
    .restart local v31    # "servers":[Ljava/lang/String;
    :cond_24
    sget v44, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_f

    .line 547
    .end local v31    # "servers":[Ljava/lang/String;
    .restart local v8    # "clockRate":J
    .restart local v15    # "echoMode":I
    :cond_25
    const/16 v44, 0x1

    goto/16 :goto_10

    .line 572
    .restart local v21    # "isTurnEnabled":I
    :cond_26
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_FALSE:I

    move-object/from16 v0, v23

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/abtollc/jni/pjsua_media_config;->setEnable_turn(I)V

    goto/16 :goto_11

    .line 597
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->createTransports()Z

    move-result v44

    if-nez v44, :cond_28

    .line 598
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 623
    :cond_28
    invoke-static {}, Lorg/abtollc/jni/pjsua;->start()I

    move-result v33

    .line 625
    sget v44, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v33

    move/from16 v1, v44

    if-eq v0, v1, :cond_29

    .line 626
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Fail to start pjsip  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v33 .. v33}, Lorg/abtollc/jni/pjsua;->get_error_message(I)Lorg/abtollc/jni/pj_str_t;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 627
    .restart local v25    # "msg":Ljava/lang/String;
    const-string v44, "SipService"

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->cleanPjsua()V

    .line 630
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "eventData":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 631
    .restart local v16    # "eventData":Landroid/os/Bundle;
    const-string v44, "init_state"

    sget-object v45, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 632
    invoke-virtual/range {v45 .. v45}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v45

    .line 631
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const-string v44, "message"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 635
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 639
    .end local v25    # "msg":Ljava/lang/String;
    :cond_29
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->initCodecs()V

    .line 640
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->setCodecsPriorities()V

    .line 642
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/abtollc/voip/SipService;->created:Z

    .line 644
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "eventData":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 645
    .restart local v16    # "eventData":Landroid/os/Bundle;
    const-string v44, "init_state"

    sget-object v45, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->SUCCESS:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 646
    invoke-virtual/range {v45 .. v45}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v45

    .line 645
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 647
    const-string v44, "message"

    const-string v45, "Initialization success"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 650
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/SipService;->loginAccount()V

    .line 652
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 667
    .end local v6    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v7    # "cfg":Lorg/abtollc/jni/pjsua_config;
    .end local v8    # "clockRate":J
    .end local v11    # "cssCfg":Lorg/abtollc/jni/csipsimple_config;
    .end local v12    # "cssCodecs":[Lorg/abtollc/jni/dynamic_factory;
    .end local v15    # "echoMode":I
    .end local v16    # "eventData":Landroid/os/Bundle;
    .end local v17    # "i":I
    .end local v19    # "implementation":I
    .end local v20    # "isStunEnabled":I
    .end local v21    # "isTurnEnabled":I
    .end local v22    # "logCfg":Lorg/abtollc/jni/pjsua_logging_config;
    .end local v23    # "mediaCfg":Lorg/abtollc/jni/pjsua_media_config;
    .end local v24    # "minSe":I
    .end local v32    # "sessExp":I
    .end local v33    # "status":I
    .end local v34    # "stunServers":[Lorg/abtollc/jni/pj_str_t;
    .end local v35    # "stunServersCount":I
    .end local v36    # "threadCount":I
    .end local v37    # "timerSetting":Lorg/abtollc/jni/pjsip_timer_setting;
    .end local v38    # "transport":I
    .end local v39    # "tsx_to":I
    .end local v43    # "zrtpFolder":Ljava/io/File;
    :cond_2a
    const/16 v44, 0x0

    goto/16 :goto_0
.end method

.method public sipStop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 834
    const-string v0, "SipService"

    const-string v1, ">> SIP STOP <<"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lorg/abtollc/voip/SipService;->getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    const-string v0, "SipService"

    const-string v1, "We have a call in progress... DO NOT STOP !!!"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/4 v0, 0x0

    .line 855
    :goto_0
    return v0

    .line 846
    :cond_0
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_1

    .line 847
    invoke-direct {p0}, Lorg/abtollc/voip/SipService;->cleanPjsua()V

    .line 849
    :cond_1
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->tasksTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->tasksTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 851
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->tasksTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/voip/SipService;->tasksTimer:Ljava/util/Timer;

    .line 854
    :cond_2
    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> Media m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording(ILjava/lang/String;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2394
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->canRecord(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2412
    :cond_0
    :goto_0
    return-void

    .line 2398
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2399
    .local v1, "wavFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2400
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2402
    :cond_2
    if-eqz v1, :cond_0

    .line 2403
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v0

    .line 2404
    .local v0, "filename":Lorg/abtollc/jni/pj_str_t;
    sget v2, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    invoke-static {p1, v0, v2}, Lorg/abtollc/jni/pjsua;->call_recording_start(ILorg/abtollc/jni/pj_str_t;I)I

    move-result v2

    sget v3, Lorg/abtollc/jni/pjsua;->PJ_SUCCESS:I

    if-ne v2, v3, :cond_3

    .line 2405
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lorg/abtollc/voip/UAStateReceiver;->updateRecordingStatus(IZZ)V

    .line 2406
    iget-object v2, p0, Lorg/abtollc/voip/SipService;->recordingFiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2408
    :cond_3
    const-string v2, "SipService"

    const-string v3, "Can not write file"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopDialtoneGenerator(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1797
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/voip/StreamDialtoneGenerator;

    invoke-virtual {v0}, Lorg/abtollc/voip/StreamDialtoneGenerator;->stopDialtoneGenerator()V

    .line 1799
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1801
    :cond_0
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1802
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1804
    :cond_1
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1805
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1806
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1808
    :cond_2
    return-void
.end method

.method public stopPlaying(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 2581
    iget-object v1, p0, Lorg/abtollc/voip/SipService;->playedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2582
    .local v0, "playerId":I
    if-eq v0, v2, :cond_0

    .line 2583
    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->player_destroy(I)I

    .line 2584
    iget-object v1, p0, Lorg/abtollc/voip/SipService;->playedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2586
    :cond_0
    return-void
.end method

.method public stopRecording(I)V
    .locals 6
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2424
    iget-boolean v3, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v3, :cond_1

    .line 2443
    :cond_0
    :goto_0
    return-void

    .line 2430
    :cond_1
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->call_recording_stop(I)I

    move-result v3

    sget v4, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v3, v4, :cond_0

    .line 2431
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lorg/abtollc/voip/UAStateReceiver;->updateRecordingStatus(IZZ)V

    .line 2433
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->recordingFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2434
    .local v1, "file":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2435
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->getCallInfo(I)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 2436
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.abtollc.service.CALL_RECORDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2437
    .local v2, "it":Landroid/content/Intent;
    const-string v3, "call_info"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2438
    const-string v3, "file_path"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2439
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v4, "android.permission.USE_SIP"

    invoke-virtual {v3, v2, v4}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2440
    iget-object v3, p0, Lorg/abtollc/voip/SipService;->recordingFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method public tryToLoadStack()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    iget-boolean v3, p0, Lorg/abtollc/voip/SipService;->hasSipStack:Z

    if-eqz v3, :cond_0

    .line 149
    :goto_0
    return v1

    .line 137
    :cond_0
    :try_start_0
    const-string v3, "stlport_shared"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 138
    const-string v3, "abtovoipjni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/abtollc/voip/SipService;->hasSipStack:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "SipService"

    const-string v4, "We have a problem with the current stack.... NOT YET Implemented"

    invoke-static {v3, v4, v0}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    iput-boolean v2, p0, Lorg/abtollc/voip/SipService;->hasSipStack:Z

    .line 144
    iput-boolean v1, p0, Lorg/abtollc/voip/SipService;->sipStackIsCorrupted:Z

    move v1, v2

    .line 145
    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SipService"

    const-string v3, "We have a problem with the current stack...."

    invoke-static {v1, v3, v0}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public unsetAudioInCall()V
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v0}, Lorg/abtollc/service/MediaManager;->unsetAudioInCall()V

    .line 2083
    :cond_0
    return-void
.end method

.method public updateCallOptions(ILandroid/os/Bundle;)I
    .locals 6
    .param p1, "callId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1544
    const-string v3, "opt_call_video"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1545
    const-string v3, "opt_call_video"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1546
    .local v0, "add":Z
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->getCallInfo(I)Lorg/abtollc/api/SipCallSession;

    move-result-object v1

    .line 1547
    .local v1, "ci":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->mediaHasVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1548
    const-string v4, "SipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video will be "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_0

    const-string v3, "added."

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    if-eqz v0, :cond_1

    sget-object v2, Lorg/abtollc/jni/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_START_TRANSMIT:Lorg/abtollc/jni/pjsua_call_vid_strm_op;

    .line 1552
    .local v2, "op":Lorg/abtollc/jni/pjsua_call_vid_strm_op;
    :goto_1
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/abtollc/jni/pjsua;->call_set_vid_strm(ILorg/abtollc/jni/pjsua_call_vid_strm_op;Lorg/abtollc/jni/pjsua_call_vid_strm_op_param;)I

    move-result v3

    .line 1556
    .end local v0    # "add":Z
    .end local v1    # "ci":Lorg/abtollc/api/SipCallSession;
    .end local v2    # "op":Lorg/abtollc/jni/pjsua_call_vid_strm_op;
    :goto_2
    return v3

    .line 1548
    .restart local v0    # "add":Z
    .restart local v1    # "ci":Lorg/abtollc/api/SipCallSession;
    :cond_0
    const-string v3, "removed."

    goto :goto_0

    .line 1549
    :cond_1
    sget-object v2, Lorg/abtollc/jni/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_STOP_TRANSMIT:Lorg/abtollc/jni/pjsua_call_vid_strm_op;

    goto :goto_1

    .line 1556
    .end local v0    # "add":Z
    .end local v1    # "ci":Lorg/abtollc/api/SipCallSession;
    :cond_2
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public updateProfileStateFromService(I)V
    .locals 14
    .param p1, "pjsuaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x1f4

    const/4 v12, 0x6

    const/4 v11, 0x0

    .line 1097
    iget-boolean v8, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v8, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1100
    :cond_0
    invoke-virtual {p0, p1}, Lorg/abtollc/voip/SipService;->getAccountIdForPjsipId(I)J

    move-result-wide v0

    .line 1101
    .local v0, "accId":J
    const-string v8, "SipService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update profile from service for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " aka in db "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_5

    .line 1103
    sget v7, Lorg/abtollc/jni/pjsuaConstants;->PJ_FALSE:I

    .line 1105
    .local v7, "success":I
    new-instance v5, Lorg/abtollc/jni/pjsua_acc_info;

    invoke-direct {v5}, Lorg/abtollc/jni/pjsua_acc_info;-><init>()V

    .line 1106
    .local v5, "pjAccountInfo":Lorg/abtollc/jni/pjsua_acc_info;
    invoke-static {p1, v5}, Lorg/abtollc/jni/pjsua;->acc_get_info(ILorg/abtollc/jni/pjsua_acc_info;)I

    move-result v7

    .line 1107
    sget v8, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v7, v8, :cond_4

    if-eqz v5, :cond_4

    .line 1108
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1113
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_0
    invoke-virtual {v5}, Lorg/abtollc/jni/pjsua_acc_info;->getStatus()Lorg/abtollc/jni/pjsip_status_code;

    move-result-object v8

    invoke-virtual {v8}, Lorg/abtollc/jni/pjsip_status_code;->swigValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1119
    .local v6, "statusCode":I
    :goto_1
    const-string v8, "status_code"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1121
    const-string v8, "status_text"

    invoke-virtual {v5}, Lorg/abtollc/jni/pjsua_acc_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v9

    invoke-static {v9}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v8, "expires"

    invoke-virtual {v5}, Lorg/abtollc/jni/pjsua_acc_info;->getExpires()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    iget-object v8, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v8}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v8}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v8

    sget-object v9, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    .line 1125
    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1124
    invoke-virtual {v8, v9, v2, v11, v11}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1127
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1128
    .local v3, "data":Landroid/os/Bundle;
    const-string v8, "acc_id"

    invoke-virtual {v3, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1129
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_3

    .line 1130
    invoke-virtual {v5}, Lorg/abtollc/jni/pjsua_acc_info;->getExpires()I

    move-result v8

    if-ltz v8, :cond_2

    .line 1131
    iget-object v8, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1144
    :cond_1
    :goto_2
    const-string v8, "SipService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Profile state UP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1115
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v6    # "statusCode":I
    :catch_0
    move-exception v4

    .line 1116
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const/16 v6, 0x1f4

    .restart local v6    # "statusCode":I
    goto :goto_1

    .line 1133
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "data":Landroid/os/Bundle;
    :cond_2
    iget-object v8, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1134
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->acc_del(I)I

    .line 1135
    iget-object v8, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v8}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v8}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v8

    sget-object v9, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 1136
    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1135
    invoke-virtual {v8, v9, v11, v11}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1138
    :cond_3
    const/16 v8, 0x64

    if-eq v6, v8, :cond_1

    .line 1139
    const-string v8, "status_code"

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1140
    const-string v8, "status_text"

    invoke-virtual {v5}, Lorg/abtollc/jni/pjsua_acc_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v9

    invoke-static {v9}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v8, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v8, v12, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 1146
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v6    # "statusCode":I
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1147
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v8, "acc_id"

    invoke-virtual {v3, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1148
    const-string v8, "status_code"

    invoke-virtual {v3, v8, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1149
    const-string v8, "status_text"

    new-instance v9, Lorg/abtollc/jni/pjsua_acc_info;

    invoke-direct {v9}, Lorg/abtollc/jni/pjsua_acc_info;-><init>()V

    invoke-virtual {v9}, Lorg/abtollc/jni/pjsua_acc_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v9

    invoke-static {v9}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v8, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v8, v12, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1153
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v5    # "pjAccountInfo":Lorg/abtollc/jni/pjsua_acc_info;
    .end local v7    # "success":I
    :cond_5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1154
    .restart local v3    # "data":Landroid/os/Bundle;
    const-string v8, "acc_id"

    invoke-virtual {v3, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1155
    const-string v8, "status_code"

    invoke-virtual {v3, v8, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1156
    const-string v8, "status_text"

    new-instance v9, Lorg/abtollc/jni/pjsua_acc_info;

    invoke-direct {v9}, Lorg/abtollc/jni/pjsua_acc_info;-><init>()V

    invoke-virtual {v9}, Lorg/abtollc/jni/pjsua_acc_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v9

    invoke-static {v9}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    iget-object v8, p0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v8, v12, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public updateTransportIp(Ljava/lang/String;)V
    .locals 3
    .param p1, "oldIPAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2589
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v0, :cond_0

    .line 2594
    :goto_0
    return-void

    .line 2592
    :cond_0
    const-string v0, "SipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to update my address in the current call to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v0

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->update_transport(Lorg/abtollc/jni/pj_str_t;)I

    goto :goto_0
.end method

.method public validateAudioClockRate(I)I
    .locals 1
    .param p1, "aClockRate"    # I

    .prologue
    .line 2066
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v0, p1}, Lorg/abtollc/service/MediaManager;->validateAudioClockRate(I)I

    move-result v0

    .line 2069
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
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2293
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v0, :cond_0

    .line 2297
    :goto_0
    return-void

    .line 2296
    :cond_0
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->jzrtp_SASRevoked(I)V

    goto :goto_0
.end method

.method public zrtpSASVerified(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2286
    iget-boolean v0, p0, Lorg/abtollc/voip/SipService;->created:Z

    if-nez v0, :cond_0

    .line 2290
    :goto_0
    return-void

    .line 2289
    :cond_0
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->jzrtp_SASVerified(I)V

    goto :goto_0
.end method
