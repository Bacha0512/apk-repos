.class public final enum Lorg/abtollc/utils/network/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/utils/network/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/utils/network/NetworkType;

.field public static final enum ANY:Lorg/abtollc/utils/network/NetworkType;

.field public static final enum EDGE:Lorg/abtollc/utils/network/NetworkType;

.field public static final enum GPRS:Lorg/abtollc/utils/network/NetworkType;

.field public static final enum OTHER:Lorg/abtollc/utils/network/NetworkType;

.field public static final enum THREE_G:Lorg/abtollc/utils/network/NetworkType;

.field public static final enum WIFI:Lorg/abtollc/utils/network/NetworkType;


# instance fields
.field private desc:Ljava/lang/String;

.field private inParamName:Ljava/lang/String;

.field private outParamNamem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lorg/abtollc/utils/network/NetworkType;

    const-string v1, "ANY"

    const-string v3, "use_anyway_in"

    const-string v4, "use_anyway_out"

    const-string v5, "Any network"

    invoke-direct/range {v0 .. v5}, Lorg/abtollc/utils/network/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/abtollc/utils/network/NetworkType;->ANY:Lorg/abtollc/utils/network/NetworkType;

    .line 7
    new-instance v3, Lorg/abtollc/utils/network/NetworkType;

    const-string v4, "WIFI"

    const-string v6, "use_wifi_in"

    const-string v7, "use_wifi_out"

    const-string v8, "WiFi"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lorg/abtollc/utils/network/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/abtollc/utils/network/NetworkType;->WIFI:Lorg/abtollc/utils/network/NetworkType;

    .line 8
    new-instance v3, Lorg/abtollc/utils/network/NetworkType;

    const-string v4, "GPRS"

    const-string v6, "use_gprs_in"

    const-string v7, "use_gprs_out"

    const-string v8, "GPRS"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lorg/abtollc/utils/network/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/abtollc/utils/network/NetworkType;->GPRS:Lorg/abtollc/utils/network/NetworkType;

    .line 9
    new-instance v3, Lorg/abtollc/utils/network/NetworkType;

    const-string v4, "THREE_G"

    const-string v6, "use_3g_in"

    const-string v7, "use_3g_out"

    const-string v8, "3G"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lorg/abtollc/utils/network/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/abtollc/utils/network/NetworkType;->THREE_G:Lorg/abtollc/utils/network/NetworkType;

    .line 10
    new-instance v3, Lorg/abtollc/utils/network/NetworkType;

    const-string v4, "EDGE"

    const-string v6, "use_edge_in"

    const-string v7, "use_edge_out"

    const-string v8, "EDGE"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lorg/abtollc/utils/network/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/abtollc/utils/network/NetworkType;->EDGE:Lorg/abtollc/utils/network/NetworkType;

    .line 11
    new-instance v3, Lorg/abtollc/utils/network/NetworkType;

    const-string v4, "OTHER"

    const/4 v5, 0x5

    const-string v6, "use_other_in"

    const-string v7, "use_other_out"

    const-string v8, "Other network"

    invoke-direct/range {v3 .. v8}, Lorg/abtollc/utils/network/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/abtollc/utils/network/NetworkType;->OTHER:Lorg/abtollc/utils/network/NetworkType;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/abtollc/utils/network/NetworkType;

    sget-object v1, Lorg/abtollc/utils/network/NetworkType;->ANY:Lorg/abtollc/utils/network/NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/utils/network/NetworkType;->WIFI:Lorg/abtollc/utils/network/NetworkType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/abtollc/utils/network/NetworkType;->GPRS:Lorg/abtollc/utils/network/NetworkType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/abtollc/utils/network/NetworkType;->THREE_G:Lorg/abtollc/utils/network/NetworkType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/abtollc/utils/network/NetworkType;->EDGE:Lorg/abtollc/utils/network/NetworkType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lorg/abtollc/utils/network/NetworkType;->OTHER:Lorg/abtollc/utils/network/NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/utils/network/NetworkType;->$VALUES:[Lorg/abtollc/utils/network/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "inParamName"    # Ljava/lang/String;
    .param p4, "outParamNamem"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lorg/abtollc/utils/network/NetworkType;->inParamName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lorg/abtollc/utils/network/NetworkType;->outParamNamem:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lorg/abtollc/utils/network/NetworkType;->desc:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/utils/network/NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lorg/abtollc/utils/network/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/utils/network/NetworkType;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/utils/network/NetworkType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lorg/abtollc/utils/network/NetworkType;->$VALUES:[Lorg/abtollc/utils/network/NetworkType;

    invoke-virtual {v0}, [Lorg/abtollc/utils/network/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/utils/network/NetworkType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/abtollc/utils/network/NetworkType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getInParamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/abtollc/utils/network/NetworkType;->inParamName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutParamNamem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/abtollc/utils/network/NetworkType;->outParamNamem:Ljava/lang/String;

    return-object v0
.end method
