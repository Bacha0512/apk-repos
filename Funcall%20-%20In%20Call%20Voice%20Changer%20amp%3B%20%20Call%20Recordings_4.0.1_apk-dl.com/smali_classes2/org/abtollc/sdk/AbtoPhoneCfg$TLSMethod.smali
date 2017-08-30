.class public final enum Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
.super Ljava/lang/Enum;
.source "AbtoPhoneCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhoneCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TLSMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

.field public static final enum SSLV23_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

.field public static final enum SSLV2_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

.field public static final enum SSLV3_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

.field public static final enum SSL_UNSPECIFIED_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

.field public static final enum TLSV1_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;


# instance fields
.field private method:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 958
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    const-string v1, "SSL_UNSPECIFIED_METHOD"

    invoke-direct {v0, v1, v3, v3}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSL_UNSPECIFIED_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    .line 959
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    const-string v1, "TLSV1_METHOD"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v4, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->TLSV1_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    .line 960
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    const-string v1, "SSLV2_METHOD"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v5, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSLV2_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    .line 961
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    const-string v1, "SSLV3_METHOD"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v6, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSLV3_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    .line 962
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    const-string v1, "SSLV23_METHOD"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v7, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSLV23_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    .line 957
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSL_UNSPECIFIED_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->TLSV1_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSLV2_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSLV3_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->SSLV23_METHOD:Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    aput-object v1, v0, v7

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 966
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 967
    iput p3, p0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->method:I

    .line 968
    return-void
.end method

.method public static valueOf(I)Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    .locals 5
    .param p0, "method"    # I

    .prologue
    .line 975
    invoke-static {}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->values()[Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 976
    .local v0, "m":Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->getMethod()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 979
    .end local v0    # "m":Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    :goto_1
    return-object v0

    .line 975
    .restart local v0    # "m":Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 979
    .end local v0    # "m":Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 957
    const-class v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    .locals 1

    .prologue
    .line 957
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->method:I

    return v0
.end method
