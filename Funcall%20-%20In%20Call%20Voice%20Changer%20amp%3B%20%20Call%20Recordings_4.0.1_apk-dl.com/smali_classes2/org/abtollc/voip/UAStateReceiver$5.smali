.class synthetic Lorg/abtollc/voip/UAStateReceiver$5;
.super Ljava/lang/Object;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/voip/UAStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$abtollc$jni$pjrpid_activity:[I

.field static final synthetic $SwitchMap$org$abtollc$jni$pjsua_buddy_status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lorg/abtollc/jni/pjrpid_activity;->values()[Lorg/abtollc/jni/pjrpid_activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjrpid_activity:[I

    :try_start_0
    sget-object v0, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjrpid_activity:[I

    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_AWAY:Lorg/abtollc/jni/pjrpid_activity;

    invoke-virtual {v1}, Lorg/abtollc/jni/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjrpid_activity:[I

    sget-object v1, Lorg/abtollc/jni/pjrpid_activity;->PJRPID_ACTIVITY_BUSY:Lorg/abtollc/jni/pjrpid_activity;

    invoke-virtual {v1}, Lorg/abtollc/jni/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 324
    :goto_1
    invoke-static {}, Lorg/abtollc/jni/pjsua_buddy_status;->values()[Lorg/abtollc/jni/pjsua_buddy_status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjsua_buddy_status:[I

    :try_start_2
    sget-object v0, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjsua_buddy_status:[I

    sget-object v1, Lorg/abtollc/jni/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_ONLINE:Lorg/abtollc/jni/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/abtollc/jni/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjsua_buddy_status:[I

    sget-object v1, Lorg/abtollc/jni/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_OFFLINE:Lorg/abtollc/jni/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/abtollc/jni/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjsua_buddy_status:[I

    sget-object v1, Lorg/abtollc/jni/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_UNKNOWN:Lorg/abtollc/jni/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/abtollc/jni/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 337
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
