.class public final enum Lorg/abtollc/utils/codec/Codec;
.super Ljava/lang/Enum;
.source "Codec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/utils/codec/Codec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/utils/codec/Codec;

.field public static final enum AMR:Lorg/abtollc/utils/codec/Codec;

.field public static final enum CODEC2:Lorg/abtollc/utils/codec/Codec;

.field public static final enum G722:Lorg/abtollc/utils/codec/Codec;

.field public static final enum G7221_16000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum G7221_32000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum G723:Lorg/abtollc/utils/codec/Codec;

.field public static final enum G729:Lorg/abtollc/utils/codec/Codec;

.field public static final enum GSM:Lorg/abtollc/utils/codec/Codec;

.field public static final enum H263_1998:Lorg/abtollc/utils/codec/Codec;

.field public static final enum H264:Lorg/abtollc/utils/codec/Codec;

.field public static final enum ILBC:Lorg/abtollc/utils/codec/Codec;

.field public static final enum ISAC_16000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum ISAC_32000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum OPUS:Lorg/abtollc/utils/codec/Codec;

.field public static final enum PCMA:Lorg/abtollc/utils/codec/Codec;

.field public static final enum PCMU:Lorg/abtollc/utils/codec/Codec;

.field public static final enum SILK_12000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum SILK_16000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum SILK_24000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum SILK_8000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum VP8:Lorg/abtollc/utils/codec/Codec;

.field public static final enum speex_16000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum speex_32000:Lorg/abtollc/utils/codec/Codec;

.field public static final enum speex_8000:Lorg/abtollc/utils/codec/Codec;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "speex_16000"

    const-string v2, "speex/16000/1"

    invoke-direct {v0, v1, v4, v2}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->speex_16000:Lorg/abtollc/utils/codec/Codec;

    .line 6
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "speex_8000"

    const-string v2, "speex/8000/1"

    invoke-direct {v0, v1, v5, v2}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->speex_8000:Lorg/abtollc/utils/codec/Codec;

    .line 7
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "speex_32000"

    const-string v2, "speex/32000/1"

    invoke-direct {v0, v1, v6, v2}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->speex_32000:Lorg/abtollc/utils/codec/Codec;

    .line 8
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "GSM"

    const-string v2, "GSM/8000/1"

    invoke-direct {v0, v1, v7, v2}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->GSM:Lorg/abtollc/utils/codec/Codec;

    .line 9
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "PCMU"

    const-string v2, "PCMU/8000/1"

    invoke-direct {v0, v1, v8, v2}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->PCMU:Lorg/abtollc/utils/codec/Codec;

    .line 10
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "PCMA"

    const/4 v2, 0x5

    const-string v3, "PCMA/8000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->PCMA:Lorg/abtollc/utils/codec/Codec;

    .line 11
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "OPUS"

    const/4 v2, 0x6

    const-string v3, "opus/48000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->OPUS:Lorg/abtollc/utils/codec/Codec;

    .line 12
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "G729"

    const/4 v2, 0x7

    const-string v3, "G729/8000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->G729:Lorg/abtollc/utils/codec/Codec;

    .line 13
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "ISAC_16000"

    const/16 v2, 0x8

    const-string v3, "ISAC/16000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->ISAC_16000:Lorg/abtollc/utils/codec/Codec;

    .line 14
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "ISAC_32000"

    const/16 v2, 0x9

    const-string v3, "ISAC/32000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->ISAC_32000:Lorg/abtollc/utils/codec/Codec;

    .line 19
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "G722"

    const/16 v2, 0xa

    const-string v3, "G722/16000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->G722:Lorg/abtollc/utils/codec/Codec;

    .line 20
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "G7221_16000"

    const/16 v2, 0xb

    const-string v3, "G7221/16000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->G7221_16000:Lorg/abtollc/utils/codec/Codec;

    .line 21
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "G7221_32000"

    const/16 v2, 0xc

    const-string v3, "G7221/32000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->G7221_32000:Lorg/abtollc/utils/codec/Codec;

    .line 22
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "AMR"

    const/16 v2, 0xd

    const-string v3, "AMR/8000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->AMR:Lorg/abtollc/utils/codec/Codec;

    .line 23
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "ILBC"

    const/16 v2, 0xe

    const-string v3, "ILBC/8000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->ILBC:Lorg/abtollc/utils/codec/Codec;

    .line 24
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "SILK_8000"

    const/16 v2, 0xf

    const-string v3, "SILK/8000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->SILK_8000:Lorg/abtollc/utils/codec/Codec;

    .line 25
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "SILK_12000"

    const/16 v2, 0x10

    const-string v3, "SILK/12000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->SILK_12000:Lorg/abtollc/utils/codec/Codec;

    .line 26
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "SILK_16000"

    const/16 v2, 0x11

    const-string v3, "SILK/16000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->SILK_16000:Lorg/abtollc/utils/codec/Codec;

    .line 27
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "SILK_24000"

    const/16 v2, 0x12

    const-string v3, "SILK/24000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->SILK_24000:Lorg/abtollc/utils/codec/Codec;

    .line 28
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "CODEC2"

    const/16 v2, 0x13

    const-string v3, "CODEC2/8000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->CODEC2:Lorg/abtollc/utils/codec/Codec;

    .line 31
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "H264"

    const/16 v2, 0x14

    const-string v3, "H264/97"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->H264:Lorg/abtollc/utils/codec/Codec;

    .line 32
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "H263_1998"

    const/16 v2, 0x15

    const-string v3, "H263-1998/96"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->H263_1998:Lorg/abtollc/utils/codec/Codec;

    .line 33
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "VP8"

    const/16 v2, 0x16

    const-string v3, "VP8/102"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->VP8:Lorg/abtollc/utils/codec/Codec;

    .line 34
    new-instance v0, Lorg/abtollc/utils/codec/Codec;

    const-string v1, "G723"

    const/16 v2, 0x17

    const-string v3, "G723/8000/1"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/utils/codec/Codec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->G723:Lorg/abtollc/utils/codec/Codec;

    .line 4
    const/16 v0, 0x18

    new-array v0, v0, [Lorg/abtollc/utils/codec/Codec;

    sget-object v1, Lorg/abtollc/utils/codec/Codec;->speex_16000:Lorg/abtollc/utils/codec/Codec;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/utils/codec/Codec;->speex_8000:Lorg/abtollc/utils/codec/Codec;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/utils/codec/Codec;->speex_32000:Lorg/abtollc/utils/codec/Codec;

    aput-object v1, v0, v6

    sget-object v1, Lorg/abtollc/utils/codec/Codec;->GSM:Lorg/abtollc/utils/codec/Codec;

    aput-object v1, v0, v7

    sget-object v1, Lorg/abtollc/utils/codec/Codec;->PCMU:Lorg/abtollc/utils/codec/Codec;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->PCMA:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->OPUS:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->G729:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->ISAC_16000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->ISAC_32000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->G722:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->G7221_16000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->G7221_32000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->AMR:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->ILBC:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->SILK_8000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->SILK_12000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->SILK_16000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->SILK_24000:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->CODEC2:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->H264:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->H263_1998:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->VP8:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/abtollc/utils/codec/Codec;->G723:Lorg/abtollc/utils/codec/Codec;

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/utils/codec/Codec;->$VALUES:[Lorg/abtollc/utils/codec/Codec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lorg/abtollc/utils/codec/Codec;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/utils/codec/Codec;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lorg/abtollc/utils/codec/Codec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/utils/codec/Codec;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/utils/codec/Codec;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lorg/abtollc/utils/codec/Codec;->$VALUES:[Lorg/abtollc/utils/codec/Codec;

    invoke-virtual {v0}, [Lorg/abtollc/utils/codec/Codec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/utils/codec/Codec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/abtollc/utils/codec/Codec;->name:Ljava/lang/String;

    return-object v0
.end method
