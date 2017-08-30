.class public final enum Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;
.super Ljava/lang/Enum;
.source "AbtoPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayFileWay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

.field public static final enum BOTH:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

.field public static final enum LOCAL:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

.field public static final enum REMOTE:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;


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

    .line 1910
    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v4, v2}, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->LOCAL:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v2, v3}, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->REMOTE:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v3, v5}, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->BOTH:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    .line 1909
    new-array v0, v5, [Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->LOCAL:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->REMOTE:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->BOTH:Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    aput-object v1, v0, v3

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->$VALUES:[Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

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
    .line 1914
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1915
    iput p3, p0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->value:I

    .line 1916
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1909
    const-class v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;
    .locals 1

    .prologue
    .line 1909
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->$VALUES:[Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 1919
    iget v0, p0, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->value:I

    return v0
.end method
