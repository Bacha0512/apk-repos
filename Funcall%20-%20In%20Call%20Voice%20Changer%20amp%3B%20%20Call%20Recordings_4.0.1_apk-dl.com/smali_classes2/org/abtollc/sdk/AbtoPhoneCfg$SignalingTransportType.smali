.class public final enum Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
.super Ljava/lang/Enum;
.source "AbtoPhoneCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhoneCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignalingTransportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

.field public static final enum TCP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

.field public static final enum TLS:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

.field public static final enum UDP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 937
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v4, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->UDP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->TCP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    const-string v1, "TLS"

    invoke-direct {v0, v1, v3, v5}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->TLS:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    .line 936
    new-array v0, v5, [Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->UDP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->TCP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->TLS:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 941
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 942
    iput p3, p0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->value:I

    .line 943
    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;)I
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    .prologue
    .line 936
    iget v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->value:I

    return v0
.end method

.method public static getTypeByValue(I)Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 950
    invoke-static {}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->values()[Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 951
    .local v0, "type":Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 953
    .end local v0    # "type":Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    :goto_1
    return-object v0

    .line 950
    .restart local v0    # "type":Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v0    # "type":Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 936
    const-class v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    .locals 1

    .prologue
    .line 936
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->value:I

    return v0
.end method
