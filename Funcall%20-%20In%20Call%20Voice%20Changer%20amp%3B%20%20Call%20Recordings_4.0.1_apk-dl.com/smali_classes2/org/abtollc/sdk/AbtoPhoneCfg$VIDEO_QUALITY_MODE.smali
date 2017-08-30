.class public final enum Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;
.super Ljava/lang/Enum;
.source "AbtoPhoneCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhoneCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_QUALITY_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

.field public static final enum VIDEO_MODE_352_288:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

.field public static final enum VIDEO_MODE_720_480:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

.field public static final enum VIDEO_MODE_DEFAULT:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 991
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    const-string v1, "VIDEO_MODE_DEFAULT"

    invoke-direct {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_DEFAULT:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    .line 992
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    const-string v1, "VIDEO_MODE_352_288"

    invoke-direct {v0, v1, v3}, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_352_288:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    .line 993
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    const-string v1, "VIDEO_MODE_720_480"

    invoke-direct {v0, v1, v4}, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_720_480:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    .line 990
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_DEFAULT:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_352_288:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_720_480:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

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
    .line 990
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 990
    const-class v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;
    .locals 1

    .prologue
    .line 990
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->$VALUES:[Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    return-object v0
.end method
