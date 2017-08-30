.class public final enum Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;
.super Ljava/lang/Enum;
.source "AbtoPhoneCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhoneCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DTMF_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

.field public static final enum AUTO:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

.field public static final enum INBAND:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

.field public static final enum INFO:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

.field public static final enum RTP:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 984
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->AUTO:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    .line 985
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    const-string v1, "RTP"

    invoke-direct {v0, v1, v3}, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->RTP:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    .line 986
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    const-string v1, "INBAND"

    invoke-direct {v0, v1, v4}, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->INBAND:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    .line 987
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->INFO:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    .line 983
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->AUTO:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->RTP:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->INBAND:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->INFO:Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    aput-object v1, v0, v5

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 983
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 983
    const-class v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;
    .locals 1

    .prologue
    .line 983
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    return-object v0
.end method
