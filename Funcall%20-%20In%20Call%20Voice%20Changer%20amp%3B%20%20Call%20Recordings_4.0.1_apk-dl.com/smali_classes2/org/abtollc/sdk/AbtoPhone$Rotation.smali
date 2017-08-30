.class public final enum Lorg/abtollc/sdk/AbtoPhone$Rotation;
.super Ljava/lang/Enum;
.source "AbtoPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/sdk/AbtoPhone$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/sdk/AbtoPhone$Rotation;

.field public static final enum ROTATION_0:Lorg/abtollc/sdk/AbtoPhone$Rotation;

.field public static final enum ROTATION_180:Lorg/abtollc/sdk/AbtoPhone$Rotation;

.field public static final enum ROTATION_270:Lorg/abtollc/sdk/AbtoPhone$Rotation;

.field public static final enum ROTATION_90:Lorg/abtollc/sdk/AbtoPhone$Rotation;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1758
    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;

    const-string v1, "ROTATION_0"

    invoke-direct {v0, v1, v3, v3}, Lorg/abtollc/sdk/AbtoPhone$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_0:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;

    const-string v1, "ROTATION_90"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lorg/abtollc/sdk/AbtoPhone$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_90:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;

    const-string v1, "ROTATION_180"

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v5, v2}, Lorg/abtollc/sdk/AbtoPhone$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_180:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;

    const-string v1, "ROTATION_270"

    const/16 v2, -0x5a

    invoke-direct {v0, v1, v6, v2}, Lorg/abtollc/sdk/AbtoPhone$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_270:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    .line 1757
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/abtollc/sdk/AbtoPhone$Rotation;

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_0:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_90:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_180:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone$Rotation;->ROTATION_270:Lorg/abtollc/sdk/AbtoPhone$Rotation;

    aput-object v1, v0, v6

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->$VALUES:[Lorg/abtollc/sdk/AbtoPhone$Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1761
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1762
    iput p3, p0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->val:I

    .line 1763
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/sdk/AbtoPhone$Rotation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1757
    const-class v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/sdk/AbtoPhone$Rotation;
    .locals 1

    .prologue
    .line 1757
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->$VALUES:[Lorg/abtollc/sdk/AbtoPhone$Rotation;

    invoke-virtual {v0}, [Lorg/abtollc/sdk/AbtoPhone$Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/sdk/AbtoPhone$Rotation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 1766
    iget v0, p0, Lorg/abtollc/sdk/AbtoPhone$Rotation;->val:I

    return v0
.end method
